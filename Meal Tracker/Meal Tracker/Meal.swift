//
//  Meal.swift
//  Meal Tracker
//
//  Created by John Ly on 11/15/20.
//  Copyright © 2020 John Ly. All rights reserved.
//

import Foundation

struct Meal {
    let name: String
    let food: [Food]
}

struct Food {
    let name: String
    let description: String
}
