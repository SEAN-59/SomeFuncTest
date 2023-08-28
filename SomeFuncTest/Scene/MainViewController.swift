//
//  MainViewController.swift
//  SomeFuncTest
//
//  Created by TAnine on 2023/08/28.
//

import UIKit
import SunBase

class MainViewController: SFT_VC {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapSignPageBtn(_ sender: SunButton) {
        self.popAndPushVC(nextVC: SignTestViewController(),
                          popAnimate: false,
                          pushAnimate: false)
    }
    

}
