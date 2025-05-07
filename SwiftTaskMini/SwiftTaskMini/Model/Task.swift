//
//  Task.swift
//  SwiftTaskMini
//
//  Created by rahulKamra-1404 on 5/5/25.
//

import Foundation

struct Task: Identifiable, Codable, Equatable {
    var id = UUID()
    var title: String
    var dueDate: Date?
    var tags: [String] = []
    var priority: Priority = .high
    var isCompleted: Bool = false

    enum Priority: String, CaseIterable, Codable, Identifiable {
            case low, medium, high

            var id: String { self.rawValue }
        }
}
