//
//  ConfirmationViewController.swift
//  FinanceApp
//
//  Created by Rodrigo Borges on 30/12/21.
//

import UIKit

class ConfirmationViewController: UIViewController {

    lazy var imageConfirmation: UIImageView = {
            let image = UIImageView()
            image.image = UIImage(imageLiteralResourceName: "checkmark.circle.fill")
            image.tintColor = UIColor(red: 0.196, green: 0.843, blue: 0.294, alpha: 1)
            image.translatesAutoresizingMaskIntoConstraints = false
            
            return image
        }()
        
        lazy var titleConfirmation: UILabel = {
            let label = UILabel()
            label.text = "Your transfer was successful"
            label.textAlignment = .center
            label.font = .systemFont(ofSize: 17, weight: .bold)
            label.translatesAutoresizingMaskIntoConstraints = false
            
            return label
        }()
        
        lazy var buttonConfirmation: UIButton = {
            let button = UIButton()
            button.setTitle("Nice", for: .normal)
            button.backgroundColor = UIColor(red: 0, green: 0.478, blue: 1, alpha: 1)
            button.layer.cornerRadius = 14
            button.translatesAutoresizingMaskIntoConstraints = false
            
            return button
        }()
    //MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configViews()
        buildViews()
        setupConstraints()
    }
    
    //MARK: View Configuration
    func configViews() {
        view.backgroundColor = .white
    }
    
    func buildViews() {
        [imageConfirmation, titleConfirmation, buttonConfirmation].forEach(view.addSubview)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            imageConfirmation.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageConfirmation.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            imageConfirmation.heightAnchor.constraint(equalToConstant: 89),
            imageConfirmation.widthAnchor.constraint(equalToConstant: 89),
            
            titleConfirmation.topAnchor.constraint(equalTo: imageConfirmation.bottomAnchor, constant: 8),
            titleConfirmation.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            buttonConfirmation.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -34),
            buttonConfirmation.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            buttonConfirmation.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            buttonConfirmation.heightAnchor.constraint(equalToConstant: 56)
        ])
    }
}
