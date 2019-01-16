//
//  CityCollectionViewCell.swift
//  tutorial
//
//  Created by Evgenii Trapeznikov on 1/7/19.
//  Copyright © 2019 Evgenii Trapeznikov. All rights reserved.
//

import UIKit

class CityCollectionViewCell: UICollectionViewCell, UIGestureRecognizerDelegate {
    
    static let cellSize = CGSize(width: 250, height: 350)
    static let identifier = "CityCollectionViewCell"
    
    @IBOutlet weak var cityTitle: UILabel!
    @IBOutlet weak var cityImage: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var closeButton: UIButton!
    
    private var collectionView: UICollectionView?
    private var index: Int?
    
    func configure(with city: City, collectionView: UICollectionView, index: Int) {
        cityTitle.text = city.name
        cityImage.image = UIImage(named: city.image)
        descriptionLabel.text = city.description
        
        self.collectionView = collectionView
        self.index = index
    }
    
    @IBAction func close(_ sender: Any) {
    }
}
