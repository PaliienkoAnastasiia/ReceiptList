//
//  RecipeListInteractor.swift
//  RecipeBook
//
//  Created by Anastasiia Paliienko on 14.11.2020.
//  Copyright © 2020 apaliienko. All rights reserved.
//

final class RecipeListInteractor {

    private let recipes: [Recipe] =
        [Recipe(name: "Cape Codder",
                details: "Call it a vodka cranberry or a cape codder, either way, it's a simple, tasty drink. All you need is cranberry juice and a carefully chosen inexpensive bottle of vodka. If you feel like getting fancy, shake the duo and serve it \"up\" for a crantini.\n\nBuilding on that foundation, you can add a little to create other refreshing mixed drinks. For instance, add pineapple juice and you have a bay breeze, orange juice creates a madras, and grapefruit juice transforms it into a sea breeze.",
                imageUrlString: "https://www.thespruceeats.com/thmb/_5c4wDdIuKqyTIpX8dCQMdov9OY=/1000x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/cape-codder-5a8f1a45d8fdd50037bc73c9.jpg"),
         Recipe(name: "Margarita and Daiquiri",
                details: "The margarita is an incredibly simple drink of tequila, triple sec, and lime juice. While it is better with top-shelf spirits, there are good budget-friendly options that make an excellent drink, especially if you use fresh lime. There's no way to get bored with a margarita either! Shake it, blend it, or toss in some extra flavor. A bottle of tequila offers many possibilities, and there are several flavored margarita recipes to explore.",
                imageUrlString: "https://www.thespruceeats.com/thmb/Tv8QMMqzHqF6u0JX12XNeYxZVsE=/3200x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/fresh-margarita-cocktail-recipe-759317-step-05-dae71772c4304cf7911489a1c7d219ab.jpg"),
         Recipe(name: "Daiquiri",
                details: "The daiquiri is just as versatile as the margarita. Rum is even cheaper, and this recipe simply requires lime juice and simple syrup. Stick with the original cocktail or diversify your drinking experience with any flavor you can imagine.\n\nThe strawberry daiquiri is a favorite and either fresh or frozen berries will do. Toss a banana into the blender and you have a banana daiquiri. You can also add fruit and herbal flavors to the syrup and create some fascinating mixes like the rhubarb-rosemary daiquiri.",
                imageUrlString: "https://www.thespruceeats.com/thmb/Z6ciBdsF1ZfCSLJmQYYIxUZldcM=/2886x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/classic-daiquiri-recipe-759294-Final-5b9fe39cc9e77c0050d238f9.jpg"),
         Recipe(name: "Black Russian",
                details: "Easy and delicious, the black Russian is one of the best drinks for a tight budget. Be sure to check your liquor store for coffee liqueurs that are cheaper than Kahlua.\n\nWith a few extras at hand, you can make any number of vodka drinks. Add cream and you have a white Russian, or use Irish cream for a mudslide. Top it with club soda for a Smith and Wesson, or cola for a Colorado bulldog. Whiskey makes it a sneaky Pete, while tequila's a great option for a dirty bird.",
                imageUrlString: "https://www.thespruceeats.com/thmb/3uarfhx05QGa7pEzSqDRjTnOF0U=/2724x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/_black-russian-cocktail-recipe-759597-hero-01-5bca32e7c9e77c0051b6b477.jpg"),
         Recipe(name: "Lemon Drop Martini",
                details: "Vodka, lemon juice, and simple syrup combine for an elegant and low-cost drink. The zing of a freshly-made lemon drop martini is a pure pleasure. The syrup is nothing more than sugar and water, so it costs just pennies to make. Use the lilac lemon drop martini recipe as inspiration for infusing it with flavor and enjoy a whole new world of vodka martinis that taste just as good as those $12 cocktails at the bar.",
                imageUrlString: "https://www.thespruceeats.com/thmb/WajSkOYxuNksOiOCny68z-aNDZM=/1000x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/lemon-martini-5a8f1a836edd65003633876f.jpg")]
}

//MARK:- RecipeListInteractorProtocol
extension RecipeListInteractor: RecipeListInteractorProtocol {

    func loadData(completion: ([Recipe]) -> Void) {
        completion(recipes)
    }
}
