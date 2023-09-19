//
//  BioAuthViewController.swift
//  SomeFuncTest
//
//  Created by TAnine on 2023/09/01.
//

/// ❗️필수 사항❗️
/// 생체 인증 추가를 위해서는 권한 인증을 설정해야함
/// Info.plist 에 [key: Privacy - Face ID Usage Description / value: 문구] 를 저장
/// Face ID  사용시에는 해당 문구에 접근 이유를 명확히 작성해야 함 Touch ID 는 별로..

import UIKit
import SunBase

class BioAuthViewController: SFT_VC {

    @IBOutlet weak var stateAuthLbl: UILabel!
    @IBOutlet weak var bioAuthBtn: SunButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.bioAuthBtn.layer.cornerRadius = 5
        self.bioAuthBtn.layer.borderWidth = 1
        self.bioAuthBtn.layer.borderColor = UIColor.systemBlue.cgColor
    }


    @IBAction func tapBioAuthBtn(_ sender: SunButton) {
        BioAuthManager().tryBioAuth()
    }
    
    
    @IBAction func tpaBackBtn(_ sender: SunButton) {
        self.popVC(popAnimate: false)
    }
}
