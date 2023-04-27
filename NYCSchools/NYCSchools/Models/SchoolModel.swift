//
//  SchoolModel.swift
//  NYCSchools
//
//  Created by Ramar Parham on 12/26/19.
//  Copyright © 2019 Ramar Parham. All rights reserved.
//

import Foundation

class SchoolModel {
    var name: String = ""
    var address: String = ""
    
    init(name:String, address: String) {
        self.name = name
        self.address = address
    }
}
