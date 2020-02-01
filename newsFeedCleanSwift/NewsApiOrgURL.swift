//
//  NewsApiOrgURL.swift
//  newsFeedCleanSwift
//
//  Created by Mykhailo Tsyba on 2/1/20.
//  Copyright © 2020 miketsyba. All rights reserved.
//

import Foundation

struct NewsApiOrgURL {
	static let scheme = "https"
	static let host = "newsapi.org"
	static var path = Endpoint.everything
	static let apiKey = "fbd6fda585054e02b88a99eb96d5f676"
	static var queryPapameters: [String: String] {
		return ["q": EverythingParameters.keyword,
				"from": EverythingParameters.from,
				"to": EverythingParameters.to,
				"sortBy": ""]
	}

	struct Endpoint {
		static let headlines = "/v2/top-headlines"
		static let everything = "/v2/everything"
		static let sources = "/v2/sources"
	}

	struct EverythingParameters {
		static var keyword = ""
		static var from = ""
		static var to = ""

		struct SortBy {
			static let relevancy = "relevancy"
			static let popularity = "popularity"
			static let publishedAt = "publishedAt"
		}
	}
}
