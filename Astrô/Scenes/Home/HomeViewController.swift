    //
    //  HomeViewController.swift
    //  Astrô
    //
    //  Created by Tainara Nascimento on 16/11/26.
    //


    import UIKit

    class HomeViewController: UIViewController {

        private lazy var homeView: HomeView = {
            return HomeView()
        }()

        override func loadView() {
            self.view = homeView
        }

        override func viewDidLoad() {
            super.viewDidLoad()

            print("HomeViewController carregou!")

            homeView.configureTargetTap(
                target: self,
                action: #selector(didTapTarget)
            )
        }
        
        @objc
        func didTapTarget() {
            navigationController?.pushViewController(
                CardViewController(),
                animated: false
            )
        }   

      
    }
