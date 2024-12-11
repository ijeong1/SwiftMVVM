//
//  TodoModel.swift
//  SwiftMVVM
//
//  Created by Ilnam Jeong on 12/10/24.
//

import Foundation

struct TodoItem: Identifiable {
    let id = UUID()
    var title : String
    var isChecked : Bool
}
