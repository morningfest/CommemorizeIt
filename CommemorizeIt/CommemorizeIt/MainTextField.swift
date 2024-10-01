//
//  TextField.swift
//  CommemorizeIt
//
//  Created by kimkyunglim on 10/1/24.
//

import SwiftUI

struct MainTextField : View {
    @StateObject var manager = TFManager()
    
    var body: some View {
      VStack {
          TextField("기념일 이름을 작성하세요", text: $manager.text)
          .padding()
          .frame(height: 53.0)
          .background(Color.textboxIn)
          .foregroundColor(Color.typo70)
          .overlay {
              RoundedRectangle(cornerRadius: 12)
              .strokeBorder(Color.boxOutside)
          }
          Text("\(manager.text.count)/20")
              .explainFont()
              .opacity(0.4)
      }
    }
  }

class TFManager: ObservableObject{
    
    @Published var text = ""{
        didSet{
            if text.count > 20 && oldValue.count <= 20{
                text = oldValue
            }
        }
    }
}

#Preview {
    MainTextField()
}
