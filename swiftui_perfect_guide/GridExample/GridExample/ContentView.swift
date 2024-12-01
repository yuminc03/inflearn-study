//
//  ContentView.swift
//  GridExample
//
//  Created by Chu Yu Min on 2022/10/30.
//

import SwiftUI

//Grid
//CollectionView

struct ContentView: View {
    
    var columns: [GridItem] {
        [
            GridItem(.fixed(100)) //지정한 넓이 그대로 표현
//            GridItem(.adaptive(minimum: 100, maximum: 100)), //minimum, maximum을 지정해서 나열될 수 있는 크기만큼 순차적으로 표현
//            GridItem(.flexible(minimum: 50, maximum: 200)), //minimum, maximum을 지정해서 columns의 수에 따라서 크기가 자유자제로 자동으로 조절됨
//            GridItem(.flexible(minimum: 50, maximum: 200)),
//            GridItem(.flexible(minimum: 50, maximum: 200))
        ]
    }
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: columns, content: {
                Text("hello world")
                    .lineLimit(1)
                Image(systemName: "music.mic")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(systemName: "music.note")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(systemName: "music.mic")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(systemName: "music.note")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(systemName: "music.mic")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(systemName: "music.note")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(systemName: "music.mic")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(systemName: "music.note")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
