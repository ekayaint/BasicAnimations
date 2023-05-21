//
//  Animation-Scaling.swift
//  BasicAnimations
//
//  Created by ekayaint on 19.05.2023.
//

import SwiftUI

struct Animation_Scaling: View {
    @State private var scale = false
    var body: some View {
        VStack {
            Button("Scale") {
                self.scale.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20).foregroundColor(.blue).padding().scaleEffect(scale ? 0.1 : 1).animation(.easeInOut, value: scale)
        }
    }
}

struct Animation_Scaling_Previews: PreviewProvider {
    static var previews: some View {
        Animation_Scaling()
    }
}
