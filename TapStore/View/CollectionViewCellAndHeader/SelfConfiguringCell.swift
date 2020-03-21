//
//  SelfConfiguringCell.swift
//  TapStore
//
//  Created by Sumit Ghosh on 03/21/2020.
//  Copyright © 2020 Sumit Ghosh. All rights reserved.
//

import Foundation

protocol SelfConfiguringCell {
    static var reuseIdentifier: String { get }
    func configure(with app: App)
}
