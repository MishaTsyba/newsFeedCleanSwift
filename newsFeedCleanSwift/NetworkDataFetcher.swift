//
//  NetworkDataFetcher.swift
//  newsFeedCleanSwift
//
//  Created by Mykhailo Tsyba on 2/2/20.
//  Copyright © 2020 miketsyba. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireObjectMapper
import ObjectMapper

protocol DataFetcher {
	func getSourcesNews(completion: @escaping (DataResponse<NewsSourcesModel>) -> Void)
	func getEverythingNews(completion: @escaping (DataResponse<NewsModel>) -> Void)
}

class NetworkDataFetcher: DataFetcher {

	let networking: Networking

	init(networking: Networking) {
		self.networking = networking
	}

	func getSourcesNews(completion: @escaping (DataResponse<NewsSourcesModel>) -> Void) {
		networking.makeRequest(scheme: NewsApiOrgURL.scheme, host: NewsApiOrgURL.host, path: NewsApiOrgURL.pathSources, parameters: NewsApiOrgURL.queryParametersSources) { (response) in
			completion(response)
		}
	}

	func getEverythingNews(completion: @escaping (DataResponse<NewsModel>) -> Void) {
		networking.makeRequest(scheme: NewsApiOrgURL.scheme, host: NewsApiOrgURL.host, path: NewsApiOrgURL.pathEverything, parameters: NewsApiOrgURL.queryParametersEverything) { (response) in
			completion(response)
		}
	}
}
