//
//  Represental_SUIApp.swift
//  Represental.SUI
//
//  Created by Авазбек Надырбек уулу on 31.07.25.
//

import SwiftUI

enum Pages: Hashable {
    case Home
    case HomeWork
}
@main
struct Represental_SUIApp: App {
    
    @State var path: [Pages] = []
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $path) {
                ContentView(path: $path)
                    .navigationDestination(for: Pages.self) { page in
                        switch page {
                        case .Home:
                            SecondView()
                        case .HomeWork:
                            HomeWorkView()
                        }
                    }
            }
            
        }
    }
}
