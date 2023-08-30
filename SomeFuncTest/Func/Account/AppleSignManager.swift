//
//  AppleSignManager.swift
//  SomeFuncTest
//
//  Created by TAnine on 2023/08/28.
//

import UIKit
import SunBase
import AuthenticationServices


class AppleSignManager: NSObject {
    
    weak var delegate: LoginSuccessDelegate?
    var useVC: SFT_VC?
    
    var mainView = UIView()
    
    func tryAppleSingIn(_ vc: SFT_VC) {
        self.mainView = vc.view
        let appleRequest = ASAuthorizationAppleIDProvider().createRequest()
        appleRequest.requestedScopes = [.email, .fullName]
        
        let authorizationController = ASAuthorizationController(authorizationRequests: [appleRequest])
        authorizationController.delegate = self
        authorizationController.presentationContextProvider = self
        authorizationController.performRequests()
    }
    
    func tryAppleSignOut() {
        
    }
    
    func tryRevoke() {
        let appleIDProvider = ASAuthorizationAppleIDProvider()
        if let appleId = CommonUtils.shared.readUDData(forKey: "appleID") {
            appleIDProvider.getCredentialState(forUserID: appleId) { credentialState, error in
                if let error = error {
                    print("Apple 연동해제 error: \(error)")
                }
                else {
                    switch credentialState {
                    case .revoked:
                        print("APPLE ID 연동해제 상태")
                        self.cleanAppleUDData()
                        self.delegate?.NotificationLoginStatus(type: .apple, staus: .notConnect)
                    case .authorized:
                        print("APPLE ID 로그인 중인 상태 - 연동해제 시도")
                        self.cleanAppleUDData()
                    case .notFound:
                        print("APPLE ID 상태를 확인 할 수 없음")
                    case .transferred:
                        print("APPLE ID 변경이 된 상태")
                    @unknown default:
                        fatalError()
                    }
                }
            }
        }
        else {
            // ID 존재 안함 == 로그인 안한거
            if let useVC = self.useVC {
                SunBase.alert.alertOneBtn(useVC,
                                          title: "로그인 에러",
                                          message: "로그인이 되어있지 않습니다.",
                                          firstTitle: "확인",
                                          firstHandler: nil)
            }
            
        }
    }
    
    private func cleanAppleUDData() {
        CommonUtils.shared.saveUDData("", forKey: "appleID")
        CommonUtils.shared.saveUDData("", forKey: "appleEmail")
        CommonUtils.shared.saveUDData("", forKey: "appleToken")
    }
}
    
extension AppleSignManager: ASAuthorizationControllerDelegate, ASAuthorizationControllerPresentationContextProviding {
    func presentationAnchor(for controller: ASAuthorizationController) -> ASPresentationAnchor {
        self.mainView.window!
    }
    
    func authorizationController(controller: ASAuthorizationController, didCompleteWithError error: Error) {
        print("Failed Apple Auth.: \(error)")
    }
    
    // 성공 후 동작
    @available(iOS 13.0, *)
    func loginApple(_ credential: ASAuthorizationAppleIDCredential, completion: @escaping (Result<SNSAccount, AccountError>) ->() ) {
        if let identityToken = credential.identityToken {
            var snsAccount = SNSAccount()
            snsAccount.snsId = "\(credential.user)"
            if let token = String(data: identityToken, encoding: .utf8) {
                snsAccount.snsToken = "\(token)"
            }
            if let email = credential.email {
                snsAccount.snsEmail = "\(email)"
            }
            completion(.success(snsAccount))
        }
        else {
            completion(.failure(.signinError))
            // Token 옵셔널 안풀렸다? == Token이 없다는 거지
        }
    }
    
    func authorizationController(controller: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
        if let credential = authorization.credential as? ASAuthorizationAppleIDCredential{
            self.loginApple(credential) { result in
                switch result {
                case .success(let snsAccount):
                    CommonUtils.shared.saveUDData(snsAccount.snsId, forKey: "appleID")
                    CommonUtils.shared.saveUDData(snsAccount.snsEmail, forKey: "appleEmail")
                    CommonUtils.shared.saveUDData(snsAccount.snsToken, forKey: "appleToken")
                case .failure(let error):
                    print("[ERROR]: \(error)")
                }
            }
        }
    }
    
    
//    func
}
