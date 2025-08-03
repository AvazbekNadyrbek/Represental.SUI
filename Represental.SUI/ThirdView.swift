//
//  ThirdView.swift
//  Represental.SUI
//
//  Created by Авазбек Надырбек уулу on 03.08.25.
//

import SwiftUI

struct ThirdView: View {
    @State var isShow = false
    @State var selectedImage: UIImage = UIImage(systemName: "plus")!
    var body: some View {
        VStack {
            Image(uiImage: selectedImage)
                .resizable()
                .frame(width: 100, height: 100)
            Button {
                isShow.toggle()
            } label: {
                Text("Select Image")
            }
            .sheet(isPresented: $isShow) {
                ImagePicker(image: $selectedImage)
            }

        }
    }
}

#Preview {
    ThirdView()
}
