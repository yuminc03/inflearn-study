//
//  ContentView.swift
//  SympbolsExmaple
//
//  Created by Chu Yu Min on 2022/09/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image(systemName: "wifi")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 100, height: 300)
            .foregroundColor(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
