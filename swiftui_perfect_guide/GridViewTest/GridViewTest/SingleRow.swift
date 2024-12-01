//
//  SingleRow.swift
//  GridViewTest
//
//  Created by Chu Yu Min on 2022/11/29.
//

import Foundation
import SwiftUI

//MARK: 1 x 2 item에 들어갈 Label View
struct SingleRow: View {
    
//    let mainTitle: String
//    let subtitle: String
//    let imageName: String
    
    let item: Item
    
    var body: some View {
        
        ZStack {
            Image(item.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            VStack {
                Spacer()
                HStack {
                    VStack(alignment: .leading) {
                        Text(item.mainTitle)
                            .font(.headline)
                            .lineLimit(1)
                        Text(item.subTitle)
                            .font(.subheadline)
                            .lineLimit(1)
                    }
                    Spacer()
                }
                .padding(10)
                .background(Color.white.opacity(0.5))

            }
        }
    }
}

struct SingleRow_Previews: PreviewProvider {
    static var previews: some View {
        SingleRow(item: Item(mainTitle: "main", subTitle: "sub", imageName: "freeBG1"))
            .previewLayout(.fixed(width: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/))
    }
}
