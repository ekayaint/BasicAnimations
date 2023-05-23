//
//  Animation-ProgressBar.swift
//  BasicAnimations
//
//  Created by ekayaint on 21.05.2023.
//

import SwiftUI

struct Animation_ProgressBar: View {
    @State private var change = false
    @State private var circleProgress : CGFloat = 1.0
    var body: some View {
        VStack(spacing: 20) {
            Text("ProgressBar Animation Sample").font(.title)
            
            Button("Progress") {
                self.change.toggle()
                self.circleProgress = self.change ? 0.25 : 1
            }
            
            Spacer()
            
            Circle().trim(from: 0, to: circleProgress)
                .stroke(Color.blue, style: StrokeStyle(lineWidth: 40, lineCap: .round)  )
                .frame(height: 300)
                .rotationEffect(.degrees(-90))
                .padding(.all, 40)
                .animation(.default, value: circleProgress)
            
            Spacer()
        }
    }
}

struct Animation_ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        Animation_ProgressBar()
    }
}
