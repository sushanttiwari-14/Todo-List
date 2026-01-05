// Item.swift
import Foundation

struct Item: Identifiable, Codable, Equatable {
    let id: UUID
    let title: String
    var isCompleted: Bool

    init(id: UUID = UUID(), title: String, isCompleted: Bool = false) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
}
