//
//  NewsRow.swift
//  Rugby Federation
//
//  Created by vladukha on 13.10.2020.
//  Copyright © 2020 Master. All rights reserved.
//

import SwiftUI

struct NewsRow: View {
	
	var News: news
	
    var body: some View {
		VStack {
			Text(News.newstitle)
				.font(.system(size: 20, weight: .heavy, design: .default))
				.fixedSize(horizontal: false, vertical: true)
			News.image
				.resizable()
				.scaledToFit()
				.padding(.horizontal)
				//.aspectRatio(contentMode: .fit)
				//.padding(.leading)
				//.offset(x: 0, y: -20)
			Image("newsend")
				//.frame(height: 20)
				.cornerRadius(40.0)
				//.offset(x: 0, y: -40)
		}
    }
}

struct NewsRow_Previews: PreviewProvider {
    static var previews: some View {
        NewsRow(News: NewsInfo[0])
    }
}
