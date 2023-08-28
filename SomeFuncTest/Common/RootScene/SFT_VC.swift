//
//  SFT_VC.swift
//  SomeFuncTest
//
//  Created by TAnine on 2023/08/28.
//

import UIKit
import SunBase

class SFT_VC: UIViewController {
    func popAndPushVC(nextVC: SFT_VC, popAnimate: Bool, pushAnimate: Bool) {
        SFT_NavigationController.popViewController(animated: popAnimate)
        SFT_NavigationController.pushViewController(nextVC, animated: pushAnimate)
    }
    
    func popVC(popAnimate: Bool) {
        SFT_NavigationController.popViewController(animated: popAnimate)
    }
    
    func pushVC(nextVC: SFT_VC, pushAnimate: Bool) {
        SFT_NavigationController.pushViewController(nextVC, animated: pushAnimate)
    }
    
    func printNaviVC() {
        print(SFT_NavigationController.viewControllers)
    }
    
    func presentVC(fromVC: SFT_VC, nextVC: SFT_VC, presentAnimate: Bool, completion: VOID_TO_VOID? = nil){
        nextVC.modalPresentationStyle = .fullScreen
        fromVC.present(nextVC, animated: presentAnimate,completion: completion)
    }
}
