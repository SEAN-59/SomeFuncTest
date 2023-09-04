//
//  ErrorTableCell.swift
//  SomeFuncTest
//
//  Created by TAnine on 2023/09/01.
//

import UIKit

class ErrorTableCell: UITableViewCell {
    let cellIdntifier = "ErrorTableCell"
    
    @IBOutlet weak var setErrorLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    public func setErrorLabel(_ title: String, color: UIColor = .label, size: CGFloat = 17, font: UIFont? = nil) {
        self.setErrorLbl.text = "\(title)"
        self.setErrorLbl.textColor = color
        
        if let font = font {
            self.setErrorLbl.font = font
        } else {
            self.setErrorLbl.font = .systemFont(ofSize: size)
        }
        
        
    }
    
}
