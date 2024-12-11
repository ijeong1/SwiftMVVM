//
//  ItemDetailView.swift
//  SwiftMVVM
//
//  Created by Ilnam Jeong on 12/11/24.
//

import SwiftUI

struct ItemDetailView: View {
    @StateObject var viewModel: ItemDetailViewModel

    var body: some View {
        VStack {
            HStack {
                TextField("Title", text: $viewModel.title)
                    .foregroundColor(viewModel.item.isChecked ? .gray : .black)
            }
        }
        .padding()
        .navigationTitle("Details")
    }
}

extension ItemDetailView {
    init(item: TodoItem){
        _viewModel = StateObject(wrappedValue: ItemDetailViewModel(item: item))
    }
}
