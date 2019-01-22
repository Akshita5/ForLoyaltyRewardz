//
//  Configuration.swift
//  BanksTest
//
//  Created by Akshita Aggarwal on 22/01/19.
//  Copyright © 2019 Akshita Aggarwal. All rights reserved.
//

import Foundation
import UIKit

class Configuration {

    var configDict : NSDictionary!

    class var sharedInstance: Configuration {
        struct Static {
            static var instance: Configuration = Configuration()
        }
        return Static.instance
    }


    var targetName:String{
        let targetName = Bundle.main.object(forInfoDictionaryKey: "CFBundleName") as? String ?? ""

        return targetName
    }

    var endpoint: String{
        get {
            let endpointURL = Bundle.main.object(forInfoDictionaryKey: "ENDPOINT_URL") as? String ?? ""
            return endpointURL
        }
    }

}
