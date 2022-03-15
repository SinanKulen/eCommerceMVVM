//
//  ViewController.swift
//  eCommerceMVVM
//
//  Created by Sinan Kulen on 10.03.2022.
//

import UIKit
import SnapKit

class ProductViewController: UIViewController {

    private lazy var searchTextField: UITextField = {
        var view = UITextField()
        view.frame = CGRect(x: 0, y: 0, width: 278.29, height: 22)
        view.backgroundColor = .white

        view.textColor = UIColor(red: 0.613, green: 0.618, blue: 0.727, alpha: 1)
        view.font = UIFont(name: "Titillium-Semibold", size: 16)
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.15
        view.attributedText = NSMutableAttributedString(string: "Kategori veya ürün ara", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
        return view
    }()
    
    private lazy var searchIcon: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "Icon")
        view.frame = CGRect(x: 0, y: 0, width: 15.96, height: 16)
        view.layer.backgroundColor = UIColor(red: 0.098, green: 0.098, blue: 0.098, alpha: 1).cgColor
        view.backgroundColor = .white
        return view
    }()
    
    private lazy var searchDetail: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "Mask")
        view.frame = CGRect(x: 0, y: 0, width: 370, height: 55)
        view.backgroundColor = .white
        view.layer.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        return view
    }()
    
    private lazy var searchBackground: UIView = {
        var view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: 370, height: 55)
        view.backgroundColor = .white

        var shadows = UIView()
        shadows.frame = view.frame
        shadows.clipsToBounds = false
        view.addSubview(shadows)

        let shadowPath0 = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: 12)
        let layer0 = CALayer()
        layer0.shadowPath = shadowPath0.cgPath
        layer0.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.08).cgColor
        layer0.shadowOpacity = 1
        layer0.shadowRadius = 15
        layer0.shadowOffset = CGSize(width: 0, height: 6)
        layer0.bounds = shadows.bounds
        layer0.position = shadows.center
        shadows.layer.addSublayer(layer0)

        var shapes = UIView()
        shapes.frame = view.frame
        shapes.clipsToBounds = true
        view.addSubview(shapes)

        let layer1 = CALayer()
        layer1.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        layer1.bounds = shapes.bounds
        layer1.position = shapes.center
        shapes.layer.addSublayer(layer1)
        shapes.layer.cornerRadius = 12
        return view
    }()
    
    private lazy var sortButton: UIButton = {
        var view = UIButton()
        view.setImage(UIImage(named: "Sort"), for: .normal)
        view.frame = CGRect(x: 0, y: 0, width: 69, height: 20)
        view.backgroundColor = .white
        view.layer.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        return view
    }()
    
    private lazy var filterButton: UIButton = {
        var view = UIButton()
        view.setImage(UIImage(named: "Filter"), for: .normal)
        view.frame = CGRect(x: 0, y: 0, width: 66, height: 20)
        return view
    }()

    private lazy var lineImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "Line")
        view.frame = CGRect(x: 0, y: 0, width: 0, height: 33)
        view.backgroundColor = .white

        var stroke = UIView()
        stroke.bounds = view.bounds.insetBy(dx: -0.5, dy: -0.5)
        stroke.center = view.center
        view.addSubview(stroke)
        view.bounds = view.bounds.insetBy(dx: -0.5, dy: -0.5)
        stroke.layer.borderWidth = 1
        stroke.layer.borderColor = UIColor(red: 0.882, green: 0.882, blue: 0.882, alpha: 1).cgColor
        return view
    }()
  
    private lazy var filterSortBackground: UIView = {
        var view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: 371, height: 57)
        view.backgroundColor = .white

        var shadows = UIView()
        shadows.frame = view.frame
        shadows.clipsToBounds = false
        view.addSubview(shadows)

        let shadowPath0 = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: 50)
        let layer0 = CALayer()
        layer0.shadowPath = shadowPath0.cgPath
        layer0.shadowColor = UIColor(red: 0.253, green: 0.46, blue: 0.805, alpha: 0.05).cgColor
        layer0.shadowOpacity = 1
        layer0.shadowRadius = 20
        layer0.shadowOffset = CGSize(width: 0, height: 10)
        layer0.bounds = shadows.bounds
        layer0.position = shadows.center
        shadows.layer.addSublayer(layer0)

        var shapes = UIView()
        shapes.frame = view.frame
        shapes.clipsToBounds = true
        view.addSubview(shapes)

        let layer1 = CALayer()
        layer1.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        layer1.bounds = shapes.bounds
        layer1.position = shapes.center
        shapes.layer.addSublayer(layer1)
        shapes.layer.cornerRadius = 50
        return view
    }()
    
    private lazy var profileButton: UIButton = {
        var view = UIButton()
        view.setImage(UIImage(named: "Profile"), for: .normal)
        view.frame = CGRect(x: 0, y: 0, width: 63, height: 69)
        view.backgroundColor = .white
        return view
    }()
    
    private lazy var ordersButton: UIButton = {
        var view = UIButton()
        view.setImage(UIImage(named: "Orders"), for: .normal)
        view.frame = CGRect(x: 0, y: 0, width: 63, height: 69)
        view.backgroundColor = .white
        return view
    }()
    
    private lazy var categoryButton: UIButton = {
        var view = UIButton()
        view.setImage(UIImage(named: "Category"), for: .normal)
        view.frame = CGRect(x: 0, y: 0, width: 63, height: 69)
        view.backgroundColor = .white
        return view
    }()
    
    private lazy var homePageButton: UIButton = {
        var view = UIButton()
        view.setImage(UIImage(named: "HomePage"), for: .normal)
        view.frame = CGRect(x: 0, y: 0, width: 63, height: 70)
        view.backgroundColor = .white
        return view
    }()
    
    private lazy var menuBackground: UIView = {
        var view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: 414, height: 70)
        view.backgroundColor = .white

        var shadows = UIView()
        shadows.frame = view.frame
        shadows.clipsToBounds = false
        view.addSubview(shadows)

        let shadowPath0 = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: 0)
        let layer0 = CALayer()
        layer0.shadowPath = shadowPath0.cgPath
        layer0.shadowColor = UIColor(red: 0.253, green: 0.46, blue: 0.805, alpha: 0.02).cgColor
        layer0.shadowOpacity = 1
        layer0.shadowRadius = 20
        layer0.shadowOffset = CGSize(width: 0, height: -20)
        layer0.bounds = shadows.bounds
        layer0.position = shadows.center
        shadows.layer.addSublayer(layer0)
        view.layer.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        setupView()
    }

    func setupView() {
        view.backgroundColor = .systemBackground
        view.addSubview(searchBackground)
        searchBackground.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(52)
            make.left.right.equalToSuperview().offset(22)
            make.height.equalToSuperview().dividedBy(12)
        }
        
        searchBackground.addSubview(searchIcon)
        searchIcon.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.left.equalToSuperview().offset(17)
        }
        
        searchBackground.addSubview(searchTextField)
        searchTextField.snp.makeConstraints { make in
            make.centerY.equalToSuperview().offset(-5)
            make.left.equalToSuperview().offset(45)
        }
        
        searchBackground.addSubview(searchDetail)
        searchDetail.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-4)
        }
        
        view.addSubview(filterSortBackground)
        filterSortBackground.snp.makeConstraints { make in
            make.top.equalTo(searchBackground.snp.bottom).offset(24)
            make.left.right.equalTo(searchBackground)
            make.height.equalToSuperview().dividedBy(12)
        }
        
        filterSortBackground.addSubview(filterButton)
        filterButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview().dividedBy(0.75)
            make.centerY.equalToSuperview()
        }
        
        filterSortBackground.addSubview(lineImage)
        lineImage.snp.makeConstraints { make in
            make.centerX.equalToSuperview().offset(-22)
            make.centerY.equalTo(filterSortBackground)
        }
        
        filterSortBackground.addSubview(sortButton)
        sortButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview().dividedBy(2)
            make.centerY.equalTo(filterSortBackground)
        }
        
        view.addSubview(menuBackground)
        menuBackground.snp.makeConstraints { make in
            make.left.right.equalToSuperview()
            make.bottom.equalTo(view.snp.bottom)
            make.height.equalTo(29)
        }

        menuBackground.addSubview(profileButton)
        profileButton.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-29)
            make.bottom.equalToSuperview().offset(-1)
        }
        
        menuBackground.addSubview(ordersButton)
        ordersButton.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-127)
            make.bottom.equalToSuperview().offset(-1)
        }
        
        menuBackground.addSubview(categoryButton)
        categoryButton.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(126)
            make.bottom.equalToSuperview().offset(-1)
        }
        
        menuBackground.addSubview(homePageButton)
        homePageButton.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(28)
            make.bottom.equalToSuperview().offset(-1)
        }
        
        
//        view.addSubview(filterSortBackground)
//        filterSortBackground.addSubview(filterButton)
//        filterButton.translatesAutoresizingMaskIntoConstraints = false
//        filterButton.widthAnchor.constraint(equalToConstant: 66).isActive = true
//        filterButton.heightAnchor.constraint(equalToConstant: 20).isActive = true
//        filterButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 266).isActive = true
//        filterButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive = true
//
//        filterSortBackground.addSubview(sortButton)
//        sortButton.translatesAutoresizingMaskIntoConstraints = false
//        sortButton.widthAnchor.constraint(equalToConstant: 69).isActive = true
//        sortButton.heightAnchor.constraint(equalToConstant: 20).isActive = true
//        sortButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 80).isActive = true
//        sortButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive = true
//
//        filterSortBackground.addSubview(lineImage)
//        lineImage.translatesAutoresizingMaskIntoConstraints = false
//        lineImage.widthAnchor.constraint(equalToConstant: 0).isActive = true
//        lineImage.heightAnchor.constraint(equalToConstant: 33).isActive = true
//        lineImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 207).isActive = true
//        lineImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 143).isActive = true
//
//        filterSortBackground.translatesAutoresizingMaskIntoConstraints = false
//        filterSortBackground.widthAnchor.constraint(equalToConstant: 371).isActive = true
//        filterSortBackground.heightAnchor.constraint(equalToConstant: 57).isActive = true
//        filterSortBackground.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 21).isActive = true
//        filterSortBackground.topAnchor.constraint(equalTo: view.topAnchor, constant: 131).isActive = true
//       // --------------------
//        view.addSubview(menuBackground)
//        menuBackground.addSubview(profileButton)
//        profileButton.translatesAutoresizingMaskIntoConstraints = false
//        profileButton.widthAnchor.constraint(equalToConstant: 63).isActive = true
//        profileButton.heightAnchor.constraint(equalToConstant: 69).isActive = true
//        profileButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 322).isActive = true
//        profileButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 666).isActive = true
//
//        menuBackground.addSubview(ordersButton)
//        ordersButton.translatesAutoresizingMaskIntoConstraints = false
//        ordersButton.widthAnchor.constraint(equalToConstant: 63).isActive = true
//        ordersButton.heightAnchor.constraint(equalToConstant: 69).isActive = true
//        ordersButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 224).isActive = true
//        ordersButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 666).isActive = true
//
//        menuBackground.addSubview(categoryButton)
//        categoryButton.translatesAutoresizingMaskIntoConstraints = false
//        categoryButton.widthAnchor.constraint(equalToConstant: 63).isActive = true
//        categoryButton.heightAnchor.constraint(equalToConstant: 69).isActive = true
//        categoryButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 126).isActive = true
//        categoryButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 666).isActive = true
//
//        menuBackground.addSubview(homePageButton)
//        homePageButton.translatesAutoresizingMaskIntoConstraints = false
//        homePageButton.widthAnchor.constraint(equalToConstant: 63).isActive = true
//        homePageButton.heightAnchor.constraint(equalToConstant: 70).isActive = true
//        homePageButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 28).isActive = true
//        homePageButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 666).isActive = true
//
//        menuBackground.translatesAutoresizingMaskIntoConstraints = false
//        menuBackground.widthAnchor.constraint(equalToConstant: 414).isActive = true
//        menuBackground.heightAnchor.constraint(equalToConstant: 70).isActive = true
//        menuBackground.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
//        menuBackground.topAnchor.constraint(equalTo: view.topAnchor, constant: 666).isActive = true
    }
}

