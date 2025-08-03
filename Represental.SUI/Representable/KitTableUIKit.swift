//
//  KitTableUIKit.swift
//  Represental.SUI
//
//  Created by Авазбек Надырбек уулу on 31.07.25.
//

import SwiftUI

struct KitTableUIKit: UIViewRepresentable {
    
    func makeUIView(context: Context ) -> UITableView {
        {
            // все что вернет эта функция ТО и будет у нас в SwiftUI эмелентом
            $0.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
            $0.dataSource = context.coordinator
            return $0
        }(UITableView(frame: .zero, style: .insetGrouped))
    }
    
    func updateUIView(_ uiView: UITableView, context: Context) {
        
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator()
    }
    
    final class Coordinator: NSObject, UITableViewDataSource {
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            10
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = "cell \(indexPath.row)"
            return cell
        }
        
        
    }
}
 
