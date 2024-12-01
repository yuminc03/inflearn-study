//
//  ContentView.swift
//  TextEditorExample
//
//  Created by Chu Yu Min on 2022/11/24.
//

import SwiftUI

//TextView(UIKit)

struct ContentView: View {
    
    @State private var inputText = ""
    
    var body: some View {
        VStack {
            TextEditor(text: $inputText)
                .padding(20)
                .lineSpacing(16)
                .font(.title)
                .disableAutocorrection(true)//글자를 적었을 때 키보드 상단에 추천되는 글자 나오기 disable = true
                .onChange(of: inputText, perform: { value in
                    if inputText.count > 100 {
                        inputText.removeLast()
                    }
                })
            HStack {
                Spacer()
                Text("\(inputText.count)" + " / 100")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
