//
//  ContentView.swift
//  TextExample
//
//  Created by Chu Yu Min on 2022/08/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack { //하위 view를 수직으로 배열하는 view
            Text("Hello Lonalia!")
                .bold()
                .italic()
                .strikethrough() //취소선
            Text("Hello Lonalia!")
                .font(.system(size: 30)) //text 크기 지정
            Text("Hello Lonalia!")
                .underline(true, color: .blue)
                .foregroundColor(.purple)
                .background(.yellow)
            Text("Hello Lonalia!")
                .foregroundColor(.accentColor)
                .bold()
                .font(.system(size: 50, weight: .bold, design: .rounded))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
