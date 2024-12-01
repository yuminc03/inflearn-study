//
//  ContentView.swift
//  ViewModifierExample
//
//  Created by Chu Yu Min on 2022/10/09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .font(.largeTitle)
                .foregroundColor(.black)
                .bold()
            Text("Sub Title")
                .modifier(CommonText(myFont: .title3, myColor: .blue))
            Text("Discription")
                .modifier(CommonText(myColor: .blue))
            Text("Discription")
                .customFont(color: .gray)
        }
    }
}

///코드에서 같은 요소를 계속 쓰는걸 방지하기 위해서 사용함
struct CommonText: ViewModifier {
    
    var myWeight = Font.Weight.bold
    var myFont = Font.title2
    var myColor = Color.black
    
    func body(content: Content) -> some View {
        content
            .font(myFont.weight(myWeight))
            .foregroundColor(myColor)
            .padding(.bottom, 20)
    }
}

extension Text {
    
    func customFont(color: Color) -> Text {
        self
            .font(.title2)
            .bold()
            .italic()
            .foregroundColor(color)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
