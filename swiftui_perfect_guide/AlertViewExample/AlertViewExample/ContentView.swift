//
//  ContentView.swift
//  AlertViewExample
//
//  Created by Chu Yu Min on 2022/10/09.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowAlert: Bool = false
    @State private var selectText: String = "null"
    
    var body: some View {
        
        VStack {
            Spacer()
            Button("Show Alert") {
                isShowAlert.toggle()
            }
            .alert(isPresented: $isShowAlert) {
                
                let primaryButton = Alert.Button.default(Text("done"), action: {
                    selectText = "done"
                })
                let secondaryButton = Alert.Button.default(Text("cancel"), action: {
                    selectText = "cancel"
                })
                
                return Alert(title: Text("show alert"), primaryButton: primaryButton, secondaryButton: secondaryButton)
            }
            
            Spacer()
            Text("\(isShowAlert.description)")
            Spacer()
            Text("\(selectText)")
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
