//
//  StartupTableViewCell.swift
//  AngelListJobs
//
//  Created by Yinan Qiu on 1/1/17.
//  Copyright © 2017 YinanQiu. All rights reserved.
//

import UIKit

class StartupTableViewCell: UITableViewCell {

    @IBOutlet weak var startupLogoImageView: UIImageView!
    @IBOutlet weak var startupNameLabel: UILabel!
    @IBOutlet weak var startupTaglineTextView: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        startupLogoImageView.layer.cornerRadius = 5
        startupTaglineTextView.textContainerInset = UIEdgeInsets.zero
        startupTaglineTextView.textContainer.lineFragmentPadding = 0
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
}
