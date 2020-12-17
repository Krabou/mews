//
//  FilterViewController.swift
//  ConexionMews
//
//  Created by Mathilde Picque on 29/07/2019.
//  Copyright © 2019 Mathilde Picque. All rights reserved.
//

import UIKit

class FilterViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    var styles = [StyleMusical]()

    @IBOutlet weak var S: UICollectionView!
    @IBOutlet weak var styleCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        styleCollectionView.dataSource = self
        styleCollectionView.delegate = self
        
        
        
        styles.append(StyleMusical(name: "electro", image: UIImage(named: "style electro")))
        styles.append(StyleMusical(name: "rap", image: UIImage(named: "styleRap")))
        styles.append(StyleMusical(name: "rnb", image: UIImage(named: "style R&B")))
        styles.append(StyleMusical(name: "pop", image: UIImage(named: "style pop")))
        styles.append(StyleMusical(name: "reggae", image: UIImage(named: "style reggae")))
        styles.append(StyleMusical(name: "jazz", image: UIImage(named: "styleJazz ")))
        styles.append(StyleMusical(name: "classique" , image: UIImage(named: "style classique")))
        styles.append(StyleMusical(name: "découverte", image: UIImage(named: "style surprise")))
        styles.append(StyleMusical(name: "rock", image: UIImage(named: "style rock")))
        styles.append(StyleMusical(name: "world", image: UIImage(named: "style monde")))
                
        print(styles)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return styles.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "styleCell", for: indexPath) as? StyleCollectionViewCell {
            
            cell.nameLabel.text = styles[indexPath.row].name
            cell.image.image = styles[indexPath.row].image
            
            return cell
        }
        
        return UICollectionViewCell()
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let cell = collectionView.cellForItem(at: indexPath) as? StyleCollectionViewCell {
//            print(cell.nameLabel.text)
            if cell.layer.backgroundColor == UIColor.purple.cgColor {
               cell.layer.backgroundColor = UIColor.clear.cgColor
            } else {
                cell.layer.backgroundColor = UIColor.purple.cgColor
                cell.nameLabel.textColor = UIColor.white
            }
            }
            }
    
    
    
    }
    

   


