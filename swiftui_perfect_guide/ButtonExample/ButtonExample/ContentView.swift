//
//  ContentView.swift
//  ButtonExample
//
//  Created by Chu Yu Min on 2022/09/11.
//

import SwiftUI

//Button
//State (Property wrapper)
//하나의 뷰 안에서 사용되는 값

struct ContentView: View {
    
    @State private var didSelected = false
    
    var buttonImage: String {
        if didSelected {
            return "circle"
        }
        else {
            return "pencil"
        }
    }
    
    var body: some View {
        
        VStack {
            
            Text("Current State: \(didSelected.description)") //State 변수는 자동으로 갱신
            
            Button {
                didSelected.toggle()
            } label: {
                HStack {
                    Image(systemName: buttonImage)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    VStack {
                        Text("Button \(didSelected.description)")
//                        Text("Button \(didSelected.description)")
                    }
                }
            }
            .frame(width: 200, height: 120)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
