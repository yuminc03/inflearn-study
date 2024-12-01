//
//  ContentView.swift
//  FrameExample
//
//  Created by Chu Yu Min on 2022/08/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image(systemName: "bolt")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 300, height: 200, alignment: .center) //view의 크기 변환(가로, 세로, 정렬)
            .background(.green)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
