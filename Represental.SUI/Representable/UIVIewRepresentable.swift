//
//  UIVIewRepresentable.swift
//  Represental.SUI
//
//  Created by Авазбек Надырбек уулу on 31.07.25.
//

import SwiftUI

//UIView -> Button, Label e.t.c -> UIViewRepresentable
//UIViewController -> Controllers ->

struct KitView: UIViewRepresentable {
    var text: String
    var completion: () -> Void
    
    func makeUIView(context: Context ) -> UIView {
        // все что вернет эта функция ТО и будет у нас в SwiftUI эмелентом
        {
            $0.setTitle(text, for: .normal)
            $0.backgroundColor = .systemBlue
            $0.setTitleColor(.white, for: .normal)
           return $0
        }(UIButton(primaryAction: UIAction(handler: { _ in
            completion()
        })))
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        
    }
}
