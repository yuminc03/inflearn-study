//
//  ContentView.swift
//  ObeserveObjectExample
//
//  Created by Chu Yu Min on 2022/11/24.
//

import SwiftUI

//ObservableObject

class MyInfo: ObservableObject {
    //@Published - 계속 추적하고 감시한다(변경되면 갱신됨)
    @Published var myAge = 20
    var myName = "yumin" {
        didSet {
            if oldValue.count == 3 { //값이 변경되었을 때 이전의 값의 길이가 0이면
                objectWillChange.send() //화면이 바뀌었다는 것을 알려주기
            }
        }
    }
}

struct ContentView: View {
    
    //@ObservedObject - 값이 생성되어 있는 상태(계속 관측하는 상태)를 가져옴
    @ObservedObject var myInfo = MyInfo()
    
    var body: some View {
        VStack {
            Text(myInfo.myName)
            .padding()
            Button("change name") {
                myInfo.myName = "chu"
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
