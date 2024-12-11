//
//  TodoListViewModel.swift
//  SwiftMVVM
//
//  Created by Ilnam Jeong on 12/10/24.
//

import Foundation

class TodoListViewModel: ObservableObject {
    @Published var items: [TodoItem] = [
        TodoItem(title: "Grocery Shopping", isChecked: true),
        TodoItem(title: "Create a pull-request", isChecked: false),
        TodoItem(title: "Learn a new coding language", isChecked: false),
        TodoItem(title: "Interview with recruiter", isChecked: false)
    ]
    
    func toggleItem(item: TodoItem) {
        if let index = items.firstIndex(where: { $0.id == item.id}){
            items[index].isChecked.toggle()
        }
    }
    
    func addItem() {
        items.append(TodoItem(title: "New Item", isChecked: false))
    }
}
