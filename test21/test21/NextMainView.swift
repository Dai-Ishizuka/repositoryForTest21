//
//  NextMainView.swift
//  test21
//
//  Created by 石塚大 on 2019/06/14.
//  Copyright © 2019 石塚大. All rights reserved.
//

import UIKit
import PGFramework

protocol NextMainViewDelegate: NSObjectProtocol{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) 
    
}

extension NextMainViewDelegate {
    
}
// MARK: - Property
class NextMainView: BaseView {
    weak var delegate: NextMainViewDelegate? = nil
    @IBOutlet weak var tableView: UITableView!
}

// MARK: - Life cycle
extension NextMainView {
    override func awakeFromNib() {
        super.awakeFromNib()
        loadTableViewCellFromXib(tableView: tableView, cellName: "MainTableViewCell")
        tableView.dataSource = self
        tableView.delegate = self
    }
    
}

// MARK: - Protocol
extension NextMainView: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "セクション"
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell: MainTableViewCell = tableView.dequeueReusableCell(withIdentifier: "MainTableViewCell", for: indexPath) as? MainTableViewCell else {
            return UITableViewCell()
        }
        return cell
    }
}

extension NextMainView: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        delegate?.tableView(tableView, didSelectRowAt: indexPath)
    }
    
    
}


// MARK: - method
extension NextMainView {
    
}


