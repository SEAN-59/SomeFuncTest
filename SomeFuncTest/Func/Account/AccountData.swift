//
//  AccountData.swift
//  SomeFuncTest
//
//  Created by TAnine on 2023/08/30.
//

import Foundation

// MARK: - STRUCT
struct SNSAccount {
    var snsId, snsToken, snsEmail: String
    
    init(snsId: String = "", snsToken: String = "", snsEmail: String = "") {
        self.snsId = snsId
        self.snsToken = snsToken
        self.snsEmail = snsEmail
    }
}

// MARK: - ENUM
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

enum LoginType {
    case apple
    case kakao
    case naver
    case google
}
enum LoginStatus {
    case connect
    case notConnect
}

// MARK: - CLASS
