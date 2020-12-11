//
//  Coordinator.swift
//  CameraApp
//
//  Created by 山本 沙季 on 2020/11/20.
//  Copyright © 2020 佐藤 順子. All rights reserved.
//

import SwiftUI

class Coordinator: NSObject,UINavigationControllerDelegate,
UIImagePickerControllerDelegate{
    var parent:ImagePicker
    init(_ parent:ImagePicker){
        self.parent = parent
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let uiImage = info[.originalImage] as! UIImage
        UIImageWriteToSavedPhotosAlbum(uiImage, nil, nil, nil)
        parent.image = Image(uiImage: uiImage.redraw())
        parent.isPicking = false
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        parent.isPicking = false

    }
}
