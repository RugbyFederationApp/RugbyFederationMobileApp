//
//  NewsDetail.swift
//  Rugby Federation
//
//  Created by vladukha on 13.10.2020.
//  Copyright © 2020 Master. All rights reserved.
//

import SwiftUI

struct NewsDetail: View {
	var News: news
    var body: some View {
        ScrollView(){
			VStack(alignment: .leading) {
				Text(News.newstitle)
					.font(.system(size: 25, weight: .heavy, design: .default))
					.fixedSize(horizontal: false, vertical: true)
					.padding(.leading)
					
				News.image
				 .resizable()
				 .aspectRatio(contentMode: .fill)
					.padding(.horizontal)
			 
				Text(News.newstext)
				 .font(.body)
				 .fixedSize(horizontal: false, vertical: true)
					.padding()
		 }
		 .scaledToFit()
		 }
    }
}

struct NewsDetail_Previews: PreviewProvider {
    static var previews: some View {
		NewsDetail(News: NewsInfo[0])
    }
}
