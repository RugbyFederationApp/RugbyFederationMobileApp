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
	var id: Int //ID новости (а зачем? а не знаю)
	var newstitle: String //тайтл новости, отображается в фиде
	var newstext: String // содержание новости
	var imageurl: String

}


