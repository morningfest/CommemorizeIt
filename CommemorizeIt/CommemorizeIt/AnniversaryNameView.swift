//
//  AnniversaryNameView.swift
//  CommemorizeIt
//
//  Created by kimkyunglim on 10/1/24.
//

import SwiftUI

struct AnniversaryNameView: View {
    var body: some View {
        ZStack {
            Color.backround.ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 0) {
                Image("prgb2")
                    .resizable()
                    .scaledToFit()
                    .padding(.bottom, 50)
                
                Text("알겠습니다, 그렇다면\n기념일을 뭐라 지칭하면 좋을까요?")
                    .normalTitleFont()
                    .padding(.bottom, 12)
                
            Text("도움을 드리자면, ‘_____의 날, _____기념일, _____데이’ 의 형식으로 명명하시면 국민들이 이해하고 부르기 쉬울 겁니다.")
                    .explainFont()
                
                Spacer()
                    .frame(height: 131)
                
                MainTextField()
                
                Spacer()
                
                MainButton(text: "다음")
                    .padding(.bottom, 70)
            }
            .padding(.horizontal, 26)
        }
    }
}


#Preview {
    AnniversaryNameView()
}
