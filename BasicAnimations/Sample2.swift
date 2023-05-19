//
//  Sample2.swift
//  BasicAnimations
//
//  Created by ekayaint on 15.05.2023.
//

import SwiftUI

struct Sample2: View {
    @State private var colorChange = false
    var body: some View {
        VStack(spacing: 20) {
            Text ("Animation Sample 2").font(.largeTitle)
            Text("With Animation")
            RoundedRectangle(cornerRadius: 20).foregroundColor(colorChange ? .orange : .blue).padding().animation(.easeInOut, value: colorChange)
            
            Text ("No Animation")
            RoundedRectangle(cornerRadius: 20).foregroundColor(colorChange ? .orange : .blue).padding()
            Spacer()
            Button("Color Change") {
                self.colorChange.toggle()
            }
        }.font(.title)
    }
}

struct Sample2_Previews: PreviewProvider {
    static var previews: some View {
        Sample2()
    }
}
