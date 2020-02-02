//
//  ViewController.swift
//  newsFeedCleanSwift
//
//  Created by Mykhailo Tsyba on 2/1/20.
//  Copyright © 2020 miketsyba. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//	var networkService: Networking = NetworkService()
	private var dataFetcher: DataFetcher = NetworkDataFetcher(networking: NetworkService())

	override func viewDidLoad() {
		super.viewDidLoad()

		dataFetcher.getEverythingNews(completion: { (response) in
			if let news = response.result.value {
				debugPrint("Everything: \(news.articles?.first?.description)" ?? "")
			}
		})

		dataFetcher.getSourcesNews(completion: { (response) in
			if let news = response.result.value {
				debugPrint("Sources: \(news.sources?.first?.description)" ?? "")
			}
		})
	}
}

