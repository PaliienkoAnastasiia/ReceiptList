//
//  RecipeDetailsViewController.swift
//  RecipeBook
//
//  Created by Anastasiia Paliienko on 15.11.2020.
//  Copyright © 2020 apaliienko. All rights reserved.
//

import UIKit
import SDWebImage

final class RecipeDetailsViewController: UIViewController {
    
    var presenter: RecipeDetailsViewDelegate?

    @IBOutlet private var imageView: UIImageView!
    @IBOutlet private var activityIndicator: UIActivityIndicatorView!
    @IBOutlet private var titleLabel: UILabel!
    @IBOutlet private var detailsLabel: UILabel!

    //MARK:- View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        presenter?.onViewDidLoad()
    }

    //MARK:- Private
    private func setupUI() {
        titleLabel.text = ""
        detailsLabel.text = ""
    }

    private func loadImage(for urlString: String?) {
        guard let urlString = urlString,
            let url = URL(string: urlString) else {
                imageView.image = nil
                return
        }

        showLoader(true)
        SDWebImageManager.shared.loadImage(
            with: url,
            options: [.retryFailed, .refreshCached],
            progress: nil,
            completed: { [weak self] (image, data, error, cacheType, finished, url) in
                self?.showLoader(false)
                self?.imageView.image = image
        })
    }

    private func showLoader(_ show: Bool) {
        show ?
            activityIndicator.startAnimating() :
            activityIndicator.stopAnimating()
    }
}

//MARK:- RecipeDetailsViewProtocol
extension RecipeDetailsViewController: RecipeDetailsViewProtocol {

    func updateWith(title: String?,
                    details: String?,
                    imageUrlString: String?) {
        self.title = title

        titleLabel.text = title
        detailsLabel.text = details

        loadImage(for: imageUrlString)
    }
}
