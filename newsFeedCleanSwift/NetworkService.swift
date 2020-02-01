//
//  NetworkService.swift
//  newsFeedCleanSwift
//
//  Created by Mykhailo Tsyba on 2/1/20.
//  Copyright © 2020 miketsyba. All rights reserved.
//

import Foundation

class NetworkService {
	static func makeApiUrl (scheme: String, host: String, path: String, parameters: [String: String]) -> URL? {
		var components = URLComponents()
		components.scheme = scheme
		components.host = host
		components.path = path
		components.queryItems = parameters.map { URLQueryItem(name: $0, value: $1) }
		return components.url
	}
}
