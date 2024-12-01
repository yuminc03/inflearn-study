//
//  ContentView.swift
//  ViewExample
//
//  Created by Chu Yu Min on 2022/08/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MyView()
    }
}

struct MyView: View {
    var body: some View {
        Text("Hello World!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
