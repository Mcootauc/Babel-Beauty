//
//  CookbookAPI.swift
//  Babel Cookbook
//
//  Created by Erin Hurlburt on 4/30/22.
//

import Foundation

let COOK_ROOT = "www.themealdb.com/api/json/v1/1"
let SEARCH_ENDPOINT = "\(COOK_ROOT)/character"

enum CookbookAPIError: Error {
    case unsuccessfulDecode
}

func searchRecipes(strMeal: String, strCategory: String, strArea: String) async throws -> RecipeSearchPage {
    // There are more structured ways to construct a URL with query parameters but
    // this suffices for this fixed pair.
    guard let url = URL(string: "\(SEARCH_ENDPOINT)?strMeal=\(strMeal)&strCategory=\(strCategory)&strArea=\(strArea)") else {
        fatalError("Should never happen, but just in case…URL didn’t work 😔")
    }

    let (data, _) = try await URLSession.shared.data(from: url)
    if let decodedPage = try? JSONDecoder().decode(RecipeSearchPage.self, from: data) {
        return decodedPage
    } else {
        throw CookbookAPIError.unsuccessfulDecode
    }
}
