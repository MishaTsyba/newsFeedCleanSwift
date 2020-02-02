//
//  NewsSourcesModel.swift
//  newsFeedCleanSwift
//
//  Created by Mykhailo Tsyba on 2/2/20.
//  Copyright © 2020 miketsyba. All rights reserved.
//

import Foundation
import ObjectMapper

class NewsSourcesModel: Mappable {
    var status: String?
    var sources: [NewsSourceModel]?

    required init?(map: Map) {
	}

	func mapping(map: Map) {
		status 				<- map["status"]
		sources 			<- map["sources"]
	}
}

class NewsSourceModel: Mappable {
    var id: String?
    var name: String?
    var description: String?
    var url: String?
    var category: String?
    var language: String?
    var country: String?

	required init?(map: Map) {
	}

	func mapping(map: Map) {
		id 					<- map["id"]
		name 				<- map["name"]
		description 	<- map["description"]
		url 					<- map["url"]
		category 		<- map["category"]
		language 		<- map["language"]
		country 			<- map["country"]
	}
}
