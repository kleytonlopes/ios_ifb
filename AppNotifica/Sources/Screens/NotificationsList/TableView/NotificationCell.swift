//
//  NotificationCell.swift
//  AppNotifica
//
//  Created by Kleyton Lopes on 30/11/23.
//

import UIKit

class NotificationCell: UITableViewCell {
    public static let IDENTIFIER = "NotificationCell"
    private let IMAGE_NAME = "notification_icon"
    
    lazy var imageViewIcon: ImageViewDefault = {
        let imageView = ImageViewDefault(imageName: IMAGE_NAME)
        return imageView
    }()
    
    lazy var labelTitle = LabelDefault(
        fontSize: 18,
        fontWeight: .bold,
        textAlignment: .left,
        color: UIColor.textColor2
    )
    
    lazy var labelSubTitle = LabelDefault(
        textAlignment: .left
    )

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }
    
    public func setData(title: String, subtitle: String){
        self.labelTitle.text = title
        self.labelSubTitle.text = title
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
extension NotificationCell: ViewCodeProtocol{
    func setupHierarchy() {
        self.addSubview(imageViewIcon)
        self.addSubview(labelTitle)
        self.addSubview(labelSubTitle)
    }
    
    func setupConstraints() {
        imageViewIcon.getAutolayout()
            .centerYToSuperview()
            .sameLeadingAnchorAsSuperview(20)
            .withHeight(30)
            .withWidth(30)
            .activateConstraints()
        
        labelTitle.getAutolayout()
            .sameTopAnchor(as: imageViewIcon, -5)
            .after(imageViewIcon, 20)
            .sameTrailingAnchorAsSuperview(10)
            .activateConstraints()
        
        labelSubTitle.getAutolayout()
            .below(view: labelTitle)
            .sameLeadingAnchor(as: labelTitle)
            .sameTrailingAnchorAsSuperview(10)
            .activateConstraints()
    }
    
    func setupStyle() {
        self.backgroundColor = UIColor.viewBackgroundColor
    }
}
