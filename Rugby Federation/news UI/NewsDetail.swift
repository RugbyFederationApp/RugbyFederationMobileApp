//
//  NewsDetail.swift
//  Rugby Federation
//
//  Created by vladukha on 13.10.2020.
//  Copyright © 2020 Master. All rights reserved.
//

import SwiftUI
import URLImage

struct NewsDetail: View {
	var News: news
	
    var body: some View {
		let url = URL(string: News.imageurl)
        ScrollView(){
			VStack(alignment: .leading) {
				Text(News.newstitle)
					.font(.system(size: 25, weight: .heavy, design: .default))
					.fixedSize(horizontal: false, vertical: true)
					.padding(.leading)
					
				//News.image
				URLImage(url!, placeholder: {
					ProgressView($0) { progress in
		 ZStack {
			 if progress > 0.0 {
				 // The download has started. CircleProgressView displays the progress.
				 CircleProgressView(progress).stroke(lineWidth: 8.0)
			 }
			 else {
				 // The download has not yet started. CircleActivityView is animated activity indicator that suits this case.
				 CircleActivityView().stroke(lineWidth: 50.0)
			 }
		 }
	 }
		 .frame(width: 50.0, height: 50.0)
 }){ proxy in
					proxy.image
						.resizable()
						.aspectRatio(contentMode: .fill)
						.padding(.horizontal)
				}
				 /*.resizable()
				 .aspectRatio(contentMode: .fill)
					.padding(.horizontal)*/
			 
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
