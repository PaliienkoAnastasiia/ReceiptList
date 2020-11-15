//
//  RecipeDetailsPresenter.swift
//  RecipeBook
//
//  Created by Anastasiia Paliienko on 15.11.2020.
//  Copyright © 2020 apaliienko. All rights reserved.
//

import UIKit

final class RecipeDetailsPresenter {

    var interactor: RecipeDetailsInteractorProtocol
    weak var view: RecipeDetailsViewProtocol?

    init(with interactor: RecipeDetailsInteractorProtocol,
         view: RecipeDetailsViewProtocol) {
        self.interactor = interactor
        self.view = view
    }
}

//MARK:- RecipeDetailsViewDelegate
extension RecipeDetailsPresenter: RecipeDetailsViewDelegate {

    func onViewDidLoad() {
        let recipe = interactor.recipe
        view?.updateWith(title: recipe.name,
                         details: recipe.details,
                         imageUrlString: recipe.imageUrlString)
    }
}
