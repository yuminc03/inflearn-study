//
//  ContentView.swift
//  PaddingExample
//
//  Created by Chu Yu Min on 2022/08/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "bolt")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
                .background(.gray)
                .foregroundColor(.yellow)
                .padding([.bottom, .top], 100) // 기본값: all
            
            Image(systemName: "bolt")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
                .background(.gray)
                .foregroundColor(.yellow)
                .padding(.leading, 100)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
