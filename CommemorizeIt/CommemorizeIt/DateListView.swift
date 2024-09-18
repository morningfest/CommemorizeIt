//
//  DateListView.swift
//  CommemorizeIt
//
//  Created by kyunglimkim on 9/18/24.
//

import SwiftUI

struct DateListView: View {
    
    struct Anniversary: Identifiable {
        var id = UUID()
        var name: String
        var date: Date
        var summary: String
    }
    
    private var anniversarys = [
        Anniversary (name: "사과나무의 날", date: .now, summary: "태어나서 처음으로 사과나무를 할아버지 과수원에 심어본날"),
        Anniversary (name: "갈매기위에 갈매기 기념일", date: .now, summary: "갈매기 위에 갈매기가 올라가 있는 걸 본 날"),
        Anniversary (name: "기적의 날", date: .now, summary: "내가 만들 수 있는 가장 작은 기적 밍기적")
    ]
    
    private var dateFormatter: DateFormatter {
            let formatter = DateFormatter()
            formatter.dateFormat = "M월 d일"
            return formatter
        }
    
    var body: some View {
        NavigationView {
            List(anniversarys) { anniversary in
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        Text(anniversary.name)
                            .anniversaryTitleFont()
                            .padding(.trailing, 12)
                        
                        Text(dateFormatter.string(from: anniversary.date))
                            .dateFont()
                    }
                    .padding(.bottom, 10)
                    
                    Text(anniversary.summary)
                        .explainFont()
                }
                .listRowInsets(EdgeInsets())
                .padding(.vertical, 28)
            }.listStyle(.plain)
        }.ignoresSafeArea()
    }
}
    
#Preview {
        DateListView()
    }
