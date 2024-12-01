//
//  ContentView.swift
//  BindingExample
//
//  Created by Chu Yu Min on 2022/11/24.
//

import SwiftUI

//Binding
//$myBool: 같은 데이터를 받아오기 위해 사용

struct ContentView: View {
    
    @State private var myBool = false
    
    var body: some View {
        
        NavigationView(content: {
            VStack {
                
                NavigationLink(destination: DetailView(mainToggleValue: $myBool)) {
                    Text("Navigate")
                }
                Toggle(myBool.description, isOn: $myBool)
            }
        })
    }
}

struct DetailView: View {
    
    @Binding var mainToggleValue: Bool
    
    var body: some View {
        Toggle("detail toggle", isOn: $mainToggleValue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
