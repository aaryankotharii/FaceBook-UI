//
//  PostView.swift
//  FB-SwiftUI
//
//  Created by Aaryan Kothari on 08/03/20.
//  Copyright © 2020 Aaryan Kothari. All rights reserved.
//

import SwiftUI

struct PostView: View {
    let post: Posts
    var body: some View {
        VStack(alignment: .leading, spacing:16 ){
            HStack {
                Image(post.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipped()
                    .frame(width: 70, height: 70, alignment: .leading)
                    .clipShape(Circle())
                VStack(alignment: .leading) {
                    Text(post.username)
                        .font(.headline)
                    Text("8hours ago")
                        .font(.subheadline)
                }.padding(.leading, 8)
            }.padding([.top, .leading],16)
            Text(post.text)
            .lineLimit(nil)
            .padding(.leading, 16)
            .padding(.trailing, 32)
        Image("iphones")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .scaleEffect(0.8)
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(post: Posts(id: 2, username: "abcd", text: "hey yo", imageName: "timCook"))
    }
}
