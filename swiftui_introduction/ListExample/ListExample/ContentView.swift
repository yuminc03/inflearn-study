//
//  ContentView.swift
//  ListExample
//
//  Created by Chu Yu Min on 2022/08/21.
//

import SwiftUI

struct Person: Identifiable {
    var id = UUID()
    let name: String
    let imageName: String
}
struct ContentView: View {
    var body: some View {
        
//        let names: [String] = ["Leeo", "Dodo", "Olivia"]
//        List(names, id: \.self) { name in
//            Text(name)
//        }
        //동적인 List
        let people: [Person] = [Person(name: "Leeo", imageName: "heart"), Person(name: "Dodo", imageName: "heart.fill"), Person(name: "Olivia", imageName: "bolt")]
        
        List(people) { person in
            HStack {
                Image(systemName: person.imageName)
                Text(person.name)
            }
        }
//        List { //UIKit의 UITableView와 비슷한 역할을 함
//            HStack {
//                Image(systemName: "heart")
//                Text("Leeo")
//            }
//            HStack {
//                Image(systemName: "heart.fill")
//                Text("Dodo")
//            }
//            HStack {
//                Image(systemName: "bolt")
//                Text("Olivia")
//            }
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
