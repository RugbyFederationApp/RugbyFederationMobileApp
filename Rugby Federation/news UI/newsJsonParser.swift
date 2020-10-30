//
//  newsJsonParser.swift
//  Rugby Federation
//
//  Created by vladukha on 13.10.2020.
//  Copyright © 2020 Master. All rights reserved.
//

import UIKit
import SwiftUI
import CoreLocation

//в душе не ебу блять че тут происходит, весь класс был спизжен из example проекта от эпл
//тупо выпихивает все значения из джсона указанного в load
let NewsInfo: [news] = load("newsData.json") //пихает все значения из джсона в класс news

func load<T: Decodable>(_ filename: String) -> T {
	let data: Data
	
	guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
		else {
			fatalError("Couldn't find \(filename) in main bundle.")
	}
	
	do {
		data = try Data(contentsOf: file)
	} catch {
		fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
	}
	
	do {
		let decoder = JSONDecoder()
		return try decoder.decode(T.self, from: data)
	} catch {
		fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
	}
}
