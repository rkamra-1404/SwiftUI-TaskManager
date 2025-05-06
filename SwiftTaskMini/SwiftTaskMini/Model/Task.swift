//
//  Task.swift
//  SwiftTaskMini
//
//  Created by rahulKamra-1404 on 5/5/25.
//

import Foundation

struct Task: Identifiable {
    let id = UUID()
    var title: String
    var isCompleted: Bool = false
}
