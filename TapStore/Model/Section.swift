//
//  Section.swift
//  TapStore
//
//  Created by Sumit Ghosh on 03/21/2020.
//  Copyright © 2020 Sumit Ghosh. All rights reserved.
//

import Foundation

struct Section: Decodable, Hashable {
    let id: Int
    let type: String
    let title: String
    let subtitle: String
    let items: [App]
}
