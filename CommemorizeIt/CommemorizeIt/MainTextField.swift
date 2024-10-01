//
//  TextField.swift
//  CommemorizeIt
//
//  Created by kimkyunglim on 10/1/24.
//

import SwiftUI

struct MainTextField : View {
    @State var name: String = ""
    
    var body: some View {
      VStack {
        TextField("기념일 이름을 작성하세요", text: $name)
          .padding()
          .frame(height: 53.0)
          .background(Color.textboxIn)
          .foregroundColor(Color.typo70)
          .overlay {
              RoundedRectangle(cornerRadius: 12)
              .strokeBorder(Color.boxOutside)
          }
      }
    }
  }

#Preview {
    MainTextField()
}
