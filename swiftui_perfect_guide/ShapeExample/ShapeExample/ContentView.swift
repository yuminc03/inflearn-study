//
//  ContentView.swift
//  ShapeExample
//
//  Created by Chu Yu Min on 2022/09/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Rectangle()
                .stroke(Color.orange,style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round, miterLimit: 3, dash: [10, 20], dashPhase: 10))
            
            RoundedRectangle(cornerRadius: 20)
                .fill(.green)
            
            Circle() //크기가 한 쪽으로 커지지 않음 (완전한 원)
                .fill(.blue)
            
            Capsule() //알약모양
                .fill(.blue)
            
            Ellipse() //타원
                .fill(.red)
        }
        .frame(width: 200)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
