//
//  MainController.swift
//  Snapshot Testing
//
//  Created by Ranieri Aguiar on 30/09/22.
//

import UIKit

class MainController: UIViewController {

    private let contentView: MainView
    
    // MARK: - Init
    
    init() {
        self.contentView = MainView()

        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Controller life cycle
    
    override func loadView() {
        self.view = contentView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

