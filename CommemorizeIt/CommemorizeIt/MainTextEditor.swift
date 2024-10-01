//
//  MainTextEditor.swift
//  CommemorizeIt
//
//  Created by kimkyunglim on 10/1/24.
//

import SwiftUI

struct MainTextEditor: View {
    @State private var text: String = " "
      
      var body: some View {
          VStack {
              TextEditor(text: $text)
                  .colorMultiply(.textboxIn)
                  .cornerRadius(12)
                  .foregroundColor(Color.typo70)
                  .frame(height: 264)
                  .overlay {
                      RoundedRectangle(cornerRadius: 12)
                      .strokeBorder(Color.boxOutside)
                  }
      
              Spacer()
          }
      }
}

#Preview {
    MainTextEditor()
}
