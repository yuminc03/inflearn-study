//
//  ContentView.swift
//  PlaceholderExmaple
//
//  Created by Chu Yu Min on 2022/11/06.
//

import SwiftUI

//Placeholder
//redact
struct ContentView: View {
    
    @State private var myString = "hello world"
    @State private var showPlaceholder = false
    
    var body: some View {
        VStack {
            VStack {
                Image(systemName: "person")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
//                    .overlay(Circle().stroke())
                
                Text(myString)
                    .foregroundColor(.orange)
                    .padding()
            }
            .redacted(reason: showPlaceholder ? .placeholder : .init()) //placeholder를 적용함(텍스트, 이미지 등에 적용가능)
            
            Button("click me!") {
                showPlaceholder.toggle()
            }
            .redacted(reason: showPlaceholder ? .placeholder : .init())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
