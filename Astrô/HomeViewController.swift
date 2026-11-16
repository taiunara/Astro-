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
        super.loadView()
        self.view = homeView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        homeView.setup(titleText: "Task Master", addTaskButtonTitle: "Add Task")
    }
}
