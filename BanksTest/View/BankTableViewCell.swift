//
//  BankTableViewCell.swift
//  LoyaltyRewardz
//
//  Created by Akshita Aggarwal on 21/01/19.
//  Copyright © 2019 Akshita Aggarwal. All rights reserved.
//

import Foundation
import UIKit

class BankTableViewCell: UITableViewCell {
    @IBOutlet weak var bankLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization codes
        self.layoutIfNeeded()
    }
}
