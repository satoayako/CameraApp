//
//  ImagePicker.swift
//  CameraApp
//
//  Created by 山本 沙季 on 2020/11/06.
//  Copyright © 2020 佐藤 順子. All rights reserved.
//

import SwiftUI

struct ImagePicker: UIViewControllerRepresentable {
    
    @Binding var image:Image?
    @Binding var isPicking:Bool
    @Binding var isCamera:Bool
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIViewController(context: Context) -> UIImagePickerController{
        let picker = UIImagePickerController()
        if self.isCamera {
            picker.sourceType = .camera
        } else {
            picker.sourceType = .photoLibrary
        }
        picker.delegate = context.coordinator
        return picker
    }
    func updateUIViewController(_ uiViewController:UIImagePickerController,context: Context){
    }
}

struct ImagePicker_Previews: PreviewProvider {
    static var previews: some View {
        ImagePicker(image: .constant(nil), isPicking: .constant(true), isCamera: .constant(true))
    }
}
