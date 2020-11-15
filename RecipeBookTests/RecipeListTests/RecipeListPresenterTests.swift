//
//  RecipeListPresenterTests.swift
//  RecipeBookTests
//
//  Created by Anastasiia Paliienko on 15.11.2020.
//  Copyright © 2020 apaliienko. All rights reserved.
//

import XCTest
@testable import RecipeBook

class RecipeListPresenterTests: XCTestCase {

    var presenter: RecipeListPresenter!
    var viewMock: RecipeListViewMock!
    var interactorMock: RecipeListInteractorMock!
    var wireframeMock: RecipeListWireframeMock!

    override func setUp() {
        interactorMock = RecipeListInteractorMock()
        viewMock = RecipeListViewMock()
        wireframeMock = RecipeListWireframeMock()
        presenter = RecipeListPresenter(with: interactorMock,
                                        wireframe: wireframeMock,
                                        view: viewMock)
    }

    override func tearDown() {
        interactorMock = nil
        viewMock = nil
        wireframeMock = nil
        presenter = nil
    }

    func test_showDetails_onRecipeCellTapped() {
        let stubbedRecipe = Recipe(name: "Name", details: "Details", imageUrlString: "ImageUrlString")

        //when
        presenter.onRecipeSelected(stubbedRecipe)

        //then
        XCTAssertTrue(wireframeMock.isShowRecipeDetailsFuncCalled)
    }

    func test_loadData_onViewDidLoad() {
        //when
        presenter.onViewDidLoad()

        //then
        XCTAssertTrue(interactorMock.isLoadDataFuncCalled)
    }

    func test_viewUpdated_AfterLoadData() {
        //when
        presenter.onViewDidLoad()

        //then
        XCTAssertTrue(viewMock.isUpdateWithRecipesFuncCalled)
    }
}
