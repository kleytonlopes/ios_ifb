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
        self.constraints.append(
            self.view.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: constant)
        )
        return self
    }
    
    func sameLeadingAnchor(as view: UIView,_ constant: CGFloat = 0) -> MyAutoLayout {
        self.constraints.append(
            self.view.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: constant)
        )
        return self
    }
    
    func sameTrailingAnchor(as view: UIView,_ constant: CGFloat = 0) -> MyAutoLayout {
        self.constraints.append(
            self.view.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: constant * -1.0)
        )
        return self
    }
    
    
    func sameTopAnchorAsSuperview(_ constant: CGFloat = 0) -> MyAutoLayout{
        guard let superview = self.view.superview else {
            return self
        }
        return self.sameTopAnchor(as: superview, constant)

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
        self.constraints.append(
            self.view.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        )
        return self
    }
    
    func centerXToSuperview() -> MyAutoLayout {
        guard let superview = self.view.superview else {
            return self
        }
        return self.centerX(to: superview)
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
    
    func below(view: UIView,_ constant: CGFloat = 0) -> MyAutoLayout {
        self.constraints.append(
            self.view.topAnchor.constraint(equalTo: view.bottomAnchor, constant: constant)
        )
        return self
    }
    
    func activateConstraints(){
        NSLayoutConstraint.activate(self.constraints)
    }
}
