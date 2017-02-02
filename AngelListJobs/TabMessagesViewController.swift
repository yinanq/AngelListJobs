//
//  TabMessagesViewController.swift
//  AngelListJobs
//
//  Created by Yinan Qiu on 12/27/16.
//  Copyright © 2016 YinanQiu. All rights reserved.
//

import UIKit

class TabMessagesViewController: UIViewController {

    @IBOutlet weak var tabBar: UITabBarItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.selectedImage = #imageLiteral(resourceName: "tabMessagesSelected")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
