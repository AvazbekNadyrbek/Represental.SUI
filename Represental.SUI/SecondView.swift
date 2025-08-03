//
//  SecondView.swift
//  Represental.SUI
//
//  Created by Авазбек Надырбек уулу on 03.08.25.
//

import SwiftUI

struct SecondView: View {
    @State var isLoading: Bool = true
    var body: some View {
        ZStack(alignment: .top) {
            HStack {
                Text("Loading")
            }
            .frame(width: 10)
            .background(Color.black)
            WebViewKit(isLoading: $isLoading)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

#Preview {
    SecondView()
}
