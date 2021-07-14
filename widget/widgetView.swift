//
//  widgetView.swift
//  widgetExtension
//
//  Created by Kyosuke Takayama on 2021/07/14.
//

import WidgetKit
import SwiftUI

struct widgetView_Previews: PreviewProvider {
    static var previews: some View {
        let items = [
            WidgetEntryItem(title: "すごい安いディスプレイがやばすぎて祭りに"),
            WidgetEntryItem(title: "すごい安いディスプレイがやばすぎて祭りに"),
            WidgetEntryItem(title: "Linus が")
        ]
        widgetView(entry: WidgetEntry(items: items))
            .previewContext(WidgetPreviewContext(family: .systemMedium))
    }
}

struct widgetView: View {
    var entry: Provider.Entry

    var body: some View {
        HStack {
            VStack {
                if entry.items.count > 0 {
                    ForEach(entry.items) { item in
                        widgetItemView(item: item)
                    }
                } else {
                    Text("なんもねぇ…")
                }
            }
            Spacer()
        }
        .padding(14)
        .background(Color(UIColor.systemBackground))
    }
}

struct widgetItemView: View {
    let item: WidgetEntryItem

    var body: some View {
        HStack {
            RoundedRectangle(cornerRadius: 2)
                .foregroundColor(.gray)
                .frame(width: 4, height: 30, alignment: .center)
            VStack(alignment: .leading) {
                Text(item.title)
                    .font(.subheadline)
                Text(item.date, style: .time)
                    .font(.caption2)
            }
            Spacer()
        }
    }
}

struct WidgetEntry: TimelineEntry {
    let date = Date()
    let items: [WidgetEntryItem]
}

struct WidgetEntryItem: Identifiable {
    let id = UUID()
    let date = Date()
    let title: String
}
