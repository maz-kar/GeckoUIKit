//
//  CircleButtonView.swift
//  GeckoUIKit
//
//  Created by Maziar Layeghkar on 20.09.24.
//

import UIKit

class CircleButtonView: UIView {

    var imageName: String = "" {
        didSet {
            imageView.image = UIImage(systemName: imageName)
        }
    }
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }

    private func setupView() {
        self.backgroundColor =  UIColor.theme.customBackground
        self.layer.cornerRadius = 25
        self.layer.shadowColor = UIColor.gray.cgColor
        self.layer.shadowOpacity = 1.0
        self.layer.shadowOffset = CGSize(width: 0, height: 2)
        self.layer.shadowRadius = 10
        
        addSubview(imageView)
        
        imageView.tintColor = UIColor.theme.customAccent
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 30),
            imageView.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
}
