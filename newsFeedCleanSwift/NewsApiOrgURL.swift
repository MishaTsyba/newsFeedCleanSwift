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


	struct ParameterValues {
		static let apiKey = "fbd6fda585054e02b88a99eb96d5f676"
		static var keyword = "mike"
		static var from = "2020-01-31"
		static var to = ""

		struct SortBy {
			static let relevancy = "relevancy"
			static let popularity = "popularity"
			static let publishedAt = "publishedAt"
		}

		struct Category {
			static let business = "business"
			static let entertainment = "entertainment"
			static let general = "general"
			static let health = "health"
			static let science = "science"
			static let sports = "sports"
			static let technology = "technology"
		}

		struct Country {
			static let us = "us"
			static let ua = "ua"
			static let ca = "ca"
			static let au = "au"
			static let nz = "nz"
			static let pl = "pl"
			static let gb = "gb"
		}
	}
	
	static var pathEverything = Endpoint.everything
	static var queryParametersEverything: [String: String] {
		return [ParameterNames.apiKey: ParameterValues.apiKey,
				ParameterNames.keyword: ParameterValues.keyword,
				ParameterNames.from: ParameterValues.from,
				ParameterNames.to: ParameterValues.to,
				ParameterNames.sortBy: ParameterValues.SortBy.publishedAt]
	}

	static var pathSources = Endpoint.sources
	static var queryParametersSources: [String: String] {
		return [ParameterNames.apiKey: ParameterValues.apiKey,
				ParameterNames.country: ParameterValues.Country.gb]
	}

	struct Endpoint {
		static let headlines = "/v2/top-headlines"
		static let everything = "/v2/everything"
		static let sources = "/v2/sources"
	}

	struct ParameterNames {
		static let apiKey = "apiKey"
		static let keyword = "q"
		static let qInTitle = "qInTitle"
		static let from = "from"
		static let to = "to"
		static let sortBy = "sortBy"
		static let category = "category"
		static let country = "country"
	}
}
