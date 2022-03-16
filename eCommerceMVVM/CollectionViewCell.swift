//
//  CollectionViewCell.swift
//  eCommerceMVVM
//
//  Created by Sinan Kulen on 12.03.2022.
//

import UIKit
import SnapKit

class CollectionViewCell: UICollectionViewCell {
  
    private lazy var background: UIView = {
        var view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: 179, height: 204)
        view.backgroundColor = .white
        
        return view
    }()
    
    private lazy var titleLabel: UILabel = {
        var view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: 128, height: 44)
        view.backgroundColor = .white

        view.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        view.font = UIFont(name: "Titillium-Semibold", size: 16)
        view.numberOfLines = 0
        view.lineBreakMode = .byWordWrapping
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.15
        view.attributedText = NSMutableAttributedString(string: "Nike Pegasus 37\nEU291", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
        return view
    }()
    
    private lazy var priceLabel: UILabel = {
        var view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: 77, height: 22)
        view.backgroundColor = .white

        view.textColor = UIColor(red: 0.176, green: 0.612, blue: 0.859, alpha: 1)
        view.font = UIFont(name: "Titillium-Semibold", size: 18)
        view.text = "16,400 TL"
        return view
    }()
    
    private lazy var imageView : UIImageView = {
        var view = UIImageView()
        view.frame = CGRect(x: 0, y: 0, width: 179, height: 118)
        view.backgroundColor = .white

        let layer0 = CALayer()
        layer0.backgroundColor = UIColor(red: 0.769, green: 0.769, blue: 0.769, alpha: 1).cgColor
        layer0.bounds = view.bounds
        layer0.position = view.center
        view.layer.addSublayer(layer0)

        let image1 = UIImage(named: "productImage1.jpg")?.cgImage
        let layer1 = CALayer()
        layer1.contents = image1
        layer1.transform = CATransform3DMakeAffineTransform(CGAffineTransform(a: 1, b: 0, c: 0, d: 1.21, tx: 0, ty: -0.11))
        layer1.bounds = view.bounds
        layer1.position = view.center
        view.layer.addSublayer(layer1)
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCell() {
        self.backgroundColor = .white
        
        self.addSubview(background)
        background.snp.makeConstraints { make in
            make.right.left.top.bottom.equalToSuperview()
        }
        
        background.addSubview(imageView)
        imageView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(15)
            make.left.equalTo(background.snp.left)
            make.right.equalTo(background.snp.right)
            make.height.equalTo(background).dividedBy(1.8)
        }
        
        background.addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.right.equalTo(background.snp.right)
            make.left.equalTo(background.snp.left)
            make.top.equalTo(imageView.snp.bottom)
            //make.bottom.equalTo(priceLabel.snp.top).offset(5)
        }
        
        background.addSubview(priceLabel)
        priceLabel.snp.makeConstraints { make in
            make.right.equalTo(background.snp.right)
            make.left.equalTo(background.snp.left)
            make.top.equalTo(titleLabel.snp.bottom).offset(5)
            make.bottom.equalTo(background.snp.bottom).offset(-5)
        }
    }
}
