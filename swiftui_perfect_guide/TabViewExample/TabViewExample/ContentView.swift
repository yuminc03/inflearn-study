//
//  ContentView.swift
//  TabViewExample
//
//  Created by Chu Yu Min on 2022/11/20.
//

import SwiftUI

//TabView = UIKit(TabBar)
struct First: View {
    var body: some View {
        ZStack {
            Color.orange
            Text("first")
        }
    }
}

struct Second: View {
    var body: some View {
        ZStack {
            Color.yellow
            Text("second")
        }
    }
}

struct ContentView: View {
    var body: some View {
        TabView {
            First()
                .tabItem {
                    Image(systemName: "person")
                    Text("person")
                }
                .edgesIgnoringSafeArea(.top)
            
            Second()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("person.fill")
                }
                .edgesIgnoringSafeArea(.top)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
