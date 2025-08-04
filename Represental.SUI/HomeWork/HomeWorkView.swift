//
//  HomeWorkView.swift
//  Represental.SUI
//
//  Created by Авазбек Надырбек уулу on 03.08.25.
//

import SwiftUI

struct HomeWorkView: View {
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                VStack(alignment: .center, spacing: 20) {
                    VStack {
                        ImageUIKIT(image: UIImage(resource: .imgCircular))
                            .frame(width: 100, height: 100, alignment: .center)
                        Text("Имя Фамилия")
                            .font(.title2.bold())
                    }
                    VStack(alignment: .leading, spacing: 10){
                        Text("About me")
                            .font(.headline)
                            .padding(.horizontal, 20)
                        Text("Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo")
                            .font(.caption)
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(30)
                    }
                    .padding()
                    VStack(alignment: .leading, spacing: 10){
                        Text("Pictures")
                            .font(.headline)
                            .padding(.horizontal, 20)
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ImgBigUIKIT(image: UIImage(resource: .bIgimg1))
                                ImgBigUIKIT(image: UIImage(resource: .bIgImg22))
                            }
                            .frame(maxWidth: .infinity, maxHeight: 200)
                        }
                    }
                    .padding()
                    
                    Spacer()
                }
                .frame(minHeight: geometry.size.height - 100) // Ensure content takes at least the screen height
            }
        }
        // Add the button outside the scroll view so it stays at the bottom
        .overlay(
            VStack {
                Spacer()
                ButtonUIKIT(title: "Contact Me", action: {
                    print("Button is pressed")
                })
                .frame(maxWidth: .infinity, maxHeight: 60)
                .padding()
            }
        )
    }
}

#Preview {
    HomeWorkView()
}
