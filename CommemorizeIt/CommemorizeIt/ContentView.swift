//
//  ContentView.swift
//  CommemorizeIt
//
//  Created by kyunglimkim on 8/19/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "star")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("나는 할 수 있어! 뿡")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
