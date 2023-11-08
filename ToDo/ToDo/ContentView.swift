//
//  ContentView.swift
//  ToDo
//
//  Created by Irene Liao on 5/23/23.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var context
    
    @State private var showNewTask = false;
    @FetchRequest(entity: ToDo.entity(), sortDescriptors: [NSSortDescriptor(keyPath: \ToDo.id, ascending: false)])
    
    var toDoItems: FetchedResults<ToDo>
    
    private func deleteTask(offsets: IndexSet) {
        withAnimation {
            offsets.map { toDoItems[$0] }.forEach(context.delete)

            do {
                try context.save()
            } catch {
                print(error)
            }
        }
    }
    
    var body: some View {
        VStack {
            HStack {
                Text("To Do List")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                
                Spacer()
                
                Button(action: {
                    self.showNewTask = true;
                }) {
                    Text("+")
                }
                .font(.system(size: 24))
                .padding()
            }
            
            Spacer()
            
            if showNewTask {
                NewToDoView(showNewTask: $showNewTask, title: "", isImportant: false)
            }
            
            List {
                ForEach (toDoItems) { toDoItem in
                    if toDoItem.isImportant == true {
                        Text("‼️" + (toDoItem.title ?? "No title"))
                    } else {
                        Text(toDoItem.title ?? "No title")
                    }
                }
                .onDelete(perform: deleteTask)
            }
            .listStyle(.plain)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
