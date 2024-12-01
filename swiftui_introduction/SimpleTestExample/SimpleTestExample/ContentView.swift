//
//  ContentView.swift
//  SimpleTestExample
//
//  Created by Chu Yu Min on 2022/08/28.
//

import SwiftUI

struct ContentView: View {
    
    @State var strength: Double? = 0
    @State var isLighting: Bool = false
    
    var body: some View {
        ZStack {
            Color(.magenta)
                .edgesIgnoringSafeArea(.all)
            
            
            VStack {
                
                Spacer()
                
                Image(systemName: isLighting ? "heart" : "heart.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200)
                
                Spacer()
                
                HStack {
                    Text("하트를 원하시면")
                    
                    Button {
                        
                        isLighting.toggle()
                        
                    } label: {
                        Text("사랑해!")
                            .padding()
                            .background(.white)
                            .cornerRadius(20)
                        
                    }

                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
