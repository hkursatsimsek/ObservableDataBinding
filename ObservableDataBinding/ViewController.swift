//
//  ViewController.swift
//  ObservableDataBinding
//
//  Created by Kürşat Şimşek on 26.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var retriveButton: UIButton!
    @IBOutlet weak var messageLabel: UILabel!
    
    private let viewModel = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.retreivedMessage.bind { [weak self] value in
            self?.messageLabel.text = value
        }
        
        viewModel.onMessageReceived = { [weak self] value in
            self?.messageLabel.text = value
        }
    }

    @IBAction func retriveMessage(_ sender:Any) {
        viewModel.loadData()
    }
}

