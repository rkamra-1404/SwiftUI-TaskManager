//
//  ContentView.swift
//  SwiftTaskMini
//
//  Created by r0k06op on 5/5/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAddTask = false
    @StateObject private var viewModel = TaskViewModel()

    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.tasks) { task in
                    TaskRow(task: task, toggleCompletion: {
                        viewModel.toggleCompletion(for: task)
                    })
                    .listRowBackground(Color.white)
                    .padding(.vertical, 5)
                }
                .onDelete(perform: viewModel.deleteTask)
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Tasks")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        showingAddTask = true
                        print("Plus Button Tapped")
                    }) {
                        Image(systemName: "plus")
                            .imageScale(.large)
                            .foregroundColor(.blue) // Ensure visibility
                    }
                }
            }
            .sheet(isPresented: $showingAddTask) {
                AddTaskView(viewModel: viewModel)
            }
        }
    }
}


#Preview {
    ContentView()
}
