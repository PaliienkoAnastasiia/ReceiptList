//
//  RecipeListBuilder.swift
//  RecipeBook
//
//  Created by Anastasiia Paliienko on 14.11.2020.
//  Copyright © 2020 apaliienko. All rights reserved.
//

import UIKit

final class RecipeListBuilder {

    class func viewController() -> RecipeListViewController {
        let interactor = RecipeListInteractor()
        let wireframe = RecipeListWireframe()
        let viewController = RecipeListViewController.init(nibName: "RecipeListViewController", bundle: nil)
        let presenter = RecipeListPresenter.init(with: interactor, wireframe: wireframe, view: viewController)
        
        viewController.presenter = presenter
    
        presenter.wireframe = wireframe
        presenter.view = viewController
        presenter.interactor = interactor
        
        wireframe.viewController = viewController
        
        return viewController
    }
}
