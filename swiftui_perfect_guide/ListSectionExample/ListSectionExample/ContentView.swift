//
//  ContentView.swift
//  ListSectionExample
//
//  Created by Chu Yu Min on 2022/09/24.
//

import SwiftUI

//List Section

//Section
//row
//row
//row

//1. 기본구조
//2. data 가공

//model
struct Animal: Identifiable {
    let id = UUID()
    let name: String
    let index: Int
}
struct ContentView: View {
    
    var animalList = [
        Animal(name: "dog", index: 3),
        Animal(name: "cat", index: 2),
        Animal(name: "bird", index: 1),
        Animal(name: "dog", index: 6),
        Animal(name: "cat", index: 9),
        Animal(name: "horse", index: 5),
        Animal(name: "bare", index: 4),
        Animal(name: "dog", index: 7),
        Animal(name: "cat", index: 8)
    ]
    
    //dog: [Animal, Animal, Animal]
    var animalGrouped: [String : [Animal]] {
        //data index 순서 정렬
        var groupData = Dictionary(grouping: animalList) { $0.name }
        for (key, value) in groupData {
            groupData[key] = value.sorted(by: {
                $0.index < $1.index
            })
        }
        
        return groupData
    }
    
    var groupKey: [String] {
        animalGrouped.map { $0.key }
    }
    
    var body: some View {
        
        List {
            ForEach(groupKey, id: \.self) { animalKey in
                Section(header: Text("\(animalKey)"), content: {
                    ForEach(animalGrouped[animalKey]!) { animal in
                        HStack {
                            Text("\(animal.name)")
                            Text("\(animal.index)")
                        }
                    }
                })
            }
        }
//        List {
//
//            ForEach(animalList) { animal in
//                HStack {
//                    Text("\(animal.name)")
//                    Text("\(animal.index)")
//                }
//            }
//        }
        
//        List {
//            Section(header: Image(systemName: "trash")) {
//                Text("A")
//                Text("A")
//                Text("A")
//            }
//            Section(header: Image(systemName: "trash")) {
//                Text("B")
//                Text("B")
//                Text("B")
//            }
//            Section(header: Text("header"), footer: Text("footer")) {
//                Text("A")
//                Text("A")
//                Text("A")
//            }
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
