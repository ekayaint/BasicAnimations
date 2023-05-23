//
//  Animation-FontSize.swift
//  BasicAnimations
//
//  Created by ekayaint on 21.05.2023.
//

import SwiftUI

struct Animation_FontSize: View {
    @State private var fontChange = false
    var body: some View {
        VStack {
            Text("Font Size Animation").font(.largeTitle)
            
            Toggle(isOn: $fontChange) {
                Text("Apply animation")
            }.padding()
            Spacer()
            Text("SwiftUI").font(.system(size: fontChange ? 80 : 20))
                .animation(.easeInOut)
            Spacer()
        }
    }
}

struct Animation_FontSize_Previews: PreviewProvider {
    static var previews: some View {
        Animation_FontSize()
    }
}
