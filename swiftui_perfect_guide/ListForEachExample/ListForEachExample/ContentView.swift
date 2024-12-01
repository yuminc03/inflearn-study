//
//  ContentView.swift
//  ListForEachExample
//
//  Created by Chu Yu Min on 2022/09/18.
//

import SwiftUI

//List (TableView)

//Model
struct LocationInfo: Hashable, Identifiable {
    var id = UUID()
    var city = ""
    var weather = ""
}

struct ContentView: View {
    
    @State private var locations = [
        LocationInfo(city: "Seoul", weather: "sunny"),
        LocationInfo(city: "Busan", weather: "cloudy"),
        LocationInfo(city: "LA", weather: "rainy")
    ]
    
    var body: some View {
        
        List {
            
            ForEach(locations, id: \.self) { location in
                HStack{
                    Text("\(location.city)")
                    Text("\(location.weather)")
                }
            }// \.self - model을 고유한 값으로 사용하겠다
            
            ForEach(locations) { location in
                HStack{
                    Text("\(location.city)")
                    Text("\(location.weather)")
                }
            }
            
            ForEach(0 ..< locations.count) { index in
                HStack {
                    Text("\(index + 1)")
                    Text("\(locations[index].city)")
                    Text("\(locations[index].weather)")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
