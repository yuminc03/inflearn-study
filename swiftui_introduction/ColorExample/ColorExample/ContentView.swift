//
//  ContentView.swift
//  ColorExample
//
//  Created by Chu Yu Min on 2022/08/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        Color(.black)
////            .edgesIgnoringSafeArea(.top) //safeArea 무시하기
//            .frame(width: 300, height: 300)
//            .clipShape(RoundedRectangle(cornerRadius: 30))
        Color("SkyBlue") //asset으로 사용자 지정 색깔 입히기
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
