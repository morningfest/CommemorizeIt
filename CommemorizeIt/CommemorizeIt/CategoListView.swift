//
//  CategoListView.swift
//  CommemorizeIt
//
//  Created by kyunglimkim on 9/16/24.
//

import SwiftUI

struct CategoItem: Identifiable {
    var id = UUID()
    var image: Image
    var title: String
}

struct CategoListView: View {
    
    @State var categories: [CategoItem] = [
        CategoItem(image: Image("dayM1"), title: "기쁜 기념일"),
        CategoItem(image: Image("dayM2"), title: "웃긴 기념일"),
        CategoItem(image: Image("dayM3"), title: "사소한 기념일"),
        CategoItem(image: Image("dayM4"), title: "신기한 기념일"),
        CategoItem(image: Image("dayM5"), title: "맛있는 기념일"),
        CategoItem(image: Image("dayM6"), title: "소비 기념일"),
        CategoItem(image: Image("dayM7"), title: "멋진 기념일"),
        CategoItem(image: Image("dayM8"), title: "충격 기념일"),
        CategoItem(image: Image("dayM9"), title: "기타 기념일")
    ]

    private let adaptiveColumns = [GridItem(.adaptive(minimum: 160))]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: adaptiveColumns, spacing: 20) {
                    ForEach(categories) { category in
                        Button(action: {}, label: {
                            CategoView(category: category)
                        })
                    }
                }
            }
        }
    }
}

struct CategoView: View {
    var category: CategoItem
    
    var body: some View {
        VStack(alignment: .leading) {
            ZStack{
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.boxInside)
                    .frame(width: 160, height: 160)
                
                category.image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 160, height: 160)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.boxOutside, lineWidth: 1)
                    )
            }
            
            Text(category.title)
                .font(.system(size: 14, weight: .ultraLight))
                .foregroundColor(.typo70)
        }
    }
}

#Preview {
    CategoListView()
}
