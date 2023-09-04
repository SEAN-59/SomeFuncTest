//
//  MainViewController.swift
//  SomeFuncTest
//
//  Created by TAnine on 2023/08/28.
//

import UIKit
import SunBase

class MainViewController: SFT_VC {
    private var cellNum = 1
    private var listErrFlag = false
    
    private let moveVCArray: [SFT_VC] = [SignTestViewController(),
                                         BioAuthViewController()]
    
    private let buttonNameArray: [String] = ["로그인 테스트",
                                             "생체 인증"
                                             ]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.setUpTableView()
        
        
    }
    
    @IBAction func tapSignPageBtn(_ sender: SunButton) {
        self.popAndPushVC(nextVC: SignTestViewController(),
                          popAnimate: false,
                          pushAnimate: false)
    }
    
    private func setUpTableView(){
        let itemCellNib = UINib(nibName: MainVC_MenuTableCell().cellIdntifier, bundle: nil)
        self.tableView.register(itemCellNib, forCellReuseIdentifier: MainVC_MenuTableCell().cellIdntifier)
        let errorCellNib = UINib(nibName: ErrorTableCell().cellIdntifier, bundle: nil)
        self.tableView.register(errorCellNib, forCellReuseIdentifier: ErrorTableCell().cellIdntifier)
        
        if self.moveVCArray.count == self.buttonNameArray.count {
            self.listErrFlag = false
            self.cellNum = self.moveVCArray.count
        } else {
            self.listErrFlag = true
            self.cellNum = 1
        }
        
    }

}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.cellNum
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if self.listErrFlag {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: ErrorTableCell().cellIdntifier, for: indexPath) as? ErrorTableCell else { return UITableViewCell() }
            cell.setErrorLabel("데이터가 맞지 않습니다.", color: .red, font: .boldSystemFont(ofSize: 20))
            return cell
        
        } else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: MainVC_MenuTableCell().cellIdntifier,for: indexPath) as? MainVC_MenuTableCell else { return UITableViewCell() }
            
            cell.setCell(self,
                         moveVC: self.moveVCArray[indexPath.row],
                         title: self.buttonNameArray[indexPath.row])
            
            cell.selectionStyle = .none
            return cell
        }
        
    }
    
    
}
