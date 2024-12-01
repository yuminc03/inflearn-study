//
//  ContentView.swift
//  StateExample
//
//  Created by Chu Yu Min on 2022/08/28.
//

import SwiftUI

struct ContentView: View {
    
    @State var name: String = "" //state 변수: 바뀌는 순간 화면을 다시 그려줌
    //만약 @State가 없으면 변수 값을 바꿀 수 없어서 error.
    
    var body: some View {
        VStack {
            Text("Hi \(name)")
            
            Button {
                name = "Lonalia!"
            } label: {
                Text("Click")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
