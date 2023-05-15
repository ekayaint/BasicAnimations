//
//  ContentView.swift
//  BasicAnimations
//
//  Created by ekayaint on 15.05.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var change = false
    var body: some View {
        VStack(spacing: 20) {
            Text("Animation Sample").font(.largeTitle)
            
            Circle().foregroundColor(.orange)
                .frame(width: 100, height: 100)
                .offset(x:0, y: change ? 350 : 0)
                .animation(.easeOut, value: change)
            
            Spacer()
            Button("Change") {
                self.change.toggle()
            }.padding(.bottom)
        }.font(.title)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
