//
//  ItemModel.swift
//  TaskMinder
//
//  Created by Joseph DeWeese on 1/25/22.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
