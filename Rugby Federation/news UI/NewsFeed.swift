//
//  NewsFeed.swift
//  Rugby Federation
//
//  Created by vladukha on 11.10.2020.
//  Copyright © 2020 Master. All rights reserved.
//

import SwiftUI

struct NewsFeed: View {
    var body: some View {
		NavigationView {
			List(NewsInfo) { newsID in
				NavigationLink(destination: NewsDetail(News: newsID)) {
					NewsRow(News: newsID)
				}
			}
			.navigationBarTitle("")
			.navigationBarHidden(true)
		}
    }
}

struct NewsFeed_Previews: PreviewProvider {
    static var previews: some View {
        NewsFeed()
    }
}
