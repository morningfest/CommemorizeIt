//
//  HomeSegment.swift
//  CommemorizeIt
//
//  Created by kyunglimkim on 9/16/24.
//

import SwiftUI

struct HomeSegment: View {
    @Binding var selected: String
    
    let segments: [String] = ["기념일별", "날짜별"]
    @Namespace private var animationNamespace
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(segments, id: \.self) { segment in
                SegmentButton(
                    title: segment,
                    isSelected: selected == segment,
                    onTap: { selected = segment },
                    namespace: animationNamespace
                )
            }
        }
    }
}

struct SegmentButton: View {
    var title: String
    var isSelected: Bool
    var onTap: () -> Void
    var namespace: Namespace.ID
    
    var body: some View {
        Button(action: onTap) {
            VStack {
                Text(title)
                    .font(.system(size: 16, weight: .light))
                    .foregroundColor(isSelected ? .typo70 : Color(uiColor: .typo20))
                
                ZStack {
                    Capsule()
                        .fill(Color.clear)
                        .frame(height: 4)
                    if isSelected {
                        Capsule()
                            .fill(Color.yellowMain)
                            .frame(height: 1)
                            .matchedGeometryEffect(id: "Tab", in: namespace)
                    }
                }
            }
        }
    }
}

//#Preview {
//    HomeSegment()
//}
