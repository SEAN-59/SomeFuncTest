//
//  BioAuthManager.swift
//  SomeFuncTest
//
//  Created by TAnine on 2023/09/01.
//

import LocalAuthentication

//enum 

class BioAuthManager {
    
    private var context = LAContext()
    
    init() {
        self.configure()
    }
    
    private func configure() {
        self.context.localizedCancelTitle = "비밀번호를 사용한 인증"
    }
    
    public func tryBioAuth() {
        if #available(iOS 11.0, *) { // 11이상에서만 사용가능
//            letx
        }
    }
    
    
    
}
