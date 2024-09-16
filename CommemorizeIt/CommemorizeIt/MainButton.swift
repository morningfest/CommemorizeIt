//
//  MainButton.swift
//  CommemorizeIt
//
//  Created by kyunglimkim on 9/16/24.
//

import SwiftUI

struct MainButton: View {
    var text: String

    var body: some View {
        Button(action: {
        }) {
            Text(text)
                .font(.system(size: 18, weight: .bold))
                .foregroundColor(.typo100)
                .frame(maxWidth: .infinity, maxHeight: 53)
                .padding(.horizontal, 16)
                .background(Color.yellowMain)
                .cornerRadius(12)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.orangeLine, lineWidth: 1)
                )
        }
    }
}

#Preview {
    MainButton(text: "확인")
}
