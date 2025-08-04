//
//  ImgBigUIKIT.swift
//  Represental.SUI
//
//  Created by Авазбек Надырбек уулу on 04.08.25.
//

import Foundation
import SwiftUI

struct ImgBigUIKIT: UIViewRepresentable {
   
    let image: UIImage
    
    func makeUIView(context: Context) -> UIImageView {
        {
            $0.image = image
            $0.contentMode = .scaleAspectFill
            $0.clipsToBounds = true
           return $0
        }(UIImageView())
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        uiView.image = image
        uiView.layer.cornerRadius = 10
    }
}
