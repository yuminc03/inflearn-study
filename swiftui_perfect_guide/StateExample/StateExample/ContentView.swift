//
//  ContentView.swift
//  StateExample
//
//  Created by Chu Yu Min on 2022/11/24.
//

import SwiftUI

//State

struct ContentView: View {
    
    @State private var myName = "yumin"
    
    var body: some View {
        
        VStack {
            Text(myName)
                .padding()
            Button("Change name") {
                myName = "Chu"
            }
            TextField("TextField Title", text: $myName)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
