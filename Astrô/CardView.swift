//
//  CardView.swift
//  Astrô
//
//  Created by Tainara Nascimento on 17/11/26.
//


import UIKit

class CardView: UIView, ViewCode {
    
    private lazy var backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        
        imageView.image = UIImage(named: "BgEstelar")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    private lazy var frontCardView: UIView = {
        let frontview = UIView()
        frontview.translatesAutoresizingMaskIntoConstraints = false
        frontview.backgroundColor = .vine
        frontview.layer.cornerRadius = 20
        
        return frontview
    }()
    
    private lazy var frontCardImageView: UIImageView = {
        let frontcardview = UIImageView()
        frontcardview.image = UIImage(named: "cardFront01")
        frontcardview.contentMode = .scaleAspectFit
        frontcardview.translatesAutoresizingMaskIntoConstraints = false
        
        return frontcardview
    }()
    
    private lazy var backCardView: UIView = {
        let backview = UIView()
        backview.translatesAutoresizingMaskIntoConstraints = false
        backview.backgroundColor = .clear
        
        return backview
    }()

    func addSubviews() {
        addSubview(backgroundImageView)
        addSubview(frontCardView)
        frontCardView.addSubview(frontCardImageView)
        addSubview(backCardView)

    }

    func setupConstraints() {
        NSLayoutConstraint.activate([
            
            backgroundImageView.topAnchor.constraint(equalTo: topAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            frontCardView.centerXAnchor.constraint(equalTo: centerXAnchor),
            frontCardView.centerYAnchor.constraint(equalTo: centerYAnchor),
            frontCardView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.8),
            frontCardView.heightAnchor.constraint(
                equalTo: frontCardView.widthAnchor,
                multiplier: 1.61
            ),
            
            frontCardImageView.topAnchor.constraint(equalTo: frontCardView.topAnchor),
            frontCardImageView.bottomAnchor.constraint(equalTo: frontCardView.bottomAnchor),
            frontCardImageView.leadingAnchor.constraint(equalTo: frontCardView.leadingAnchor),
            frontCardImageView.trailingAnchor.constraint(equalTo: frontCardView.trailingAnchor),
            
            
            
            backCardView.centerXAnchor.constraint(equalTo: frontCardView.centerXAnchor),
            backCardView.centerYAnchor.constraint(equalTo: frontCardView.centerYAnchor),
            backCardView.widthAnchor.constraint(equalTo: frontCardView.widthAnchor),
            backCardView.heightAnchor.constraint(equalTo: frontCardView.heightAnchor)
        ])
    }

    func setupStyles() {

    }

    init() {
        super.init(frame: .zero)
        setup()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

#Preview {
    return CardView()
}
