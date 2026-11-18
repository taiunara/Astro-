//
//  HomeView.swift
//  Astrô
//
//  Created by Tainara Nascimento on 13/11/26.
//

import UIKit

class HomeView: UIView, ViewCode {
    
    private lazy var backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        
        imageView.image = UIImage(named: "BgEstelar")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    private lazy var frameView: UIImageView = {
        let imageView = UIImageView()
        
        imageView.image = UIImage(named: "frame")
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    private lazy var targetImageView: UIImageView = {
        let imageView = UIImageView()
        
        imageView.image = UIImage(named: "EllipseBig")
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.isUserInteractionEnabled = true
        //imageView.backgroundColor = .systemRed
        
        return imageView
    }()
    
    private lazy var target2ImageView: UIImageView = {
        let imageView = UIImageView()
        
        imageView.image = UIImage(named: "EllipseSmall")
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.isUserInteractionEnabled = true
        //imageView.backgroundColor = .systemRed
        
        return imageView
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(
            name: "GoogleSansFlex24pt-Regular",
            size: 20
        )
        label.text = "Clique e veja \na carta do dia"
        label.textColor = .white
        label.textAlignment = .center
        label.numberOfLines = 0
        
        return label
    }()
    
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            backgroundImageView.topAnchor.constraint(equalTo: topAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            
            frameView.centerXAnchor.constraint(equalTo: centerXAnchor),
            frameView.centerYAnchor.constraint(equalTo: centerYAnchor),
            frameView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.8),
            frameView.heightAnchor.constraint(
                equalTo: frameView.widthAnchor,
                multiplier: 1.826
            ),
            
            targetImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            targetImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            targetImageView.widthAnchor.constraint(equalToConstant: 180),
            targetImageView.heightAnchor.constraint(equalToConstant: 180),
            
            target2ImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            target2ImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            target2ImageView.widthAnchor.constraint(equalToConstant: 120),
            target2ImageView.heightAnchor.constraint(equalToConstant: 120),
            
            descriptionLabel.topAnchor.constraint(equalTo: target2ImageView.bottomAnchor, constant: 70),
            descriptionLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 40),
            descriptionLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -40),
            
         

            
        ])
    }
    
    func setupStyles() {
        animateTargets()
        animateDescription()
    }
    
    func animateTargets() {
        UIView.animate(
            withDuration: 1.0,
            delay: 0,
            options: [.autoreverse, .repeat, .allowUserInteraction],
            animations: {
                self.targetImageView.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
            }
        )
        
        UIView.animate(
            withDuration: 1.0,
            delay: 0,
            options: [.autoreverse, .repeat, .allowUserInteraction],
            animations: {
                self.target2ImageView.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
            }
        )
    }
        
        func animateDescription() {
        
        UIView.animate(
            withDuration: 3.0,
            delay: 0,
            options: [.autoreverse, .repeat],
            animations: {
                self.descriptionLabel.transform = CGAffineTransform(scaleX: 0.9, y: 0.9);
            }
        )
    }
    
    
    func configureTargetTap(target: Any?, action: Selector) {
        let tapBig = UITapGestureRecognizer(
            target: target,
            action: action,
        )

        let tapSmall = UITapGestureRecognizer(
            target: target,
            action: action
        )

        targetImageView.addGestureRecognizer(tapBig)
        target2ImageView.addGestureRecognizer(tapSmall)

        print("Gestos adicionados!")
        print("Imagem grande: \(targetImageView.isUserInteractionEnabled)")
        print("Imagem pequena: \(target2ImageView.isUserInteractionEnabled)")
    }
    
    
    func addSubviews() {
        addSubview(backgroundImageView)
        addSubview(frameView)
        addSubview(descriptionLabel)
        addSubview(targetImageView)
        addSubview(target2ImageView)
       
        
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
    return HomeView()
    
}
