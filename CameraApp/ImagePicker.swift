//
//  ImagePicker.swift
//  CameraApp
//
//  Created by 山本 沙季 on 2020/11/06.
//  Copyright © 2020 佐藤 順子. All rights reserved.
//

import SwiftUI

struct ImagePicker: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIImagePickerController{
        let picker = UIImagePickerController()
        picker.sourceType = .photoLibrary
        return picker
    }
    func updateUIViewController(_ uiViewController:UIImagePickerController,context: Context){
    }
}

struct ImagePicker_Previews: PreviewProvider {
    static var previews: some View {
        ImagePicker()
    }
}
