//
//  ContentView.swift
//  ModifierExample
//
//  Created by Chu Yu Min on 2022/08/28.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        Image(systemName: "bolt")
            .resizable() //resizable한 image 다시 만들기
            .aspectRatio(contentMode: .fit) //image 다시 만들기
            .frame(width: 100) //image 다시 만들기
            .background(.yellow) //image 다시 만들기
            .foregroundColor(.cyan) //image 다시 만들기
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
