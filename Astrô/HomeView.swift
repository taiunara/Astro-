//
//  HomeView.swift
//  Astrô
//
//  Created by Tainara Nascimento on 13/11/26.
//

import UIKit

class HomeView: UIView {
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 22, weight: .semibold)
        return label
    }()

    private lazy var textInputTask: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Enter a task"
        textField.borderStyle = .roundedRect
        textField.layer.cornerRadius = 8
        return textField
    }()

    private lazy var addTaskBT: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .red
        button.layer.cornerRadius = 8
        return button
    }()

    init() {
        super.init(frame: .zero)
        setup()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setup(titleText: String, addTaskButtonTitle: String) {
        titleLabel.text = titleText
        addTaskBT.setTitle(addTaskButtonTitle, for: .normal)
    }
    


}

extension HomeView: ViewCode {
    func addSubviews() {
        addSubview(titleLabel)
        addSubview(textInputTask)
        addSubview(addTaskBT)
    
    }

    func setupConstraints() {
        NSLayoutConstraint.activate(
            [
                titleLabel.topAnchor
                    .constraint(
                        equalTo: safeAreaLayoutGuide.topAnchor, constant: 12),
                titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),

                textInputTask.topAnchor
                    .constraint(equalTo: titleLabel.bottomAnchor, constant: 18),
                textInputTask.leadingAnchor
                    .constraint(equalTo: leadingAnchor, constant: 16),
                textInputTask.trailingAnchor
                    .constraint(equalTo: trailingAnchor, constant: -16),

                addTaskBT.topAnchor
                    .constraint(
                        equalTo: textInputTask.bottomAnchor, constant: 12),
                addTaskBT.centerXAnchor.constraint(equalTo: centerXAnchor),
                addTaskBT.widthAnchor.constraint(equalToConstant: 120),
            ]
        )
    }

    func setupStyles() {
        backgroundColor = .white
        
    }
    
    
}

#Preview {
    return HomeView()
    
}
