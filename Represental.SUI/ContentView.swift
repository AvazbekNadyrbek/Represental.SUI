//
//  ContentView.swift
//  Represental.SUI
//
//  Created by Авазбек Надырбек уулу on 31.07.25.
//

import SwiftUI
// Representable // UIKIT -> SwiftUI
// SwiftUI -> UIkit
// Ignoresafearea

struct ContentView: View {
    
    @Binding var path: [Pages]
    
    var body: some View {
        ScrollView {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
                KitView(text:"Simple UI buttom",completion: {
                    print("1")
                })
                .frame(width: 200, height: 50)
                KitTableUIKit()
                    .frame(height: 400)
                TextUIKit()
                    .frame(height: 40)
                    .padding()
                
                Button {
                    path.append(.HomeWork)
                } label: {
                    Text("Go to HomeWork")
                }

            }
            .padding()
        }
    }
}
//
//#Preview {
//    ContentView()
//}
