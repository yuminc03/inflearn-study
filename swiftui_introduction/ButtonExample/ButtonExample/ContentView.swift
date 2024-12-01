//
//  ContentView.swift
//  ButtonExample
//
//  Created by Chu Yu Min on 2022/08/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button(action: {
            print("Hited!") //button 눌렀을 때 Hited!출력하기
        }, label: {
            Text("Lonalia") //button에 title로 Hit me2! 넣기
                .padding() //순서가 매우 중요함(padding을 먼저 주고 배경색을 넣어야 padding을 포함한 공간까지 배경색 적용됨)
                .frame(width: 150) //button 크기: width = 150
                .background(.cyan)
                .cornerRadius(30)
                .foregroundColor(.white)
//            Image(systemName: "heart") //button에 image넣기
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
