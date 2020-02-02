//
//  NetworkService.swift
//  newsFeedCleanSwift
//
//  Created by Mykhailo Tsyba on 2/1/20.
//  Copyright © 2020 miketsyba. All rights reserved.
//

import Foundation
import UIKit
import Alamofire
import AlamofireObjectMapper
import ObjectMapper

protocol Networking: class {
	func makeRequest<T: Mappable>(scheme: String, host: String, path: String, parameters: [String: String], completion: @escaping (DataResponse<T>) -> Void)-> Void
}

class NetworkService: Networking {

	func makeRequest<T: Mappable>(scheme: String, host: String, path: String, parameters: [String: String], completion: @escaping (DataResponse<T>) -> Void) {
		guard let url = makeApiUrl(scheme: scheme, host: host, path: path, parameters: parameters) else { return }
		request(url, encoding: URLEncoding.default).responseObject { (response: DataResponse<T>) in
			DispatchQueue.main.async {
				completion(response)
			}
		}
	}

	private func makeApiUrl (scheme: String, host: String, path: String, parameters: [String: String]) -> URL? {
		var components = URLComponents()
		components.scheme = scheme
		components.host = host
		components.path = path
		components.queryItems = parameters.map { URLQueryItem(name: $0, value: $1) }
		return components.url
	}
}
