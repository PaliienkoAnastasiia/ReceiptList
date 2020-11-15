//
//  RecipeListViewController.swift
//  RecipeBook
//
//  Created by Anastasiia Paliienko on 14.11.2020.
//  Copyright © 2020 apaliienko. All rights reserved.
//

import UIKit
import SDWebImage

final class RecipeListViewController: UIViewController {

    var presenter: RecipeListViewDelegate?
    private var recipes: [Recipe] = []

    @IBOutlet private var tableView: UITableView!
    @IBOutlet private var activityIndicator: UIActivityIndicatorView!

    //MARK:- View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Recipes"
        setupTableView()

        presenter?.onViewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    //MARK:- Private
    private func setupTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.tableFooterView = UIView()

        let cellNib = UINib(nibName: "RecipeListCell", bundle: nil)
        tableView.register(cellNib, forCellReuseIdentifier: RecipeListCell.identifier)
    }
}

//MARK:- RecipeListViewProtocol
extension RecipeListViewController: RecipeListViewProtocol {

    func update(with recipes: [Recipe]) {
        self.recipes = recipes
        tableView.reloadData()
    }

    func showLoader(_ show: Bool) {
        show ?
            activityIndicator.startAnimating() :
            activityIndicator.stopAnimating()
    }
}

//MARK:- UITableViewDataSource
extension RecipeListViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        recipes.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: RecipeListCell.identifier, for: indexPath) as? RecipeListCell else {
            return UITableViewCell()
        }
        let recipe = recipes[indexPath.row]
        cell.recipeImageId = recipe.imageUrlString ?? ""
        cell.update(title: recipe.name,
                    details: recipe.details)

        // clean up before loading
        cell.update(photo: nil)

        // image loading
        if let imageUrlString = recipe.imageUrlString,
            let url = URL(string: imageUrlString) {
            SDWebImageManager.shared.loadImage(
                with: url,
                options: [.retryFailed, .refreshCached],
                progress: nil,
                completed: { [copiedImageUrl = imageUrlString] (image, data, error, cacheType, finished, url) in
                    if (cell.recipeImageId == copiedImageUrl) {
                        cell.update(photo: image)
                        cell.contentView.setNeedsLayout()
                    }
            })
        } else {
            cell.update(photo: nil)
        }

        return cell
    }

}

//MARK:- UITableViewDelegate
extension RecipeListViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let recipe = recipes[indexPath.row]
        presenter?.onRecipeSelected(recipe)
    }
}
