//
//  Home.swift
//  CommemorizeIt
//
//  Created by kyunglimkim on 9/19/24.
//

import SwiftUI

struct Home: View {
    @State private var selectedSegment: String = "기념일별"
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("김리 대통령님,\n오늘 기념일로 지정할까요?")
                .normalTitleFont()
                .padding(.top, 85)
            
            Spacer().frame(height: 35)
            
            MainButton(text: "그려")
                .padding(.bottom, 92)
            
            Text("김리가 지정한 김리 국가기념일")
                .anniversaryTitleFont()
                
            
            HomeSegment(selected: $selectedSegment)
                .padding(.top, 25)
                .padding(.trailing, 227)
                        switch selectedSegment {
                        case "기념일별":
                            CategoListView()
                            
                        case "날짜별":
                            DateListView()
                            
                        default:
                            Text("선택된 항목이 없습니다.")
            }
        } .padding(.horizontal, 26)
            .background(.backround)
    }
}

#Preview {
    Home()
}
