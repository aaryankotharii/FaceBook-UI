//
//  ContentView.swift
//  FB-SwiftUI
//
//  Created by Aaryan Kothari on 08/03/20.
//  Copyright © 2020 Aaryan Kothari. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let postArray : [Posts] = [Posts.init(id: 0, username: "TimCook", text: "hey yo yo", imageName: "timCook")]
    var body: some View {
        NavigationView{
             List{
                ScrollView(Axis.Set.horizontal, showsIndicators: false) {
                        TrendingPost()
                }
                
                ForEach(postArray, id:\.id){post in
                    // Text($0)
                    PostView(post: post)
                 }
             }
         .navigationBarTitle("Groups")
         }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
