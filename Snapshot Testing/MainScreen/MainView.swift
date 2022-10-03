//
//  MainView.swift
//  Snapshot Testing
//
//  Created by Ranieri Aguiar on 30/09/22.
//

import UIKit

class MainView: UIView {
    
    private let label: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Label"
        return label
    }()
    
    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("Button", for: .normal)
        return button
    }()
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        buildViewHierarchy()
        addConstraints()
        setup()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension MainView {
    private func buildViewHierarchy() {
        addSubview(label)
        addSubview(button)
    }
    
    private func addConstraints() {
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        label.widthAnchor.constraint(equalToConstant: 160).isActive = true
        label.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        button.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -32).isActive = true
        button.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        button.heightAnchor.constraint(equalToConstant: 64).isActive = true
    }
    
    private func setup() {
        backgroundColor = UIColor.lightGray
        
        button.backgroundColor = .clear
        button.layer.cornerRadius = 5
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.black.cgColor
    }
}
