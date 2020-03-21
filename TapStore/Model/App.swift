//
//  App.swift
//  TapStore
//
//  Created by Sumit Ghosh on 03/21/2020.
//  Copyright © 2020 Sumit Ghosh. All rights reserved.
//

import Foundation

struct App: Decodable, Hashable {
    let id: Int
    let tagline: String
    let name: String
    let subheading: String
    let image: String
    let iap: Bool
}
