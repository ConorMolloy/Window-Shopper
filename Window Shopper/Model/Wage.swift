//
//  Wage.swift
//  Window Shopper
//
//  Created by Conor Molloy on 30/05/2018.
//  Copyright © 2018 Conor Molloy. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price/wage))
    }
}
