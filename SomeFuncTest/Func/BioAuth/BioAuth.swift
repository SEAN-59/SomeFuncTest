//
//  BioAuth.swift
//  SomeFuncTest
//
//  Created by TAnine on 2023/09/01.
//

import LocalAuthentication

class BioAuth {
    
    private var context = LAContext()
    
    init() {
        self.configure()
    }
    
    private func configure() {
        self.context.localizedCancelTitle = "비밀번호를 사용한 인증"
    }
    
    
    
}
