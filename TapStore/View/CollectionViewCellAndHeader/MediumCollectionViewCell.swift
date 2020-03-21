//
//  MediumCollectionViewCell.swift
//  TapStore
//
//  Created by Sumit Ghosh on 03/21/2020.
//  Copyright © 2020 Sumit Ghosh. All rights reserved.
//

import UIKit

class MediumCollectionViewCell: UICollectionViewCell, SelfConfiguringCell {
    static var reuseIdentifier: String = "MediumCell"
    
    
    let title = UILabel()
    let subtitle = UILabel()
    let imageView = UIImageView()
    let buyButton = UIButton(type: .custom)
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        title.font = UIFont.preferredFont(forTextStyle: .headline)
        title.textColor = .label
        
        subtitle.font = UIFont.preferredFont(forTextStyle: .subheadline)
        title.textColor = .secondaryLabel
        
        imageView.layer.cornerRadius = 15
        imageView.clipsToBounds = true
        
        buyButton.setImage(UIImage(systemName: "icloud.and.arrow.down"), for: .normal)
        
        
        imageView.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        buyButton.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        
        let innerStackView = UIStackView(arrangedSubviews: [title, subtitle])
        innerStackView.axis = .vertical
        
        let outerStackView = UIStackView(arrangedSubviews: [imageView, innerStackView, buyButton])
        outerStackView.translatesAutoresizingMaskIntoConstraints = false
        outerStackView.alignment = .center
        outerStackView.spacing = 10
        contentView.addSubview(outerStackView)
        
        NSLayoutConstraint.activate([
            outerStackView.topAnchor.constraint(equalTo: contentView.topAnchor),
            outerStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            outerStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with app: App) {
        title.text = app.name
        subtitle.text = app.subheading
        imageView.image = UIImage(named: app.image)
    }
}
