//
//  ColorViewController.swift
//  PhotosAndCollectionView
//
//  Created by lee bennett on 10/25/21.
//

import UIKit

class ColorViewController: UIViewController, UICollectionViewDataSource {

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2000
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // Create the cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MainCell", for: indexPath)
        
        // Configure the cell, we'll assign a random background color
        
        // 0-255
        // Normalized value between 0-1
        let randomColor = UIColor(red: CGFloat(Int.random(in: 0...255))/255.0,
                                  green: CGFloat(Int.random(in: 0...255))/255.0,
                                  blue: CGFloat(Int.random(in: 0...255))/255.0,
                                  alpha: 1.0)
        cell.backgroundColor = randomColor
        
        
        // Return the cell
        return cell
    }
}
