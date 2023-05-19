//
//  Animation-Offset-Position.swift
//  BasicAnimations
//
//  Created by ekayaint on 19.05.2023.
//

import SwiftUI

struct Animation_Offset_Position: View {
    @State private var locationChange = false
    var body: some View {
        VStack(spacing: 20){
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.blue)
                .frame(width: 100, height: 100)
                .offset(x: locationChange ? 140 : -140, y: 0)
                .animation(.default, value: locationChange)
            
            GeometryReader { gr in
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.blue)
                    .frame(width: 100, height: 100)
                    .position(self.locationChange ? CGPoint(x:100, y:100): CGPoint(x:300, y:300))
                    .animation(.default, value: locationChange)
            }
            Spacer()
            Button("Change") {
                self.locationChange.toggle()
            }
        }
    }
}

struct Animation_Offset_Position_Previews: PreviewProvider {
    static var previews: some View {
        Animation_Offset_Position()
    }
}
