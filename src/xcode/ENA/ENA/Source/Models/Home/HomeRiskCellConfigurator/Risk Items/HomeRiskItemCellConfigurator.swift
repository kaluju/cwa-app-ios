//
//  HomeRiskItemCellConfigurator.swift
//  ENA
//
//  Created by Tikhonov, Aleksandr on 14.05.20.
//  Copyright © 2020 SAP SE. All rights reserved.
//

import UIKit

final class HomeRiskItemCellConfigurator: TableViewCellConfigurator {
    
    var title: String
    var titleColor: UIColor?
    var iconImageName: String
    var color: UIColor?
    
    init(title: String, titleColor: UIColor?, iconImageName: String, color: UIColor?) {
        self.title = title
        self.titleColor = titleColor
        self.iconImageName = iconImageName
        self.color = color
    }
    
    func configure(cell: RiskItemTableViewCell) {
        let iconTintColor: UIColor = titleColor ?? .white
        cell.imageView?.image = UIImage(named: iconImageName)?.withTintColor(iconTintColor)
        cell.textLabel?.text = title
        cell.textLabel?.textColor = titleColor
        cell.backgroundColor = .orange //color
    }
}
