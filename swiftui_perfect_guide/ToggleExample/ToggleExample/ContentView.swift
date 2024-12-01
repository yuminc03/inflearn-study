//
//  ContentView.swift
//  ToggleExample
//
//  Created by Chu Yu Min on 2022/09/18.
//

import SwiftUI

//Toggle (Switch)

struct ContentView: View {
    
    @State private var isOn = false
    
    var body: some View {
        
        VStack {
            MyToggle(isOn: $isOn) //MyToggle의 isOn이 @State isOn과 연결됨
            Text("\(isOn.description)")
        }
    }
}

struct MyToggle: View {
    
    @Binding var isOn: Bool //타입만 가질 수 있음(원본값(@State isOn)과 연결됨
    
    var body: some View {
        Toggle("toggle \(isOn.description)", isOn: $isOn)//$ - isOn이 변경할 때 원래 값이 연결되어 원래 값도 같이 변경된다
        Toggle(isOn: $isOn, label: {
            HStack {
                Spacer()
                VStack {
                    Text("Label1")
                    Text("Label2")
                }
            }
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
