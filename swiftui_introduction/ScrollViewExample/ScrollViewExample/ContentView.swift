//
//  ContentView.swift
//  ScrollViewExample
//
//  Created by Chu Yu Min on 2022/08/15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: true) { //어느방향으로 scroll할지 정하는 것 중요
            HStack {
                Text("1")
                    .frame(width: 300, height: 500)
                    .background(.red)
                Text("2")
                    .frame(width: 300, height: 500)
                    .background(.orange)
                Text("3")
                    .frame(width: 300, height: 500)
                    .background(.yellow)
            }
            
        }
        .background(.yellow)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
