//
//  Item.swift
//  GridViewTest
//
//  Created by Chu Yu Min on 2022/11/29.
//

import Foundation

//MARK: 사진 item의 정보
struct Item: Identifiable {
    let id = UUID()
    let mainTitle: String
    let subTitle: String
    let imageName: String
    
    static var dummyData: [Item] {
        
//        var temp = [Item]()
//
//        for index in 0 ... 30 {
//            temp.append(Item(mainTitle: "Main Title Index\(index)", subTitle: "Sub Title Index\(index)", imageName: "freeBG\((index % 3) + 1)"))
//        }
//        return temp
        
        (0 ... 30).map { index in
            Item(mainTitle: "Main Title Index\(index)", subTitle: "Sub Title Index\(index)", imageName: "freeBG\((index % 3) + 1)")
        }
        
    }
}
