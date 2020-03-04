//
//  SelfConfiguringCell.swift
//  TapStore
//
//  Created by Sumit Ghosh on 03/03/20.
//  Copyright © 2020 Hacking with Swift. All rights reserved.
//

import Foundation

protocol SelfConfiguringCell {
    static var reuseIdentifier: String { get }
    func configure(with app: App)
}
