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
	fileprivate var imageName: String //названия новостной фотки (указывается стринг и newsJsonParser.swift преабразует в тип Image)
	var newstext: String // содержание новости
	var imageurl: String

}

extension news { // дополнение класса
	var image: Image { //новый объект Image
		ImageStore.shared.image(name: imageName) //ищет фотку по названию imageName в ресурсах и запихивает фотку типа Image в переменную image
	}
}
