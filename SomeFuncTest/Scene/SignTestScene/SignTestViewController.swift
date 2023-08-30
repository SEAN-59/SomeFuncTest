//
//  SignTestViewController.swift
//  SomeFuncTest
//
//  Created by TAnine on 2023/08/28.
//

import UIKit
import SunBase

struct SNSAccount {
    var snsId, snsToken, snsEmail: String
    
    init(snsId: String = "", snsToken: String = "", snsEmail: String = "") {
        self.snsId = snsId
        self.snsToken = snsToken
        self.snsEmail = snsEmail
    }
}

enum AccountButtonType: Int {
    case signIn = 0
    case signOut
    case revoke
}

enum AccountError: Error {
    case signinError
    case signOutError
    case revokeError
}


class SignTestViewController: SFT_VC{
    let appleManager = AppleSignManager()
    
    @IBOutlet weak var appleState: UILabel!
    @IBOutlet weak var kakaoState: UILabel!
    @IBOutlet weak var naverState: UILabel!
    @IBOutlet weak var googleState: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.appleManager.delegate = self
    }
}

// MARK: - LoginSuccessDelegate func() Collection
extension SignTestViewController: LoginSuccessDelegate {}
extension SignTestViewController {
    
}

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
    
    
}
