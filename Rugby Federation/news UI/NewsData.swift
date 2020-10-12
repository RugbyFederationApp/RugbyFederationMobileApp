//
//  NewsData.swift
//  Rugby Federation
//
//  Created by vladukha on 13.10.2020.
//  Copyright © 2020 Master. All rights reserved.
//

import Foundation
import SwiftUI
import CoreLocation

struct news: Hashable, Codable, Identifiable {
	var id: Int
	var newstitle: String
	fileprivate var imageName: String
	var newstext: String
	

}

extension news {
	var image: Image {
		ImageStore.shared.image(name: imageName)
	}
}
