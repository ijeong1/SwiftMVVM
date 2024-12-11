//
//  TodoItemView.swift
//  SwiftMVVM
//
//  Created by Ilnam Jeong on 12/11/24.
//

import SwiftUI

struct TodoItemView: View {
    let item: TodoItem

    var body: some View {
        HStack {
            Text(item.title)
                .foregroundColor(item.isChecked ? .gray : .black)
            Spacer()
            CheckBox(item: item)
        }
    }
}

struct CheckBox: View {
    @EnvironmentObject var viewModel: TodoListViewModel
    let item: TodoItem
    var body: some View {
        Image(systemName: item.isChecked ? "checkmark.circle" : "circle")
            .onTapGesture {
                viewModel.toggleItem(item: item)
            }
    }
}
