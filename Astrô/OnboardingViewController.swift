//
//  OnboardingViewController.swift
//  Astrô
//
//  Created by Tainara Nascimento on 14/11/26.
//

import UIKit

class OnboardingViewController: UIViewController {
    
    private lazy var onboardingView: OnboardingView = {
        return OnboardingView()
    }()
    
    override func loadView() {
        self.view = onboardingView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        onboardingView.configureStartButton(
            target: self,
            action: #selector(didTapStartButton)
        )
    }
    
    @objc
    func didTapStartButton() {
        navigationController?.pushViewController(
            HomeViewController(),
            animated: true
        )
    }
    
    
}
