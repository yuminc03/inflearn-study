//
//  ContentView.swift
//  ScrollViewReaderExample
//
//  Created by Chu Yu Min on 2022/11/24.
//

import SwiftUI

//ScrollViewReader

struct ContentView: View {
    
    @State private var proxy: ScrollViewProxy?
    
    var body: some View {
        
        VStack {
            Button("Scroll To") {
                withAnimation(.easeOut) {
                    proxy?.scrollTo(20, anchor: .top)
                }
            }
            
            ScrollView {
                
                ScrollViewReader(content: { proxy in
                    
                    ForEach(0 ..< 50) { index in
                        Text("\(index)")
                            .padding()
                    }
                    .onAppear(perform: {
                        self.proxy = proxy
                    }) //data가 set되고 나서 한 번만 호출됨
                })
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
