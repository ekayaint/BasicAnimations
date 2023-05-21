//
//  Animation-CornerRadius.swift
//  BasicAnimations
//
//  Created by ekayaint on 19.05.2023.
//

import SwiftUI

struct Animation_CornerRadius: View {
    @State private var change = false
    var body: some View {
        VStack {
            Button("Change CornerRadius with Animation") {
                self.change.toggle()
            }
            
            RoundedRectangle(cornerRadius: change ? 0 : 70).foregroundColor(.blue).padding().animation(.easeInOut, value: change)
            
            Text("With CornerRadius Method")
                .padding(25)
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(change ? 0 : 100)
                .animation(.easeInOut, value: change)
        }
    }
}

struct Animation_CornerRadius_Previews: PreviewProvider {
    static var previews: some View {
        Animation_CornerRadius()
    }
}
