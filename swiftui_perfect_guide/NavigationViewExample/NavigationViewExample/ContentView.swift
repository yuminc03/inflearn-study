//
//  ContentView.swift
//  NavigationViewExample
//
//  Created by Chu Yu Min on 2022/11/13.
//

import SwiftUI

//NavigationView
struct ContentView: View {
    
    init() {
//        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor.gray] //View를 생성할 때 title 설정을 변경
        let navigationAppearence = UINavigationBarAppearance()
        navigationAppearence.titleTextAttributes = [
            .foregroundColor : UIColor.systemBlue,
            .font : UIFont.systemFont(ofSize: 20, weight: .medium)
        ]
        
        navigationAppearence.largeTitleTextAttributes = [.foregroundColor : UIColor.blue]
        
        navigationAppearence.backgroundColor = .lightGray
        UINavigationBar.appearance().standardAppearance = navigationAppearence //Scroll을 올릴 때만 색깔이 바뀜
        UINavigationBar.appearance().scrollEdgeAppearance = navigationAppearence //Scroll을 올리지 않아도 적용
        UINavigationBar.appearance().compactAppearance = navigationAppearence //compact(가 완전히 사라젔을 때
        
        UINavigationBar.appearance().tintColor = .yellow
    }
    
    var body: some View {
        
        NavigationView {
            
            List {
                NavigationLink(
                    destination:
                        Text("Detail"),
                    label: {
                        HStack {
                            Image(systemName: "person")
                            Text("Navigate")
                        }
                })
            }

            .navigationBarTitle("Hello", displayMode: .large)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
