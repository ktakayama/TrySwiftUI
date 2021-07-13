//
//  FeedDetailView.swift
//  MacReader
//
//  Created by Kyosuke Takayama on 2021/07/13.
//

import SwiftUI

struct FeedDetailView: View {
    var title: String
    var url: URL?

    var body: some View {
        NavigationView {
            VStack {
                WebView(url: url!)
            }
            .navigationBarTitle(title)
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    Button(action: {print("tap")}, label: {
                        Image(systemName: "arrowtriangle.backward")
                    })
                }
                ToolbarItem(placement: .bottomBar) {
                    Button(action: {print("tap")}, label: {
                        Image(systemName: "arrowtriangle.forward")
                    })
                }
            }
        }

    }
}

struct FeedDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FeedDetailView(title: "title",
                       url: URL(string: "https://www.apple.com/")!)
    }
}
