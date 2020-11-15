//
//  RecipeListCell.swift
//  RecipeBook
//
//  Created by Anastasiia Paliienko on 14.11.2020.
//  Copyright © 2020 apaliienko. All rights reserved.
//

import UIKit

class RecipeListCell: UITableViewCell {

    static let identifier = "RecipeListCell"

    @IBOutlet private var photoImageView: UIImageView!
    @IBOutlet private var titleLabel: UILabel!
    @IBOutlet private var detailsLabel: UILabel!

    var recipeImageId: String = ""

    override func awakeFromNib() {
        super.awakeFromNib()

        titleLabel.text = nil
        detailsLabel.text = nil
    }

    func update(title: String?,
                details: String?) {
        titleLabel.text = title
        detailsLabel.text = details
    }

    func update(photo: UIImage?) {
        photoImageView.image = photo
    }
}
