//
//  ContentView.swift
//  CameraApp
//
//  Created by Irene Liao on 5/26/23.
//

import SwiftUI

struct ContentView: View {
    @State var isImagePickerShowing = false;
    @State var selectedImage: UIImage?
    @State private var sourceType: UIImagePickerController.SourceType = .photoLibrary;
    
    var body: some View {
        VStack {
            Image(uiImage: selectedImage ?? UIImage(named: "camera")!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            
            HStack {
                Button("Select a Photo") {
                    self.sourceType = .photoLibrary;
                    isImagePickerShowing = true;
                }
                    .buttonBorderShape(.roundedRectangle)
                    .tint(Color(.purple))
                    .padding(.horizontal)
                Button("Take a Photo") {
                    self.sourceType = .camera;
                    isImagePickerShowing = true;
                }
                    .buttonBorderShape(.roundedRectangle)
                    .tint(Color(.purple))
                    .padding(.horizontal)
            }
        }
        .padding()
        .sheet(isPresented: $isImagePickerShowing) {
            ImagePicker(selectedImage: $selectedImage, isImagePickerShowing: $isImagePickerShowing, sourceType: self.sourceType);
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
