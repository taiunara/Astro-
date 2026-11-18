//
//  ViewCode.swift
//  Astrô
//
//  Created by Tainara Nascimento on 13/11/26.
//

protocol ViewCode {
    func addSubviews()
    func setupConstraints()
    func setupStyles()
}

extension ViewCode {
    func setup() {
        addSubviews()
        setupConstraints()
        setupStyles()
    }
}
