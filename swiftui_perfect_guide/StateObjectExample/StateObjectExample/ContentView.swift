//
//  ContentView.swift
//  StateObjectExample
//
//  Created by Chu Yu Min on 2022/11/28.
//

import SwiftUI

//StateObject

class MyInfo: ObservableObject {
    @Published var myScore = 0
    
}
struct ContentView: View {
    
    @ObservedObject var myInfo = MyInfo()
    
    var body: some View {
        
        VStack {
            
            Text("\(myInfo.myScore)")
                .font(.largeTitle)
            
            Button("Plus") {
                myInfo.myScore += 1
            }
            
            //화면을 새로 그릴 때마다 score가 0으로 초기화
            //그 때 CustomButton()도 다시 그리기 때문에 CustomButton의 score가 0이 됨
            //View는 새로 그려도 갱신하는 View안의 데이터는 유지할 때 StateObject 사용
            CustomButton()
        }
    }
}

struct CustomButton: View {
    
    //ObservedObject는 CustomButton을 다시 그릴 때마다 갱신되지만 StateObject는 CustomButton을 다시 그릴 때 갱신되지 않는다
    @StateObject var myInfo2 = MyInfo()

    var body: some View {
        
        VStack {
            Text("\(myInfo2.myScore)")
                .font(.largeTitle)
            
            Button("Plus2") {
                myInfo2.myScore += 1
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
