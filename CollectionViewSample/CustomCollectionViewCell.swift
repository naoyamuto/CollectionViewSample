//
//  CustomCollectionViewCell.swift
//  CollectionViewSample
//
//  Created by 武藤　尚也 on 2017/01/25.
//  Copyright © 2017年 武藤　尚也. All rights reserved.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
