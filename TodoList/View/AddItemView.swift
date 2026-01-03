//
//  AddItemView.swift
//  TodoList
//
//  Created by sushant tiwari on 02/01/26.
//

import SwiftUI

struct AddItemView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var title: String = ""

    var body: some View {
        Form {
            Section(header: Text("New Item")) {
                TextField("Title", text: $title)
            }
            Section {
                Button("Save") {
                    // Hook up saving logic here (e.g., via bindings or a model)
                    dismiss()
                }
                .disabled(title.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty)
            }
        }
        .navigationTitle("Add Item")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .cancellationAction) {
                Button("Cancel") { dismiss() }
            }
        }
    }
}

#Preview {
    NavigationView {
        AddItemView()
    }
}
