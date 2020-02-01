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
	static let apiKey = "fbd6fda585054e02b88a99eb96d5f676"
	static var path = Endpoint.everything
	static var queryPapameters: [String: String] {
		return [ParameterNames.keyword: ParameterValues.keyword,
				ParameterNames.from: ParameterValues.from,
				ParameterNames.to: ParameterValues.to,
				ParameterNames.sortBy: ParameterValues.SortBy.publishedAt]
	}

	struct Endpoint {
		static let headlines = "/v2/top-headlines"
		static let everything = "/v2/everything"
		static let sources = "/v2/sources"
	}

	struct ParameterNames {
		static let keyword = "q"
		static let qInTitle = "qInTitle"
		static let from = "from"
		static let to = "to"
		static let sortBy = "sortBy"
	}

	struct ParameterValues {
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
