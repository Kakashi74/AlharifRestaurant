//
//  ImageCell.swift
//  RagehResturant
//
//  Created by Ahmed on 2/29/20.
//  Copyright © 2020 AhmedDev. All rights reserved.
//

import UIKit

class ImageCell: UICollectionViewCell {

   
    @IBOutlet weak var imageView: UIImageView!
    
    var image : UIImage! {
          
          didSet{
              imageView.image = image
              
          }
      }
      
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
