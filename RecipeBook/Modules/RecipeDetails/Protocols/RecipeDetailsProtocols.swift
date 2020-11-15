//
//  RecipeDetailsProtocols.swift
//  RecipeBook
//
//  Created by Anastasiia Paliienko on 15.11.2020.
//  Copyright © 2020 apaliienko. All rights reserved.
//

protocol RecipeDetailsInteractorProtocol: class {
    var recipe: Recipe {get}
}

protocol RecipeDetailsViewProtocol: class {
    func updateWith(title: String?,
                    details: String?,
                    imageUrlString: String?)
}

protocol RecipeDetailsViewDelegate: class {
    func onViewDidLoad()
}
