//
//  ContentView.swift
//  TrySwiftUI
//
//  Created by Kyosuke Takayama on 2021/07/13.
//

import SwiftUI

struct ContentView: View {
    @State private var username: String = ""

    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("おなまえ")
                    .font(.system(size: 16))
                TextField("閑歳 孝子", text: $username)
                    .border(Color(UIColor.separator))
                Text("ご住所")
                    .font(.system(size: 16))
                TextField("千代田区1−1−1", text: $username)
                    .border(Color(UIColor.separator))
                Spacer()
            }
            .navigationBarTitle("Navigation title")
            .padding(16)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
