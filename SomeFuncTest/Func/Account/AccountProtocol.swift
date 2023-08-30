//
//  AccountProtocol.swift
//  SomeFuncTest
//
//  Created by TAnine on 2023/08/29.
//

import Foundation

protocol LoginSuccessDelegate: AnyObject {
    func appleSignInSuccess()
    func appleSignOutSuccess()
    func appleRevokeSuccess()
    
    func naverSignInSuccess()
    func naverSignOutSuccess()
    func naverRevokeSuccess()
    
    func kakaoSignInSuccess()
    func kakaoSignOutSuccess()
    func kakaoRevokeSuccess()
    
    func googleSignInSuccess()
    func googleSignOutSuccess()
    func googleRevokeSuccess()
    
    func NotificationLoginStatus(type: LoginType,staus: LoginStatus)
}
extension LoginSuccessDelegate {
    func appleSignInSuccess() {}
    func appleSignOutSuccess() {}
    func appleRevokeSuccess() {}
    
    func naverSignInSuccess() {}
    func naverSignOutSuccess() {}
    func naverRevokeSuccess() {}
    
    func kakaoSignInSuccess() {}
    func kakaoSignOutSuccess() {}
    func kakaoRevokeSuccess() {}
    
    func googleSignInSuccess() {}
    func googleSignOutSuccess() {}
    func googleRevokeSuccess() {}
}
