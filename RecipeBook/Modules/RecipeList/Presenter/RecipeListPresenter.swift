//
//  RecipeListPresenter.swift
//  RecipeBook
//
//  Created by Anastasiia Paliienko on 14.11.2020.
//  Copyright © 2020 apaliienko. All rights reserved.
//

final class RecipeListPresenter {

    var wireframe: RecipeListWireframeProtocol
    var interactor: RecipeListInteractorProtocol
    weak var view: RecipeListViewProtocol?

    init(with interactor: RecipeListInteractor,
         wireframe: RecipeListWireframe,
         view: RecipeListViewProtocol) {
        self.interactor = interactor
        self.wireframe = wireframe
        self.view = view
    }

    //MARK:- Private
    private func loadData() {
        view?.showLoader(true)

        interactor.loadData { [weak self] recipes in
            self?.view?.update(with: recipes)
            self?.view?.showLoader(false)
        }
    }
}

//MARK:- RecipeListViewDelegate
extension RecipeListPresenter: RecipeListViewDelegate {

    func onViewDidLoad() {
        loadData()
    }

    func onRecipeSelected(_ recipe: Recipe) {
        wireframe.showRecipeDetails(recipe)
    }
}
