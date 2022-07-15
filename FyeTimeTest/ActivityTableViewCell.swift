//
//  ActivityTableViewCell.swift
//  FyeTimeTest
//
//  Created by dunice on 14.07.2022.
//

import UIKit

class ActivityTableViewCell: UITableViewCell {
    
    static let reuseIdentifier = "activityCell"

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        initialSetup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initialSetup() {
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
