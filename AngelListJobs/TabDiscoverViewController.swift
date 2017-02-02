//
//  TabDiscoverViewController.swift
//  AngelListJobs
//
//  Created by Yinan Qiu on 12/26/16.
//  Copyright © 2016 YinanQiu. All rights reserved.
//

import UIKit

class TabDiscoverViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let test = "git change test"
    let test2 = "test2"
    
    @IBOutlet weak var tabBar: UITabBarItem!
    
    @IBOutlet weak var headerView: UIView!
    
    @IBOutlet weak var statusBarBgView: UIView!
    
    @IBOutlet weak var filterHeaderView: UIView!
    @IBOutlet weak var startupNumberLabel: UILabel!
    @IBOutlet weak var startupNumberLabelTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var startupsLabel: UILabel!
    @IBOutlet weak var startupsLabelLeadingContraint: NSLayoutConstraint!
    @IBOutlet weak var startupsLabelBaselineConstraint: NSLayoutConstraint!
    @IBOutlet weak var filterDropdownBtn: UIButton!
    
    @IBOutlet weak var filterView: UIView!
    @IBOutlet weak var filterViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var filterViewBottomConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    @IBOutlet weak var tableView: UITableView!
    
    var filterOpen = false
    
    var smallFontSize: CGFloat!
    let bigFontSize: CGFloat = 85

    let textLayer = CATextLayer()
    let textLayerView = UIView()
    var textLayerViewLeading: NSLayoutConstraint!
    var textLayerViewTop: NSLayoutConstraint!
    var textLayerViewWidth: NSLayoutConstraint!
    var textLayerViewHeight: NSLayoutConstraint!
    var startupsLabelLeading: NSLayoutConstraint!
    var startupsLabelTop: NSLayoutConstraint!
    var startupsLabelTopConstantWhenSmall: CGFloat!
    let startupsLabelTopConstantWhenBig: CGFloat = 76
    var smallWidth: CGFloat!
    var bigWidth: CGFloat!
    var smallHeight: CGFloat!
    var bigHeight: CGFloat!
    
    let animationDuration: TimeInterval = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.selectedImage = #imageLiteral(resourceName: "tabDiscoverSelected")
        tableView.dataSource = self
        tableView.delegate = self
        startupNumberLabel.text = "155"
        startupNumberLabel.layoutIfNeeded()
        setupCATextLayerForFontSizeAnimation()
    }

    @IBAction func didTapFilterDropdownBtn(_ sender: Any) {
        filterOpen = !filterOpen
        if filterOpen {
            animateFilterOpening()
        } else {
            animateFilterClosing()
        }
    }
        
    // set up table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return startups.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StartupCell")! as! StartupTableViewCell
        cell.startupLogoImageView.image = startups[indexPath.row].logo
        cell.startupNameLabel.text = startups[indexPath.row].name
        cell.startupTaglineTextView.text = startups[indexPath.row].tagline
        return cell
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
