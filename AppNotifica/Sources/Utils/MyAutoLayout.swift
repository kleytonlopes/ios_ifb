//
//  MyAutoLayout.swift
//  AppNotifica
//
//  Created by Kleyton Lopes on 19/11/23.
//

import UIKit

class MyAutoLayout {
    private var view: UIView
    private var constraints: [NSLayoutConstraint]

    public init(view: UIView) {
        self.view = view
        self.constraints = []
        
        self.view.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.deactivate(self.view.constraints)
    }
    
    func sameTopAnchor(as view: UIView,_ constant: CGFloat = 0) -> MyAutoLayout {
        return self.sameTopAnchor(as: view.safeAreaLayoutGuide, constant)
    }
    
    func sameTopAnchor(as layoutGuide: UILayoutGuide,_ constant: CGFloat = 0) -> MyAutoLayout {
        self.constraints.append(
            self.view.topAnchor.constraint(equalTo: layoutGuide.topAnchor, constant: constant)
        )
        return self
    }
    
    
    func sameBottomAnchor(as layoutGuide: UILayoutGuide,_ constant: CGFloat = 0) -> MyAutoLayout {
        self.constraints.append(
            self.view.bottomAnchor.constraint(equalTo: layoutGuide.bottomAnchor, constant: constant)
        )
        return self
    }
    
    func sameBottomAnchor(as view: UIView,_ constant: CGFloat = 0) -> MyAutoLayout {
        return self.sameBottomAnchor(as: view.safeAreaLayoutGuide, constant)
    }
    
    func sameLeadingAnchor(as layoutGuide: UILayoutGuide, _ constant: CGFloat = 0) -> MyAutoLayout {
        self.constraints.append(
            self.view.leadingAnchor.constraint(equalTo: layoutGuide.leadingAnchor, constant: constant)
        )
        return self
    }
    
    func sameLeadingAnchor(as view: UIView,_ constant: CGFloat = 0) -> MyAutoLayout {
        return self.sameLeadingAnchor(as: view.safeAreaLayoutGuide, constant)
    }
    
    func sameTrailingAnchor(as layoutGuide: UILayoutGuide,_ constant: CGFloat = 0) -> MyAutoLayout {
        self.constraints.append(
            self.view.trailingAnchor.constraint(equalTo: layoutGuide.trailingAnchor, constant: constant * -1.0)
        )
        return self
    }
    
    func sameTrailingAnchor(as view: UIView,_ constant: CGFloat = 0) -> MyAutoLayout {
        return self.sameTrailingAnchor(as: view.safeAreaLayoutGuide, constant)
    }
    
    
    func sameTopAnchorAsSuperview(_ constant: CGFloat = 0) -> MyAutoLayout{
        guard let superview = self.view.superview else {
            return self
        }
        return self.sameTopAnchor(as: superview, constant)

    }
    
    func sameBottomAnchorAsSuperview(_ constant: CGFloat = 0) -> MyAutoLayout{
        guard let superview = self.view.superview else {
            return self
        }
        return self.sameBottomAnchor(as: superview, constant)

    }
    
    func sameLeadingAnchorAsSuperview(_ constant: CGFloat = 0) -> MyAutoLayout{
        guard let superview = self.view.superview else {
            return self
        }
        return self.sameLeadingAnchor(as: superview, constant)
    }
    
    func align(to view: UIView,_ constant: CGFloat = 0) -> MyAutoLayout {
        return sameLeadingAnchor(as: view, constant)
            .sameTrailingAnchor(as: view, constant)
    }
    
    func alignToSuperview(_ constant: CGFloat = 0) -> MyAutoLayout {
        guard let superview = self.view.superview else {
            return self
        }
        return align(to: superview, constant)
    }
    
    func sameTrailingAnchorAsSuperview(_ constant: CGFloat = 0) -> MyAutoLayout{
        guard let superview = self.view.superview else {
            return self
        }
        return self.sameTrailingAnchor(as: superview, constant)

    }
    
    func centerX(to view: UIView) -> MyAutoLayout {
        return self.centerX(to: view.safeAreaLayoutGuide)
    }
    
    func centerX(to layoutGuide: UILayoutGuide) -> MyAutoLayout {
        self.constraints.append(
            self.view.centerXAnchor.constraint(equalTo: layoutGuide.centerXAnchor)
        )
        return self
    }
    
    func centerY(to view: UIView) -> MyAutoLayout {
        self.constraints.append(
            self.view.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        )
        return self
    }
    
    func centerXToSuperview() -> MyAutoLayout {
        guard let superview = self.view.superview else {
            return self
        }
        return self.centerX(to: superview)
    }
    
    func centerYToSuperview() -> MyAutoLayout {
        guard let superview = self.view.superview else {
            return self
        }
        return self.centerY(to: superview)
    }
    
    func withWidth(_ constant: CGFloat) -> MyAutoLayout{
        self.constraints.append(
            self.view.widthAnchor.constraint(equalToConstant: constant)
        )
        return self
    }
    
    func withHeight(_ constant: CGFloat) -> MyAutoLayout{
        self.constraints.append(
            self.view.heightAnchor.constraint(equalToConstant: constant)
        )
        return self
    }
    
    func sameWidth(as view: UIView, multiplier: CGFloat = 1) -> MyAutoLayout{
        self.constraints.append(
            self.view.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: multiplier)
        )
        return self
    }
    
    func sameHeight(as view: UIView) -> MyAutoLayout{
        self.constraints.append(
            self.view.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor)
        )
        return self
    }
    
    func below(view: UIView,_ constant: CGFloat = 0) -> MyAutoLayout {
        self.constraints.append(
            self.view.topAnchor.constraint(equalTo: view.bottomAnchor, constant: constant)
        )
        return self
    }
    
    func after(_ view: UIView,_ constant: CGFloat = 0) -> MyAutoLayout {
        self.constraints.append(
            self.view.leadingAnchor.constraint(equalTo: view.trailingAnchor, constant: constant)
        )
        return self
    }
    
    func activateConstraints(){
        NSLayoutConstraint.activate(self.constraints)
    }
}
