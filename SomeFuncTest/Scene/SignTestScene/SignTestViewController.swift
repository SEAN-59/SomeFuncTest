//
//  SignTestViewController.swift
//  SomeFuncTest
//
//  Created by TAnine on 2023/08/28.
//

import UIKit
import SunBase


class SignTestViewController: SFT_VC{
    let appleManager = AppleSignManager()
    
    @IBOutlet weak var appleStateLbl: UILabel!
    @IBOutlet weak var kakaoStateLbl: UILabel!
    @IBOutlet weak var naverStateLbl: UILabel!
    @IBOutlet weak var googleStateLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.appleManager.delegate = self
        self.appleManager.useVC = self
    }
}

// MARK: - LoginSuccessDelegate func() Collection
extension SignTestViewController: LoginSuccessDelegate {}
extension SignTestViewController {
    func NotificationLoginStatus(type: LoginType, staus: LoginStatus) {
        switch staus {
        case .connect:
            switch type {
            case .apple:
                self.appleStateLbl.text = "ON"
            case .kakao:
                self.kakaoStateLbl.text = "ON"
            case .naver:
                self.naverStateLbl.text = "ON"
            case .google:
                self.googleStateLbl.text = "ON"
            }
        case .notConnect:
            switch type {
            case .apple:
                self.appleStateLbl.text = "OFF"
            case .kakao:
                self.kakaoStateLbl.text = "OFF"
            case .naver:
                self.naverStateLbl.text = "OFF"
            case .google:
                self.googleStateLbl.text = "OFF"
            }
        }
    }
}
// APPLE
extension SignTestViewController {}
// KAKAO
extension SignTestViewController {}
// NAVER
extension SignTestViewController {}
// GOOGLE
extension SignTestViewController {}

// MARK: - IBAction func() Collection
private extension SignTestViewController {
    @IBAction func tapAppleBtn(_ sender: SunButton) {
        let tag: AccountButtonType = AccountButtonType(rawValue: sender.tag) ?? .signIn
        switch tag {
        case .signIn:
            self.appleManager.tryAppleSingIn(self)
        case .signOut:
            self.appleManager.tryAppleSignOut()
        case .revoke:
            self.appleManager.tryRevoke()
        }
    }
    
    @IBAction func tapKakaoBtn(_ sender: SunButton) {
        let tag: AccountButtonType = AccountButtonType(rawValue: sender.tag) ?? .signIn
        switch tag {
        case .signIn:
            self.appleManager.tryAppleSingIn(self)
        case .signOut:
            self.appleManager.tryAppleSignOut()
        case .revoke:
            self.appleManager.tryRevoke()
        }
    }
    
    @IBAction func tapNaverBtn(_ sender: SunButton) {
        let tag: AccountButtonType = AccountButtonType(rawValue: sender.tag) ?? .signIn
        switch tag {
        case .signIn:
            self.appleManager.tryAppleSingIn(self)
        case .signOut:
            self.appleManager.tryAppleSignOut()
        case .revoke:
            self.appleManager.tryRevoke()
        }
    }
    
    @IBAction func tapGoogleBtn(_ sender: SunButton) {
        let tag: AccountButtonType = AccountButtonType(rawValue: sender.tag) ?? .signIn
        switch tag {
        case .signIn:
            self.appleManager.tryAppleSingIn(self)
        case .signOut:
            self.appleManager.tryAppleSignOut()
        case .revoke:
            self.appleManager.tryRevoke()
        }
    }
    
    @IBAction func tapBackBtn(_ sender: SunButton) {
        self.popVC(popAnimate: false)
    }
    
    
}
