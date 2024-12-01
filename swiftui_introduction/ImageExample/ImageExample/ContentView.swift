//
//  ContentView.swift
//  ImageExample
//
//  Created by Chu Yu Min on 2022/08/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        Image("clock")
//            .resizable() //특정 공간에 맞게 image size를 조정
//            .aspectRatio(contentMode: .fill) //frame size(200 x 200)에 맞춘다 (공간이 남더라도 이미지 비율에 맞춤)
//            .frame(width: 200, height: 200)
//            .clipped() //frame 크기에 맞게 이미지 자름
//            .background(.black)
//            .border(.cyan, width: 5)
        Image(systemName: "sun.min")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 100, height: 100)
            .foregroundColor(.yellow)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
