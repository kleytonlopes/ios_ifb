//
//  AboutView.swift
//  AppNotifica
//
//  Created by Kleyton Lopes on 22/11/23.
//

import UIKit

class AboutUsView: UIView {
    private let ABOUT_US_TEXT = "Aplicativo desenvolvido pelos professores do curso Desenvolvimento de aplicativos utilizando a linguagem Swift do IFB com intuito de permitir que ocorrências sejam registradas e acompanhadas, bem como solucionadas."
    private let DEVS_TITLE = "Desenvolvedores:"
    private let DEVS_ARRAY = ["Caio Junqueira de Andrade",
                              "Marcos Medeiros da Silva",
                              "Kleyton da Costa Lopes",
                              "Thais Pereira de Oliveira",
                              "José da Silva Azevedo",
                              "João Gomes da Silva",
                              "Maria Junqueiro Pedreira",
                              "Felipe da Conceição",
                              "Carlos Marcedo da Silva",
                              "Diogenes Ferreira Reis",
                              "Joana Ferreira Reis",
                              "Lis de Almeida Oliveira",
                              "José Dario Pintor"
                            ]

    
    private lazy var scrollView : UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.contentMode = .scaleAspectFit
        scrollView.showsVerticalScrollIndicator = true
        return scrollView
    }()
    
    private lazy var stackView : UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.contentMode = .scaleAspectFit
        return stackView
    }()
    
    private lazy var subviewsStackViewArray: [UIView] = {
        var viewsArray = [
            ImageViewDefault(imageName: "logo-login"),
            LabelDefault(text: ABOUT_US_TEXT,
                         textAlignment: .left,
                         color: UIColor.textColorStrong),
            LabelDefault(text: DEVS_TITLE,
                         fontWeight: .bold,
                         textAlignment: .left,
                         color: UIColor.textColorStrong)
        ]
        viewsArray.append(contentsOf:
            DEVS_ARRAY.map({LabelDefault(text: "    • \($0)",
                                         textAlignment: .left,
                                         color: UIColor.textColorStrong
                            )
            
            })
        )
        return viewsArray
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension AboutUsView: ViewCodeProtocol{
    func setupHierarchy() {
        self.addSubview(self.scrollView)
        self.scrollView.addSubview(self.stackView)
        self.subviewsStackViewArray.forEach(
            {self.stackView.addArrangedSubview($0)}
        )
    }
    
    func setupConstraints() {
        self.scrollView.getAutolayout()
            .alignToSuperview()
            .sameTopAnchorAsSuperview()
            .sameBottomAnchorAsSuperview()
            .activateConstraints()
        
        
        self.stackView.getAutolayout()
            .sameTopAnchor(as: scrollView.contentLayoutGuide, 30)
            .centerX(to: scrollView)
            .sameBottomAnchor(as: scrollView.contentLayoutGuide, -30)
            .sameWidth(as: self, multiplier: 0.8)
            .activateConstraints()
    }
    
    func setupStyle() {
        self.backgroundColor = .viewBackgroundColor
        stackView.setCustomSpacing(30, after: subviewsStackViewArray[0])
        stackView.setCustomSpacing(30, after: subviewsStackViewArray[1])
        stackView.setCustomSpacing(20, after: subviewsStackViewArray[2])
    }
}
