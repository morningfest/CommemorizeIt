//
//  AnniversaryTypeView.swift
//  CommemorizeIt
//
//  Created by kyunglimkim on 9/19/24.
// 엑스코드 쓰레기 진짜 이시끼 에러가 왤케 많음? 진짜 개큰 짜증난다.

import SwiftUI

struct AnniversaryTypeView: View {
    var body: some View {
        ZStack {
            Color.backround.ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 0) {
                Image("prgb1")
                    .resizable()
                    .scaledToFit()
                    .padding(.bottom, 50)
                
                Text("김리대통령님\n오늘 어떤 기념일로 지정할까요?")
                    .normalTitleFont()
                
                AnniversaryTypeListView()
                    .padding(.top, 32)
                
                Spacer()
                    
                
                MainButton(text: "다음")
                    .padding(.bottom, 70)
                
            }
            .padding(.horizontal, 26)
        }
    }
}

#Preview {
    AnniversaryTypeView()
}
