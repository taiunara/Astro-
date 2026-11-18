//
//  OnboardingView.swift
//  Astrô
//
//  Created by Tainara Nascimento on 14/11/26.
//

import UIKit

class OnboardingView: UIView, ViewCode {
    
    private lazy var backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        
        imageView.image = UIImage(named: "BgEstelar")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "CinzelDecorative-Bold", size: 22)
        label.text = "Descubra o universo, \numa carta por dia"
        label.textColor = .white
        label.textAlignment = .center
        label.numberOfLines = 2
    
        return label
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(
            name: "GoogleSansFlex24pt-Regular",
            size: 20
        )
        label.text = "No Astrô, cada dia traz uma nova descoberta sobre estrelas, \nplanetas e constelações. \n\nColecione cartas celestes e \nconheça as curiosidades por trás \nde cada corpo do universo."
        label.textColor = .white
        label.textAlignment = .center
        label.numberOfLines = 0
       //label.backgroundColor = .systemBlue
        
        return label
    }()
    
    private lazy var startButton: UIButton = {
        let button = UIButton()
        button.setTitle("Começar a explorar", for: .normal)
        button.titleLabel?.font = UIFont(
            name: "GoogleSansFlex24pt-Medium",
            size: 16
        )
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .white
        button.layer.cornerRadius = 10

        
        return button
    }()
    
    func configureStartButton(
        target: Any?,
        action: Selector
    ) {
        startButton.addTarget(
            target,
            action: action,
            for: .touchUpInside
        )
    }
    
    func addSubviews () {
        addSubview(backgroundImageView)
        addSubview(titleLabel)
        addSubview(descriptionLabel)
        addSubview(startButton)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            backgroundImageView.topAnchor.constraint(equalTo: topAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 150),
            titleLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 24),
            titleLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -24),
            
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            descriptionLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 40),
            descriptionLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -40),
            
            startButton.bottomAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 100),
            startButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 60),
            startButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -60),
            startButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    init() {
        super.init(frame: .zero)
        setup()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupStyles() {
    }
    
    
}



#Preview {
    return OnboardingView()
}
