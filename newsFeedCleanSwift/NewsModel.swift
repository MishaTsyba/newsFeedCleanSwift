//
//  NewsModel.swift
//  newsFeedCleanSwift
//
//  Created by Mykhailo Tsyba on 2/1/20.
//  Copyright © 2020 miketsyba. All rights reserved.
//

import Foundation
import ObjectMapper

class NewsModel: Mappable {
    var status: String?
    var totalResults: Int?
    var articles: [NewsArticleModel]?

    required init?(map: Map) {
	}

	func mapping(map: Map) {
		status 				<- map["status"]
		totalResults 	<- map["totalResults"]
		articles 			<- map["articles"]
	}
}

class NewsArticleModel: Mappable {
    var source: NewsArticleSourceModel?
    var author: String?
    var title: String?
    var description: String?
    var url: String?
    var urlToImage: String?
    var publishedAt: String?
    var content: String?

	required init?(map: Map) {
	}

	func mapping(map: Map) {
		source 				<- map["source"]
		author 				<- map["author"]
		title 						<- map["title"]
		description 		<- map["description"]
		url 						<- map["url"]
		urlToImage 		<- map["urlToImage"]
		publishedAt 		<- map["publishedAt"]
		content 				<- map["content"]
	}
}

class NewsArticleSourceModel: Mappable {
    var id: String?
    var name: String?

	required init?(map: Map) {
	}

	func mapping(map: Map) {
		id 			<- map["id"]
		name 		<- map["inamed"]
	}
}
