//
//  MoviesViewController.swift
//  tvOSVideoApp
//
//  Created by sriram srinivasan on 10/02/2016.
//  Copyright © 2016 vadranam. All rights reserved.
//

import UIKit

class MoviesViewController: UIViewController,UICollectionViewDelegateFlowLayout,UICollectionViewDataSource,UIScrollViewDelegate {
    
    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var collectionView1:UICollectionView!
    
    let reusableIdentifier = "collectionCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.blackColor()
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func viewDidLayoutSubviews() {
        self.scrollView!.contentSize = CGSizeMake(1920, 2200)
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 50
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 50
    }
    
    func collectionView(collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        insetForSectionAtIndex section: Int) -> UIEdgeInsets {
            return UIEdgeInsets(top: 0.0, left: 50.0, bottom: 0.0, right: 50.0)
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        if (collectionView == self.collectionView1)
        {
            return 8
        }
        
        return 0
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        if (collectionView == self.collectionView1)
        {
            let cell : CollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier(self.reusableIdentifier, forIndexPath: indexPath) as! CollectionViewCell
            
            let  imageFilename = "\(indexPath.row+1).jpg"
            cell.imageView.image = UIImage(named: imageFilename)
            
            return cell
        }
        
        return UICollectionViewCell()
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        let playerVC = PlayerViewController()
        playerVC.playVideo()
       [self.presentViewController(playerVC, animated: true, completion: nil)]
    }
}
