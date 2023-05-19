//
//  Animation-Opacity-Rotation.swift
//  BasicAnimations
//
//  Created by ekayaint on 19.05.2023.
//

import SwiftUI

struct Animation_Opacity_Rotation: View {
    @State private var show = false
    @State private var rotation = false
    
    var body: some View {
        VStack(spacing: 20) {
            Button("Show / Hide") {
                self.show.toggle()
            }
            RoundedRectangle(cornerRadius: 20).foregroundColor(.orange).frame(width:200, height: 200).padding().opacity(show ? 1 : 0).animation(.easeInOut, value: show)
            
            Spacer()
            
            Button("Rotate"){
                self.rotation.toggle()
            }
            RoundedRectangle(cornerRadius: 20).foregroundColor(.blue).frame(width:300, height: 300).padding().overlay(Image(systemName: "arrow.right").foregroundColor(.white))
                .rotationEffect(Angle.degrees(rotation ? 250 : 0)).animation(.easeInOut, value: rotation)
        }
    }
}

struct Animation_Opacity_Rotation_Previews: PreviewProvider {
    static var previews: some View {
        Animation_Opacity_Rotation()
    }
}
