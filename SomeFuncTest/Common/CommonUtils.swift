//
//  CommonUtils.swift
//  SomeFuncTest
//
//  Created by TAnine on 2023/08/28.
//

import UIKit
import SunBase

class CommonUtils: NSObject {
    // ---- 싱글턴 패턴 사용을 위한 기초 설정 ---- //
    static let shared = CommonUtils()
    private override init() {}
    // --- --- --- --- --- --- --- --- --- //
    
// MARK: - 변수 선언부
    private let ud = UserDefaults.standard

// MARK: - UD 관련
    public func saveUDData(_ value: String, forKey: String) {
        self.ud.setValue("\(value)", forKey: "\(forKey)")
        self.ud.synchronize()
    }
    
    public func readUDData(forKey: String) -> String?{
        guard let data = self.ud.object(forKey: forKey) as? String else { return nil}
        return data
    }
    
// MARK: -
    
} // CLASS END

