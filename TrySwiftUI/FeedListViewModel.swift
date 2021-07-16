//
//  FeedListViewModel.swift
//  TrySwiftUI
//
//  Created by Kyosuke Takayama on 2021/07/13.
//

import Foundation

struct FeedItem: Identifiable {
    let id = UUID()
    var title: String
    var contentURL: URL?
    var imageURL: String?
}

final class FeedListViewModel: ObservableObject {
    @Published var items: [FeedItem]

    init(items: [FeedItem]) {
        self.items = items
    }
}
