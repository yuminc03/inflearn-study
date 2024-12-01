//
//  ContentView.swift
//  StackExample
//
//  Created by Chu Yu Min on 2022/08/15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("1")
                .padding()
                .background(.blue)
            Text("2")
                .padding()
                .background(.blue)
            Text("3")
                .padding()
                .background(.blue)
        }
        .frame(width: 300, height: 200)
        .background(.cyan)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
