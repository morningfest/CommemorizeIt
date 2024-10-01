//
//  AnniversaryLastCheckView.swift
//  CommemorizeIt
//
//  Created by kimkyunglim on 10/1/24.
//

import SwiftUI

struct AnniversaryLastCheckView: View {
    var body: some View {
        ZStack {
            Color.backround.ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 0) {
                Image("prgb5")
                    .resizable()
                    .scaledToFit()
                    .padding(.bottom, 50)
                
                Text("대통령님 너무 좋은 기념일입니다\n최종 결제 부탁드립니다.")
                    .normalTitleFont()
                    .padding(.bottom, 52)
                
                VStack(alignment: .center, spacing: 0) {
                        Text ("기념일 제목")
                            .anniversaryTitleFont()
                            .padding(.bottom,10)
                        
                        Text("날짜")
                            .dateFont()
                            .padding(.bottom,30)
                        
                        Text("기념일 설명")
                            .explainFont()
                            .padding(.bottom,30)
                        
                        Text("적당히 긴 기념일 설명, 적당히 긴 기념일 설명, 적당히 긴 기념일 설명, 적당히 긴 기념일 설명, 적당히 긴 기념일 설명, 적당히 긴 기념일 설명, 적당히 긴 기념일 설명, 적당히 긴 기념일 설명, 적당히 긴 기념일 설명, 적당히 긴 기념일 설명")
                            .bodyFont()
                    
                    Spacer()
                    
                    Text("0000년 00월 00일")
                        .bodyFont()
                        .padding(.bottom, 10)
                    
                    HStack {
                        Text("김리 국가대통령")
                            .bodyFont()
                        
                        Text("김리")
                            .bodyFont()
                    }
                    .padding(.bottom, 60)
                }
            }
            
            .padding(.horizontal, 26)
        }
    }
}

#Preview {
    AnniversaryLastCheckView()
}
