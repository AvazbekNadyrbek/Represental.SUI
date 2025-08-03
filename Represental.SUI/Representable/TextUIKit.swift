//
//  TextUIKit.swift
//  Represental.SUI
//
//  Created by Авазбек Надырбек уулу on 03.08.25.
//

import Foundation
import SwiftUI

struct TextUIKit: UIViewRepresentable {
    
    func makeUIView(context: Context) -> some UIView {
        {
            $0.placeholder = "TextFieldKit"
            $0.backgroundColor = .yellow
            $0.delegate = context.coordinator
            
           return $0
        }(UITextField())
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator()
    }
    
    final class Coordinator: NSObject, UITextFieldDelegate {
        func textFieldDidBeginEditing(_ textField: UITextField) {
            print("Text editing")
        }
    }
}
