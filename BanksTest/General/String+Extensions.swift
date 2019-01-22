//
//  String+Extensions.swift
//  BanksTest
//
//  Created by Akshita Aggarwal on 22/01/19.
//  Copyright © 2019 Akshita Aggarwal. All rights reserved.
//

import Foundation
import UIKit

extension String{
    func height(withConstrainedWidth width: CGFloat, font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: width, height: .greatestFiniteMagnitude)
        let boundingBox = self.boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, attributes: [.font : font], context: nil)

        return ceil(boundingBox.height)
    }
}
