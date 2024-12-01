//
//  ContentView.swift
//  EnvironmentObjectExample
//
//  Created by Chu Yu Min on 2022/11/27.
//

import SwiftUI

//enviormentObject - singleton 형태와 유사함
class MyInfo: ObservableObject {
    @Published var name = "" //@Published - 데이터가 갱신되면 화면 갱신 해야함
    @Published var photoURL = ""
    var token = ""
}

class MyLocation: ObservableObject {
    @Published var geo = ""
}

struct ContentView: View {
    
    @EnvironmentObject var myInfo: MyInfo
    @EnvironmentObject var myLoc: MyLocation
    
    var body: some View {
        NavigationView(content: {
            VStack {
                NavigationLink(destination: DetailView(), label: {
                    Text("Navigate")
                })
                
                Text("name: \(myInfo.name)")
                    .font(.largeTitle)
                    .padding()
                Text("url: \(myInfo.photoURL)")
                    .font(.largeTitle)
                    .padding()
            }
        }).onAppear {
            myInfo.name = "yumin"
            myInfo.photoURL = "https://naver.com"
        }
    }
}

struct DetailView: View {
    
    @EnvironmentObject var myInfo: MyInfo
    
    var body: some View {
        VStack {
            Text("name: \(myInfo.name)")
                .font(.largeTitle)
                .padding()
            Text("url: \(myInfo.photoURL)")
                .font(.largeTitle)
                .padding()
            Button("Change Name") {
                myInfo.name = "yumin chu"
                myInfo.photoURL = "https://github.com"
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(MyInfo()) //View가 생성될 때 만들어져야함
            .environmentObject(MyLocation())
    }
}
