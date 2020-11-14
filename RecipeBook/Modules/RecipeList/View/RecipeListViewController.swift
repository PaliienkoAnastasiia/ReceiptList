//
//  RecipeListViewController.swift
//  RecipeBook
//
//  Created by Anastasiia Paliienko on 14.11.2020.
//  Copyright © 2020 apaliienko. All rights reserved.
//

import UIKit

final class RecipeListViewController: UIViewController {

    var presenter: RecipeListViewDelegate?
    private var recipes: [Recipe] = []

    @IBOutlet private var tableView: UITableView!

    //MARK:- View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Recipes"
        setupTableView()
        setupBarButtons()

        presenter?.onViewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    //MARK:- Private
    private func setupTableView() {
        tableView.dataSource = self
        tableView.delegate = self

        let cellNib = UINib(nibName: "RecipeListCell", bundle: nil)
        tableView.register(cellNib, forCellReuseIdentifier: RecipeListCell.identifier)
    }

    private func setupBarButtons() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .refresh,
                                                            target: self,
                                                            action: #selector(RecipeListViewController.reloadButtonAction))
    }

    @objc private func reloadButtonAction() {
        presenter?.onReloadButtonTapped()
    }
}

//MARK:- RecipeListViewProtocol
extension RecipeListViewController: RecipeListViewProtocol {

    func update(with recipes: [Recipe]) {
        self.recipes = recipes
        tableView.reloadData()
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
        cell.update(title: recipe.name,
                    details: recipe.details,
                    imageUrlString: recipe.imageUrlString)
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
