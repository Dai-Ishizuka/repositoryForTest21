//
//  NextViewController.swift
//  test21
//
//  Created by 石塚大 on 2019/06/14.
//  Copyright © 2019 石塚大. All rights reserved.
//

import UIKit
import PGFramework

// MARK: - Property
class NextViewController: BaseViewController {
    @IBOutlet weak var nextMainView: NextMainView!
    
}

// MARK: - Life cycle
extension NextViewController {
    override func loadView() {
        super.loadView()
        nextMainView.delegate = self
    }
}

// MARK: - Protocol
extension NextViewController: NextMainViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigationController?.popViewController(animated: true)
    }
    
    
}

// MARK: - method
extension NextViewController {
    
}

