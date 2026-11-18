//
//  CardViewController.swift
//  Astrô
//
//  Created by Tainara Nascimento on 17/11/26.
//


import UIKit

class CardViewController: UIViewController {

    private lazy var cardView: CardView = {
        return CardView()
    }()

    override func loadView() {
        self.view = cardView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}