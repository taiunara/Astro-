//
//  CardView.swift
//  Astrô
//
//  Created by Tainara Nascimento on 17/11/26.
//


import UIKit

class CardView: UIView, ViewCode {
    
    private var isShowingBack = false
    
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
    
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(
            name: "GoogleSansFlex24pt-ExtraLight",
            size: 20
        )
        label.text = "Clique para ler o verso"
        label.textColor = .white
        label.textAlignment = .center
        label.numberOfLines = 0
        
        return label
    }()
    
    private lazy var backCardView: UIView = {
        let backview = UIView()
        backview.translatesAutoresizingMaskIntoConstraints = false
        backview.backgroundColor = .vine
        backview.layer.cornerRadius = 20
        
        return backview
    }()
    
    private lazy var backCardImageView: UIImageView = {
        let backcardview = UIImageView()
        backcardview.image = UIImage(named: "backCard01")
        backcardview.contentMode = .scaleAspectFit
        backcardview.translatesAutoresizingMaskIntoConstraints = false
        
        return backcardview
    }()
    
    private lazy var saveButton: UIButton = {
        let savebutton = UIButton()
        savebutton.setTitle("Guardar", for: .normal)
        savebutton.titleLabel?.font = UIFont(
            name: "GoogleSansFlex24pt-Medium",
            size: 16
        )
        savebutton.translatesAutoresizingMaskIntoConstraints = false
        savebutton.setTitleColor(.black, for: .normal)
        savebutton.backgroundColor = .white
        savebutton.layer.cornerRadius = 10

        
        return savebutton
    }()
    
    private lazy var cardContainerView: UIView = {
        let container = UIView()
        container.translatesAutoresizingMaskIntoConstraints = false
        return container
    }()

    func addSubviews() {
        addSubview(backgroundImageView)
        addSubview(cardContainerView)

        cardContainerView.addSubview(frontCardView)
        frontCardView.addSubview(frontCardImageView)
        frontCardView.addSubview(descriptionLabel)

        cardContainerView.addSubview(backCardView)
        backCardView.addSubview(backCardImageView)
        backCardView.addSubview(saveButton)
    }

    func setupConstraints() {
        NSLayoutConstraint.activate([
            
            backgroundImageView.topAnchor.constraint(equalTo: topAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            cardContainerView.centerXAnchor.constraint(equalTo: centerXAnchor),
                        cardContainerView.centerYAnchor.constraint(equalTo: centerYAnchor),
                        cardContainerView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.8),
                        cardContainerView.heightAnchor.constraint(
                            equalTo: cardContainerView.widthAnchor,
                            multiplier: 1.61
                        ),
            
            frontCardView.topAnchor.constraint(equalTo: cardContainerView.topAnchor),
            frontCardView.bottomAnchor.constraint(equalTo: cardContainerView.bottomAnchor),
            frontCardView.leadingAnchor.constraint(equalTo: cardContainerView.leadingAnchor),
            frontCardView.trailingAnchor.constraint(equalTo: cardContainerView.trailingAnchor),

            
            frontCardImageView.topAnchor.constraint(equalTo: frontCardView.topAnchor),
            frontCardImageView.bottomAnchor.constraint(equalTo: frontCardView.bottomAnchor),
            frontCardImageView.leadingAnchor.constraint(equalTo: frontCardView.leadingAnchor),
            frontCardImageView.trailingAnchor.constraint(equalTo: frontCardView.trailingAnchor),
            
            descriptionLabel.topAnchor.constraint(equalTo: frontCardImageView.bottomAnchor, constant: 20),
            descriptionLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 40),
            descriptionLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -40),
            
            backCardView.topAnchor.constraint(equalTo: cardContainerView.topAnchor),
            backCardView.bottomAnchor.constraint(equalTo: cardContainerView.bottomAnchor),
            backCardView.leadingAnchor.constraint(equalTo: cardContainerView.leadingAnchor),
            backCardView.trailingAnchor.constraint(equalTo: cardContainerView.trailingAnchor),

            backCardImageView.topAnchor.constraint(equalTo: backCardView.topAnchor),
            backCardImageView.bottomAnchor.constraint(equalTo: backCardView.bottomAnchor),
            backCardImageView.leadingAnchor.constraint(equalTo: backCardView.leadingAnchor),
            backCardImageView.trailingAnchor.constraint(equalTo: backCardView.trailingAnchor),
            
            saveButton.bottomAnchor.constraint(equalTo: backCardImageView.bottomAnchor, constant: 100),
            saveButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 90),
            saveButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -90),
            saveButton.heightAnchor.constraint(equalToConstant: 50)

           
        ])
    }

    func setupStyles() {
        backCardView.isHidden = true
    }
    
    func flipCard() {
        UIView.transition(
                   with: cardContainerView,
                   duration: 0.8,
                   options: [.transitionFlipFromRight, .showHideTransitionViews],
                   animations: {
                       self.frontCardView.isHidden.toggle()
                       self.backCardView.isHidden.toggle()
                   }
               )
        isShowingBack.toggle()
    }
    
    func animateCardEntrance() {
        cardContainerView.alpha = 0
        cardContainerView.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)

        UIView.animate(
            withDuration: 0.8,
            delay: 0,
            options: [.curveEaseOut],
            animations: {
                self.cardContainerView.alpha = 1
                self.cardContainerView.transform = .identity
            }
        )
    }
    
    func configureCardTap(target: Any?, action: Selector) {
        let tapFront = UITapGestureRecognizer(target: target, action: action)
        let tapBack = UITapGestureRecognizer(target: target, action: action)

        frontCardView.addGestureRecognizer(tapFront)
        backCardView.addGestureRecognizer(tapBack)
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
