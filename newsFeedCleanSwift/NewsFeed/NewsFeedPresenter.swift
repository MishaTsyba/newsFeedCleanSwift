//
//  NewsFeedPresenter.swift
//  newsFeedCleanSwift
//
//  Created by Mykhailo Tsyba on 2/2/20.
//  Copyright (c) 2020 miketsyba. All rights reserved.
//

import UIKit

protocol NewsFeedPresentationLogic {
  func presentData(response: NewsFeed.Model.Response.ResponseType)
}

class NewsFeedPresenter: NewsFeedPresentationLogic {
  weak var viewController: NewsFeedDisplayLogic?
  
  func presentData(response: NewsFeed.Model.Response.ResponseType) {
  
  }
  
}
