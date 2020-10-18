//
//  HighlyCustomizableTabBar.swift
//  Yoga
//
//  Created by Jerry Ren on 9/15/20.
//  Copyright © 2020 Jerry Ren. All rights reserved.
//

import Foundation
import UIKit
//
protocol HighlyCustomizableTabBarDelegate {
   // func tabBar(tabBar: CustomTabBar, didSelectTab tab: Int)
}

//
//@IBDesignable class CustomTabBar: UIView {
//
//    @IBInspectable var underlineHeight: CGFloat = 2.0 {
//        didSet {
//            underlineHeightConstraint?.constant = underlineHeight
//        }
//    }
//    @IBInspectable var underlineOnBottom: Bool = true {
//        didSet {
//            configureUnderlineVerticalPosition()
//        }
//    }
//    @IBInspectable var selectedIndex: Int = 0 {
//        didSet {
//            updateButtons()
//        }
//    }
//    @IBInspectable var accentColor: UIColor = UIColor.blue {
//        didSet {
//            updateColors()
//        }
//    }
//    @IBInspectable var defaultTitleColor: UIColor = UIColor.black {
//        didSet {
//            updateColors()
//        }
//    }
//
//    // MARS: - vars&lets
//
//    var titles: [String] = ["one", "two"] {
//        didSet {
//            configureButtons()
//        }
//    }
//    var delegate: HighlyCustomizableTabBarDelegate?
//
//    private let stackView = UIStackView()
//    private var buttons = [UIButton]()
//
//    private let underline = UIView()
//    private var underlineHeightConstraint: NSLayoutConstraint?
//    private var underlineWidthConstraint: NSLayoutConstraint?
//    private var underlinePositionContraint: NSLayoutConstraint?
//    private var underlineTopConstraint: NSLayoutConstraint?
//    private var underlineBottomConstraint: NSLayoutConstraint?
//
//    // MARS: - Overrides
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        setupViews()
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//        setupViews()
//    }
//
//
//    // MARS: -
//
//    func tabSelected(button: UIButton) {
//        guard let index = buttons.firstIndex(of: button) else { fatalError("Invalid button selected") }
//        selectedIndex = index
//        delegate?.tabBar(tabBar: self, didSelectTab: index)
//    }
//
//}
//
//// MARS: - Private Stuff
//
//private extension CustomTabBar {
//
//    func setupViews() {
//        stackView.translatesAutoresizingMaskIntoConstraints = false
//        stackView.distribution = .fillEqually
//        addSubview(stackView)
//        stackView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
//        stackView.topAnchor.constraint(equalTo: topAnchor).isActive = true
//        stackView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
//        stackView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
//
//        underline.translatesAutoresizingMaskIntoConstraints = false
//        addSubview(underline)
//        underlineBottomConstraint = underline.bottomAnchor.constraint(equalTo: bottomAnchor)
//        underlineBottomConstraint?.isActive = true
//        underlineTopConstraint = underline.topAnchor.constraint(equalTo: topAnchor)
//        underlineHeightConstraint = underline.heightAnchor.constraint(equalToConstant: underlineHeight)
//        underlineHeightConstraint?.isActive = true
//        underlinePositionContraint = underline.leadingAnchor.constraint(equalTo: leadingAnchor)
//        underlinePositionContraint?.isActive = true
//
//        configureButtons()
//        configureUnderlineVerticalPosition()
//        updateColors()
//        if selectedIndex < buttons.count {
//            let button = buttons[selectedIndex]
//            tabSelected(button: button)
//        }
//    }
//
//    func configureButtons() {
//        for button in buttons {
//            button.removeFromSuperview()
//        }
//        buttons.removeAll()
//
//        for title in titles {
//            createButton(title: title)
//        }
//        configureUnderlineWidth()
//
//        if !(selectedIndex < buttons.count) {
//            fatalError("Invalid selection for buttons: \(selectedIndex)")
//        }
//        let selectedButton = buttons[selectedIndex]
//        tabSelected(button: selectedButton)
//    }
//
//    func createButton(title: String?) {
//        let button = UIButton(type: .system)
//        button.setTitle(title, for: .normal)
//        button.setTitleColor(defaultTitleColor, for: .normal)
// //       button.titleLabel?.font = UIFont.appFont(17.0)
//        button.addTarget(self, action: "tabSelected:", for: .touchUpInside)
//        stackView.addArrangedSubview(button)
//        buttons.append(button)
//    }
//
//    func configureUnderlineWidth() {
//        underlineWidthConstraint = underline.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1 / CGFloat(titles.count))
//        underlineWidthConstraint?.isActive = true
//    }
//
//    func configureUnderlineVerticalPosition() {
//        if underlineOnBottom {
//            underlineBottomConstraint?.isActive = true
//            underlineTopConstraint?.isActive = false
//        } else {
//            underlineBottomConstraint?.isActive = false
//            underlineTopConstraint?.isActive = true
//        }
//    }
//
//    func updateColors() {
//        underline.backgroundColor = accentColor
//        for button in buttons {
//            button.setTitleColor(defaultTitleColor, for: .normal)
//            button.setTitleColor(accentColor, for: .highlighted)
//        }
//    }
//
//    func updateButtons() {
//        if !(selectedIndex < buttons.count) {
//            fatalError("Invalid index for buttons—selectedIndex: \(selectedIndex)")
//        }
//        for button in buttons {
//            button.setTitleColor(defaultTitleColor, for: .normal)
//        }
//        let currentSelection = buttons[selectedIndex]
//        currentSelection.setTitleColor(accentColor, for: .normal)
//
//        // TODO: Add animation
//        let position = frame.size.width / CGFloat(titles.count) * CGFloat(selectedIndex)
//        self.underlinePositionContraint?.constant = position
//        UIView.animate(withDuration: 0.3, delay: 0.0, usingSpringWithDamping: 0.7, initialSpringVelocity: 1.0, options: [], animations: { () -> Void in
//            self.layoutIfNeeded()
//            }, completion: nil)
//    }
//
//}
