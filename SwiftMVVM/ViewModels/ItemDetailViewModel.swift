//
//  ItemDetailViewModel.swift
//  SwiftMVVM
//
//  Created by Ilnam Jeong on 12/11/24.
//

import Foundation

class ItemDetailViewModel: ObservableObject {
    @Published var item: TodoItem
        @Published var title: String

        init(item: TodoItem) {
            self.item = item
            title = item.title
        }

        func toggleItem(item: TodoItem) {
            self.item.isChecked.toggle()
        }

        func updateItem() {
        }
}
