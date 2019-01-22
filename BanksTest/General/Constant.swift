//
//  Constant.swift
//  BanksTest
//
//  Created by Akshita Aggarwal on 22/01/19.
//  Copyright © 2019 Akshita Aggarwal. All rights reserved.
//

import Foundation
import UIKit


enum Targets:String{
    case HDFC = "HDFC",
    SBI = "SBI",
    OBC = "OBC",
    PNB = "PNB",
    None = ""
}

// Screen width.
public var screenWidth: CGFloat {
    return UIScreen.main.bounds.width
}

// Screen height.
public var screenHeight: CGFloat {
    return UIScreen.main.bounds.height
}
