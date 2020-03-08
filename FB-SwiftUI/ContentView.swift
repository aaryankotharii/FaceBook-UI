//
//  ContentView.swift
//  FB-SwiftUI
//
//  Created by Aaryan Kothari on 08/03/20.
//  Copyright © 2020 Aaryan Kothari. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let posts = ["1","2","3"]
    var body: some View {
        NavigationView{
             List{
                ScrollView(Axis.Set.horizontal, showsIndicators: false) {
                    VStack(alignment: .leading){
                        Text("Trending")
                         HStack{
                             Text("Group1")
                             Text("Group1")
                             Text("Group1")
                             Text("Group1")
                             Text("Group1")
                             Text("Group1")
                             Text("Group1")
                             Text("Group1")
                         }
                    }
                }
                
                 ForEach(posts, id:\.self){i in
                    // Text($0)
                    PostView()
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
