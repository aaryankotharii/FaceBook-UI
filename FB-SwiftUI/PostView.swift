//
//  PostView.swift
//  FB-SwiftUI
//
//  Created by Aaryan Kothari on 08/03/20.
//  Copyright © 2020 Aaryan Kothari. All rights reserved.
//

import SwiftUI

struct PostView: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack {
                Image("timCook")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipped()
                    .frame(width: 70, height: 70, alignment: .leading)
                    .clipShape(Circle())
                VStack {
                    Text("UserName")
                        .font(.headline)
                    Text("8hours ago")
                }
            }.padding([.top, .leading],16)
        Text("Post body blahblahblahbalhablah")
        Image("iphones")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .scaleEffect(0.8)
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
    }
}
