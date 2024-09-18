//
//  Font.swift
//  CommemorizeIt
//
//  Created by kyunglimkim on 9/19/24.
//

import SwiftUI

struct Font: ViewModifier {
    var fontType: SwiftUI.Font.Weight
    var size: CGFloat
    var color: Color
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: size, weight: fontType))
            .foregroundColor(color)
    }
}

extension View {
    func listTitleFont() -> some View {
        self.modifier(Font(fontType: .bold, size: 36, color: .typo100))
    }
    
    func normalTitleFont() -> some View {
        self.modifier(Font(fontType: .semibold, size: 21, color: .typo100))
    }
    
    func anniversaryTitleFont() -> some View {
        self.modifier(Font(fontType: .semibold, size: 21, color: .typo70))
    }
    
    func bodyFont() -> some View {
        self.modifier(Font(fontType: .regular, size: 18, color: .typo70))
    }
        
    func dateFont() -> some View {
        self.modifier(Font(fontType: .medium, size: 16, color: .typo70))
    }
    
    func editFont() -> some View {
        self.modifier(Font(fontType: .semibold, size: 14, color: .typo100))
            .underline()
    }
    
    func explainFont() -> some View {
        self.modifier(Font(fontType: .light, size: 14, color: .typo70))
    }
}

#Preview {
    VStack(alignment: .leading, spacing: 20){
        Text("왕제목 Bold 36 100%")
            .listTitleFont()
        
        Text("질문, 화면 제목 SemiBold 21 100%")
            .normalTitleFont()
        
        Text("기념일 이름 SemiBold 21 70%")
            .anniversaryTitleFont()
        
        Text("일반 본문용 regular 18 70%")
            .bodyFont()
        
        Text("날짜 medium 16 70%")
            .dateFont()
        
        Text("내용수정하기 SemiBold 14 100% 내용수정하기")
            .editFont()
        
        Text("설명 light 14 70%")
            .explainFont()
    }
}
