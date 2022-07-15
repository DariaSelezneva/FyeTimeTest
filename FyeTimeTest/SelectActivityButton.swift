//
//  SelectActivityButton.swift
//  FyeTimeTest
//
//  Created by dunice on 15.07.2022.
//

import UIKit

class SelectActivityButton: UIButton {
    
    let textLabel = UILabel()
    let arrowLabel = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)
        initialSetup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initialSetup() {
        let stackView = UIStackView()
        stackView.spacing = 16
        stackView.addArrangedSubview(textLabel)
        stackView.addArrangedSubview(arrowLabel)
        stackView.isUserInteractionEnabled = false
        self.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 5),
            stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 5),
            stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 5)
        ])
        self.setTitle(" ", for: .normal)
    }
}
