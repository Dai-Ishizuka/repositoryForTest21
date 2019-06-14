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
    }
    
}

// MARK: - Protocol
extension NextMainView: UITableViewDataSource {
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

// MARK: - method
extension NextMainView {
    
}


