//
//  Posts.swift
//  FB-SwiftUI
//
//  Created by Aaryan Kothari on 08/03/20.
//  Copyright © 2020 Aaryan Kothari. All rights reserved.
//

import Foundation
import SwiftUI

struct Posts {
    let id : Int
    let username, text, imageName: String
}

struct TrendingPost: View {
   // let id: Int
    //let postImage, titleText, descriptionText: String
    
        var body: some View {
            VStack(alignment: .leading){
                Text("Trending")
                 HStack{
                    VStack(alignment:.leading){
                     Image("iphones")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        Text("Group1")
                            .lineLimit(nil)
                    }.frame(width:120,height: 170)
                 }
            }.frame(height:200)
    }
}
