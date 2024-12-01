//
//  ContentView.swift
//  SpacerExample
//
//  Created by Chu Yu Min on 2022/08/27.
//

import SwiftUI

struct Person: Identifiable {
    var id = UUID()
    let name: String
    let imageName: String
}
struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "bolt")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200)
            
            Spacer()
            HStack {
                Image(systemName: "heart")
                Spacer()
                Text("Bolt!")
            }
            .padding(.horizontal, 30)
            
            Spacer()
            Button {
                print("Blink!")
            } label: {
                Text("Hit!")
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
