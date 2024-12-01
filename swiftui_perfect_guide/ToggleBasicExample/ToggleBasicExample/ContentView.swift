//
//  ContentView.swift
//  ToggleBasicExample
//
//  Created by Chu Yu Min on 2022/11/20.
//

import SwiftUI

//Custom Toggle

struct CustomToggle: ToggleStyle {
    
    func makeBody(configuration: Configuration) -> some View { //configuration에서 toggle에 대한 고유한 설정을 가져와서 사용가능
        
        //Design
        RoundedRectangle(cornerRadius: 100)
            .foregroundColor(configuration.isOn ? .green : .black)
            .overlay(
                
                GeometryReader(content: { geometry in
                    ZStack {
                        Circle()
                            .foregroundColor(.white)
                            .frame(width: geometry.size.height)
                        Text(configuration.isOn ? "On" : "Off")
                            .foregroundColor(configuration.isOn ? .green : .black)
                    }
                    .offset(x:                     configuration.isOn ? geometry.frame(in: .local).minX : geometry.frame(in: .local).maxX - geometry.size.height)
                    .animation(.easeInOut(duration: 0.25))
                    .shadow(radius: 10)
                    
                }) //View를 구성하는 현재 x, y의 최소값 등을 구할 수 있음
            ) //View 위에 또다른 View를 올림 (원 모양 View)
            .clipShape(Capsule()) //원의 그림자가 바깥으로 나가지 않도록 자름
            .onTapGesture {
                configuration.isOn.toggle()
            }
            .shadow(radius: 5)
        
    }
}

struct ContentView: View {
    
    @State private var isOn = true
    
    var body: some View {
        
        Toggle("\(isOn.description)", isOn: $isOn)
            .toggleStyle(CustomToggle())
            .frame(width: 200, height: 50)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
