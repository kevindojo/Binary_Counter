//
//  BinaryTableViewCell.swift
//  BinaryCounter
//
//  Created by Kevin Pham on 11/15/17.
//  Copyright © 2017 Kevin Pham. All rights reserved.
//

import UIKit


protocol BinaryTableViewCellDelegate: class {
    func valueChanged(value: Int)
}

class BinaryTableViewCell: UITableViewCell {

    
    @IBOutlet weak var valueLabel: UILabel!
    
    
    weak var delegate: BinaryTableViewCellDelegate?
    
    @IBAction func valueButtonPressed(_ sender: UIButton) {
        
        var value = Int(valueLabel!.text!)
        if sender.titleLabel!.text == "-"{
            value = -value!
        }
        
        delegate?.valueChanged(value: value!)
    }
    
    
}
