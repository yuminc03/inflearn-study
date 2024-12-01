//
//  ContentView.swift
//  GridViewTest
//
//  Created by Chu Yu Min on 2022/11/29.
//

import SwiftUI

enum GridType: CaseIterable { //CaseIterable : 배열로 사용할 수 있게 함
    case single
    case double
    case triple
    case adaptive
    
    var columns: [GridItem] {
        switch self {
        case .single:
            return [GridItem(.flexible())]
        case .double:
            return [GridItem(.flexible()),
                    GridItem(.flexible())]
        case .triple:
            return [GridItem(.flexible()),
                    GridItem(.flexible()),
                    GridItem(.flexible())]
        case .adaptive:
            return [GridItem(.adaptive(minimum: 60))]
        }
    }
}

struct ContentView: View {
    
    var items = Item.dummyData
    @State private var selectedGridType: GridType = .single
    
    var body: some View {
        
        VStack {
            GridTypePicker(gridType: $selectedGridType)
            
            ImageItemsView(items: items, gridType: $selectedGridType)
        }
    }
}

//SegmentedPicker View
struct GridTypePicker: View {

    @Binding var gridType: GridType
    
    var body: some View {
        
        Picker("Grid Type", selection: $gridType, content: {
            ForEach(GridType.allCases, id: \.self) { type in
                switch type {
                case .single:
                    Image(systemName: "rectangle.grid.1x2")
                case .double:
                    Image(systemName: "square.grid.2x2")
                case .triple:
                    Image(systemName: "square.grid.3x2")
                case .adaptive:
                    Image(systemName: "square.grid.4x3.fill")
                }
            }
        })
        .pickerStyle(SegmentedPickerStyle()) //style 바꿈
        
    }
}

//Images View
struct ImageItemsView: View {
    
    var items: [Item]
    @Binding var gridType: GridType
    
    var body: some View {
        
        ScrollView {
            LazyVGrid(columns: gridType.columns, content: {
                ForEach(items) { item in
                    
                    switch gridType {
                    case .single, .double:
                        SingleRow(item: item)
                        
                    default:
                        Image(item.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
            })
            .animation(.default)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
