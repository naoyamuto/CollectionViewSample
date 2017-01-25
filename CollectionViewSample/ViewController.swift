//
//  ViewController.swift
//  CollectionViewSample
//
//  Created by 武藤　尚也 on 2017/01/25.
//  Copyright © 2017年 武藤　尚也. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let dummyTitle = ["AAAAA", "BBBBB", "CCCCC", "DDDDD", "EEEEE", "FFFFFF", "GGGGGG", "HHHHHH"]
    let dummyImage = UIImage(named: "samplepic.png")

    @IBOutlet weak var collectionVIew: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "CustomCollectionViewCell", bundle: nil)
        collectionVIew.registerNib(nib, forCellWithReuseIdentifier: "Hoge")
        collectionVIew.dataSource = self
        collectionVIew.delegate = self
        collectionVIew.backgroundColor = UIColor.clearColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Hoge", forIndexPath: indexPath) as! CustomCollectionViewCell
        cell.titleLabel.text = dummyTitle[indexPath.row]
        cell.imageView.image  = dummyImage
        return cell
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSize(width: 200 , height: 200 )
    }
}