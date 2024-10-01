//
//  AnniversaryDetailsView.swift
//  CommemorizeIt
//
//  Created by kimkyunglim on 10/1/24.
//

import SwiftUI

struct AnniversaryDetailsView: View {
    var body: some View {
        ZStack {
            Color.backround.ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 0) {
                Image("prgb3")
                    .resizable()
                    .scaledToFit()
                    .padding(.bottom, 50)
                
                Text("자세한 설명이 필요할 것 같습니다.\n무슨일이 있었는 지 알 수 있을까요?")
                    .normalTitleFont()
                
                Spacer()
                    .frame(height: 94)
                
                MainTextEditor()
                
                Spacer()
                
                MainButton(text: "다음")
                    .padding(.bottom, 70)
            }
            .padding(.horizontal, 26)
        }
    }
}

#Preview {
    AnniversaryDetailsView()
}
