//
//  WebViewKit.swift
//  Represental.SUI
//
//  Created by Авазбек Надырбек уулу on 03.08.25.
//

import SwiftUI
import WebKit

struct WebViewKit: UIViewRepresentable {
    @Binding var isLoading: Bool
    func makeUIView(context: Context) -> UIView {
        let request = URLRequest(url: URL(string: "https://www.apple.com")!)
        return {
            $0.load(request)
            $0.navigationDelegate = context.coordinator
            return $0
        }(WKWebView())
    }
   
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator { isLoading in
            self.isLoading = isLoading
        }
    }
    
    final class Coordinator: NSObject, WKNavigationDelegate {
        var completion: (Bool) -> Void
        
        init(completion: @escaping (Bool) -> Void) {
            self.completion = completion
        }

        func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
            print("OK")
            completion(true)
        }
    }
}

//#Preview {
//    WebViewKit(isLoading: <#T##Binding<Bool>#>)
//}
