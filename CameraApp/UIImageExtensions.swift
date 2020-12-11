//
//  UIImageExtensions.swift
//  CameraApp
//
//  Created by 佐藤 順子 on 2020/11/27.
//  Copyright © 2020 佐藤 順子. All rights reserved.
//

import UIKit

extension UIImage {
    func redraw() -> UIImage {
        let format = UIGraphicsImageRendererFormat()
        format .scale = 1
        return UIGraphicsImageRenderer(size: size, format: format)
            .image { context in
                draw(in: CGRect(origin: .zero, size: size))
        }
    }
    
}
