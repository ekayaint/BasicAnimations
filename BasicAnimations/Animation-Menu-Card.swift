//
//  Animation-Menu-Card.swift
//  BasicAnimations
//
//  Created by ekayaint on 3.06.2023.
//

import SwiftUI

struct Animation_Menu_Card: View {
    @State private var openMenu = false
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Animation Sample")
            
            Button("Open Menu") {
                self.openMenu.toggle()
            }
            
            Spacer()
            
            VStack(spacing: 20){
                Image(systemName: "line.horizontal.3")
                Text("My Menu")
                Spacer()
                
            }.padding(20)
                .frame(maxWidth: .infinity, maxHeight: 200)
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.blue))
                .padding(.horizontal)
                .foregroundColor(.white)
                .offset(x:0 , y: openMenu ? 0 : 250)
                .opacity(openMenu ? 1 : 0)
                .scaleEffect(openMenu ? 1 : 0.15, anchor: .bottom)
                .animation(.default, value: openMenu)
            
            
        }
    }
}

struct Animation_Menu_Card_Previews: PreviewProvider {
    static var previews: some View {
        Animation_Menu_Card()
    }
}
