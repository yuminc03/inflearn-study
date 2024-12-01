//
//  ContentView.swift
//  AppStorageExample
//
//  Created by Chu Yu Min on 2022/11/28.
//

import SwiftUI

//AppStorage

struct ContentView: View {
    
    @AppStorage("mode") var mode = false
    @AppStorage("notification Count") var notiCount = ""
    
    var body: some View {
        
        ZStack {
            mode ? Color.orange.opacity(0.5) : Color.gray
            
            VStack {
                Button(action: {
                    mode.toggle()
                }, label: {
                    Text("Button")
                })
                
                TextField("noti Count", text: $notiCount)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
