//
//  ListView.swift
//  TodoList
//
//  Created by sushant tiwari on 02/01/26.
//

import SwiftUI

struct ListView: View {
    @State var items: [Item] = [
        Item(title: "this is my first title", isCompleted: false),
        Item(title: "this is my second title", isCompleted: true),
        Item(title: "this is my third title", isCompleted: false)
    ]

    var body: some View {
        List {
            ForEach(items) { item in
                ListRowView(title: item.title, isCompleted: item.isCompleted)
            }
            .onDelete(perform: deleteItems)
            .onMove(perform: moveItems)
            
        }
        .listStyle(PlainListStyle())
        .navigationTitle(Text("Todo List 📝"))
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                EditButton()
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink {
                    AddItemView()
                } label: {
                    Image(systemName: "plus")
                }
                .accessibilityLabel("Add Item")
            }
        }
    }
    func deleteItems(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
    func moveItems(indices: IndexSet, destination: Int) {
        items.move(fromOffsets: indices, toOffset: destination)
    }
}

#Preview {
    NavigationView {
        ListView()
    }
}
