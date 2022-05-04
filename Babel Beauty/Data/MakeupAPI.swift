//
//  CookbookAPI.swift
//  Babel Beauty
//
//  Created by Erin Hurlburt on 4/30/22.
//

import Foundation

let MAKEUP_ROOT = "http://makeup-api.herokuapp.com/api/v1/products.json"
let SEARCH_ENDPOINT = "\(MAKEUP_ROOT)"

enum CookbookAPIError: Error {
    case unsuccessfulDecode
}

func searchMakeup(name: String, product_type: String, brand: String) async throws -> MakeupSearchPage {
    // There are more structured ways to construct a URL with query parameters but
    // this suffices for this fixed pair.
    guard let url = URL(string: "\(SEARCH_ENDPOINT)?name=\(name)&product_type=\(product_type)&brand=\(brand)") else {
        fatalError("Should never happen, but just in case…URL didn’t work 😔")
    }

    let (data, _) = try await URLSession.shared.data(from: url)
    if let decodedPage = try? JSONDecoder().decode(MakeupSearchPage.self, from: data) {
        return decodedPage
    } else {
        throw CookbookAPIError.unsuccessfulDecode
    }
}
