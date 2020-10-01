//
//  PlaylistLinks.swift
//  PlaylistFeatureforMTTN
//
//  Created by Tushar Tapadia on 29/09/20.
//  Copyright © 2020 Tushar Elangovan. All rights reserved.
//

import Foundation
import UIKit
import FittedSheets

class playlistLinkViewController:UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
    }
    
    lazy var bg: UIView = {
        let uv = UIView()
        uv.backgroundColor = UIColor.rgb(red: 169, green: 169, blue: 169, alpha: 0)
        return uv
    }()
    

    lazy var heading: UILabel = {
        let label = UILabel()
       // label.font = UIFont.boldSystemFont(ofSize: 19)
        label.text = "HELLO"
        label.font = UIFont(name: "Avenir", size: 25)
        label.numberOfLines = 0
        label.textColor = .black
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    lazy var imageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "musicCode")
        iv.contentMode = .scaleAspectFit
        iv.layer.borderWidth = 1.5
        iv.layer.borderColor = UIColor.white.cgColor
        iv.layer.cornerRadius = 15
        iv.layer.masksToBounds = true
        iv.clipsToBounds = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    func setupLayout()
    {
        view.addSubview(bg)
        bg.anchorWithConstants(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0)
        bg.addSubview(heading)
        heading.anchorWithConstants(top: bg.topAnchor, left: bg.leftAnchor, bottom: bg.bottomAnchor, right: bg.rightAnchor, topConstant: 25, leftConstant: 16, bottomConstant: 0, rightConstant: 16)
        bg.addSubview(imageView)
        imageView.anchorWithConstants(top: heading.bottomAnchor, left: bg.leftAnchor, bottom: bg.bottomAnchor, right: bg.rightAnchor, topConstant: 10, leftConstant: 0, bottomConstant: 0, rightConstant: 0)
    }

}



