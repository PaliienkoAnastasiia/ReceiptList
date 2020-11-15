//
//  RecipeDetailsBuilder.swift
//  RecipeBook
//
//  Created by Anastasiia Paliienko on 15.11.2020.
//  Copyright © 2020 apaliienko. All rights reserved.
//

import UIKit

final class RecipeDetailsBuilder {

    class func show(in navigationController: UINavigationController,
                    with recipe: Recipe) {
        let controller = RecipeDetailsBuilder.viewController(with: recipe)
        navigationController.pushViewController(controller, animated: true)
    }

    class func viewController(with recipe: Recipe) -> RecipeDetailsViewController {
        let interactor = RecipeDetailsInteractor(recipe: recipe)
        let viewController = RecipeDetailsViewController.init(nibName: "RecipeDetailsViewController", bundle: nil)
        let presenter = RecipeDetailsPresenter.init(with: interactor, view: viewController)
        
        viewController.presenter = presenter

        presenter.view = viewController
        presenter.interactor = interactor
        
        return viewController
    }
}
