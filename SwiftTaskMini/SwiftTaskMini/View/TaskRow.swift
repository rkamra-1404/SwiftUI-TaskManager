//
//  TaskRow.swift
//  SwiftTaskMini
//
//  Created by r0k06op on 5/5/25.
//

import SwiftUI

struct TaskRow: View {
    var task: Task
    var toggleCompletion: () -> Void
    var body: some View {
        HStack {
            Image(systemName: task.isCompleted ? "checkmark.circle.fill" : "circle")
                .foregroundColor(task.isCompleted ? .green : .gray)
                .onTapGesture {
                    toggleCompletion()
                }
            Text(task.title)
                .strikethrough(task.isCompleted, color: .gray)
                .foregroundColor(task.isCompleted ? .gray : .primary)
        }
    }
}

