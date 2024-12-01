//
//  ContentView.swift
//  MyFirstApp
//
//  Created by Chu Yu Min on 2022/08/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button {
            print("Click")//button을 click하면 print되는 text
        }
        label: {
            Text("Hello, SwiftUI!")
                .font(.title)
                .fontWeight(.black)
                .foregroundColor(Color.yellow) //Text의 색깔
                .padding()//view의 특정 가장자리에 동일한 padding의 양을 추가함
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait) //미리보기의 방향을 재정의(.portrait = 장치가 세로 모드에 있으며 장치의 상단이 상단에 있음)
    }
}
