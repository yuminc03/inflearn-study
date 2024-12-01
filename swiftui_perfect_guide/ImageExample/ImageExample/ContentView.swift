//
//  ContentView.swift
//  ImageExample
//
//  Created by Chu Yu Min on 2022/09/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0) {
//            Text("image")
//                .background(Color.blue)
//            Text("image")
//                .background(Color.blue)
            Image("1")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .aspectRatio(contentMode: .fit)
                .padding(.bottom, 20)
                .mask(
                    HStack {
                        VStack(spacing: 0) {
                            Circle()
                            Circle()
                            Circle()
                            Circle()
                            Circle()
                        }
                        VStack(spacing: 0) {
                            Circle()
                            Circle()
                            Circle()
                            Circle()
                            Circle()
                        }
                        VStack(spacing: 0) {
                            Circle()
                            Circle()
                            Circle()
                            Circle()
                            Circle()
                        }
                    }
                )
//            Image("1")
//                .resizable()
//                .edgesIgnoringSafeArea(.all)
//                .aspectRatio(contentMode: .fit)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
