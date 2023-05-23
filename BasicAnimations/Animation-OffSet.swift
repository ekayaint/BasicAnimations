//
//  Animation-OffSet.swift
//  BasicAnimations
//
//  Created by ekayaint on 23.05.2023.
//

import SwiftUI

struct Animation_OffSet: View {
    @State private var change = false
    var offsetValue : CGFloat = 200
    var body: some View {
        VStack(spacing: 20) {
            Text("Animation Offset").font(.largeTitle)
            Spacer()
            VStack(spacing: 1){
                HStack(alignment: .bottom, spacing: 1){
                    Rectangle().frame(width: 70, height: 35)
                        .offset(x: change ? 0 : -offsetValue)
                    Rectangle().frame(width: 35, height: 70)
                        .offset(y: change ? 0 : -offsetValue)
                }.offset(x: -18)
                
                HStack(alignment: .top, spacing: 1){
                    Rectangle().frame(width: 36, height: 72)
                        .offset(y: change ? 0 : offsetValue)
                    Rectangle().frame(width: 72, height: 36)
                        .offset(x: change ? 0 : offsetValue)
                }.offset(x: 18)
            }
        }.font(.title)
    }
}

struct Animation_OffSet_Previews: PreviewProvider {
    static var previews: some View {
        Animation_OffSet()
    }
}
