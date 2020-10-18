//
//  ChildHostController.swift
//  Rugby Federation
//
//  Created by vladukha on 14.10.2020.
//  Copyright © 2020 Master. All rights reserved.
//

import Foundation
import SwiftUI
import URLImage

class ChildHostController: UIHostingController<NewsFeed> {
	required init?(coder: NSCoder) {
		
		super.init(coder: coder,rootView: NewsFeed());
	}

	override func viewDidLoad() {
		super.viewDidLoad()
	}
}
