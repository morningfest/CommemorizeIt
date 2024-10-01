//
//  AnniversarySummaryView.swift
//  CommemorizeIt
//
//  Created by kimkyunglim on 10/1/24.
//

import SwiftUI

struct AnniversarySummaryView: View {
    var body: some View {
        ZStack {
            Color.backround.ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 0) {
                Image("prgb4")
                    .resizable()
                    .scaledToFit()
                    .padding(.bottom, 50)
                
                Text("아가 국민들을 위해 요약본 한번만 작성 부탁드립니다.")
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
    AnniversarySummaryView()
}
