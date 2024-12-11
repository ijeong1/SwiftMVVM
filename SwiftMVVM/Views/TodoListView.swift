//
//  TodoListView.swift
//  SwiftMVVM
//
//  Created by Ilnam Jeong on 12/10/24.
//

import SwiftUI

struct TodoListView: View {
    @StateObject private var viewModel = TodoListViewModel()
    
    var body: some View {
        NavigationView{
            List {
                ForEach(viewModel.items) { item in
                    NavigationLink(destination: ItemDetailView(item: item)){
                        TodoItemView(item: item)
                    }
                }
            }
        }
        .navigationTitle("To-Do List")
        .toolbar {
            Button(action: {
                viewModel.addItem()
            })
            {
                Label("Add", systemImage: "plus")
            }
        }.environmentObject(viewModel)
    }
}
