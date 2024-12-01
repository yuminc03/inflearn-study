//
//  ContentView.swift
//  ListSectionExample
//
//  Created by Chu Yu Min on 2022/08/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        List {
            
            Section {
                HStack {
                    Image(systemName: "heart.fill")
                    Text("A-1 Class")
                }
                
                HStack {
                    Image(systemName: "bolt")
                    Text("Olivia")
                }
                
                HStack {
                    Image(systemName: "heart")
                    Text("Leeo")
                }
            } header: {
                VStack {
                    HStack {
                        Image(systemName: "heart.fill")
                        Text("A Class")
                    }
                    HStack {
                        Image(systemName: "heart.fill")
                        Text("AA Class")
                    }
                }
            }
            
            Section {
                HStack {
                    Image(systemName: "heart.fill")
                    Text("B-1 Class")
                }
                
                HStack {
                    Image(systemName: "heart")
                    Text("Dodo")
                }
                
                HStack {
                    Image(systemName: "bolt")
                    Text("Anna")
                }
                
            } header: {
                HStack {
                    Image(systemName: "heart.fill")
                    Text("B Class")
                }
            }
            
            Section {
                HStack {
                    Image(systemName: "heart.fill")
                    Text("C Class")
                }
                
                HStack {
                    Image(systemName: "bolt")
                    Text("Leo")
                }
                
                HStack {
                    Image(systemName: "bolt")
                    Text("Emma")
                }
            } header: {
                Text("Header")
            } footer: {
                Text("copy right by Lonalia")
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
