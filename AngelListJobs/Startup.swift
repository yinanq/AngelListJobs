//
//  Startups.swift
//  AngelListJobs
//
//  Created by Yinan Qiu on 1/26/17.
//  Copyright © 2017 YinanQiu. All rights reserved.
//

import UIKit

class Startup {
    var logo: UIImage?
    var name: String?
    var tagline: String?
    
    init(logo: UIImage, name: String, tagline: String) {
        self.logo = logo
        self.name = name
        self.tagline = tagline
    }
}
