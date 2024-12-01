//
//  ContentView.swift
//  TextExample
//
//  Created by Chu Yu Min on 2022/09/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world! Hello, world! Hello, world! Hello, world! Hello, world!")
                .font(.largeTitle)
                .underline()
                .bold()
                .background(Color.blue) //반드시 padding을 넣은 후에 background color 넣을 것
                .foregroundColor(.green)
                .truncationMode(.tail) //줄임표 형태...
                .lineSpacing(20) //줄 간격
                .cornerRadius(500)
//                .lineLimit(1)
//                .frame(width: 100)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
