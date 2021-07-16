//
//  ContentView.swift
//  TrySwiftUI
//
//  Created by Kyosuke Takayama on 2021/07/09.
//

import SwiftUI

struct FeedListView: View {
    @ObservedObject var viewModel: FeedListViewModel

    var body: some View {
        NavigationView {
            List(viewModel.items) { item in
                NavigationLink(destination: FeedDetailView(title: item.title, url: item.contentURL)) {
                    if let url = item.imageURL {
                        if #available(iOS 15.0, *) {
                            AsyncImage(url: URL(string: url))
                                .frame(width: 44, height: 44)
                                .mask(RoundedRectangle(cornerRadius: 16))
                                .aspectRatio(.none, contentMode: .fit)
                        }
                    }
                    Text(item.title)
                }
            }
            .navigationBarTitle("Mac Reader")
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    Button("Test") { print("new") }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let items = [
            FeedItem(title: "すごい安いディスプレイがやばすぎて祭りに",
                     imageURL: "https://www.example.com/sample.jpg"),
            FeedItem(title: "Item 1"),
            FeedItem(title: "Item 2")
        ]
        let viewModel = FeedListViewModel(items: items)
        FeedListView(viewModel: viewModel)
    }
}
