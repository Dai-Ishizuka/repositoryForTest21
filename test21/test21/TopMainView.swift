//
//  TopMainView.swift
//  test21
//
//  Created by 石塚大 on 2019/06/14.
//  Copyright © 2019 石塚大. All rights reserved.
//

import UIKit
import PGFramework

protocol TopMainViewDelegate: NSObjectProtocol{
    func button()
}

extension TopMainViewDelegate {
    
}
// MARK: - Property
class TopMainView: BaseView {
    weak var delegate: TopMainViewDelegate? = nil
    @IBAction func touchedBtn(_ sender: UIButton) {
        delegate?.button()
    }
}

// MARK: - Life cycle
extension TopMainView {
    
}

// MARK: - Protocol
extension TopMainView {
    
}

// MARK: - method
extension TopMainView {
    
}


