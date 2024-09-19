//
//  AnniversaryTypeListView.swift
//  CommemorizeIt
//
//  Created by kyunglimkim on 9/19/24.
//

import SwiftUI

struct AnniversaryTypeListView: View {
    private let columns = [GridItem(.adaptive(minimum: 100), spacing: 20)]
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 20) {
            ForEach(TypeItem.allCases, id: \.self) { item in
                Button(action: {}) {
                    VStack(spacing: 0) {
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color.boxInside)
                            .strokeBorder(Color.boxOutside)
                            .frame(width: 100, height: 100)
                            .overlay(
                                Image(item.info.imageName)
                                    .resizable()
                                    .scaledToFit()
                            )
                        
                        Text(item.info.name)
                            .explainFont()
                            .padding(.top, 7)
                    }
                }
            }
        }
        .background(.backround)
    }
}

struct TypeInfo {
    let imageName: String
    let name: String
}

enum TypeItem: String, CaseIterable {
    case Joyful, Funny, Minor, Amazing
    case Tasty, Spending, Cool, Shocking, Other
    
    var info: TypeInfo {
        switch self {
        case .Joyful: return TypeInfo(imageName: "dayS1", name: "기쁜 기념일")
        case .Funny: return TypeInfo(imageName: "dayS2", name: "웃긴 기념일")
        case .Minor: return TypeInfo(imageName: "dayS3", name: "사소한 기념일")
        case .Amazing: return TypeInfo(imageName: "dayS4", name: "신기한 기념일")
        case .Tasty: return TypeInfo(imageName: "dayS5", name: "맛있는 기념일")
        case .Spending: return TypeInfo(imageName: "dayS6", name: "소비 기념일")
        case .Cool: return TypeInfo(imageName: "dayS7", name: "멋진 기념일")
        case .Shocking: return TypeInfo(imageName: "dayS8", name: "충격 기념일")
        case .Other: return TypeInfo(imageName: "dayS9", name: "기타 기념일")
        }
    }
    
    static let allTypeCount: Int = TypeItem.allCases.count
}


#Preview {
    AnniversaryTypeListView()
}
