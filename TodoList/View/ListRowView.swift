//
//  ListRowView.swift
//  TodoList
//
//  Created by sushant tiwari on 02/01/26.
//

import SwiftUI

struct ListRowView: View {
    let title: String
    let isCompleted: Bool

    var body: some View {
        HStack {
            Image(systemName: isCompleted ? "checkmark.circle" : "circle")
                .foregroundStyle(isCompleted ? .green : .red)
            Text(title)
            Spacer()
        }
    }
}

#Preview {
    ListRowView(title: "Sample task", isCompleted: false)
}
