//
//  MainVC_MenuTableCell.swift
//  SomeFuncTest
//
//  Created by TAnine on 2023/08/31.
//

import UIKit
import SunBase

class MainVC_MenuTableCell: UITableViewCell {
    
    let cellIdntifier = "MainVC_MenuTableCell"
    
    private var rootVC: SFT_VC?
    private var moveVC: SFT_VC?

    @IBOutlet weak var moveBtn: SunButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    public func setCell(_ rootVC: SFT_VC, moveVC: SFT_VC, title: String){
        self.rootVC = rootVC
        self.moveVC = moveVC
        self.moveBtn.setTitle(title, for: .normal)

    }
    
    @IBAction func tapCellButton(_ sender: SunButton) {
        if let rootVC = self.rootVC, let moveVC = self.moveVC {
            rootVC.popAndPushVC(nextVC: moveVC,
                              popAnimate: false,
                              pushAnimate: false)
        }
    }
    
}
