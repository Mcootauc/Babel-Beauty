//
//  ListView.swift
//  Babel Cookbook
//
//  Created by Erin Hurlburt on 4/30/22.
//

import SwiftUI

struct ListView: View {
    var searchMeal: String
    var searchCategory: String
    var searchArea: String
    
    @State var loading = false
    @State var errorOccurred = false
    @State var results: [Recipe] = []
    
    var body: some View {
        NavigationView {
            VStack {
                if loading {
                    ProgressView()
                } else if errorOccurred {
                    // Very bare bones of course; robust apps will do this better.
                    Text("Sorry, something went wrong.")
                } else {
                    //List(results, id: \.id) { item in
                    List {
                        ForEach(results, id: \.idMeal) { item in
                            NavigationLink {
                                DetailView(recipe: item)
                            } label: {
                                RowView(recipe: item)
                                    .navigationBarHidden(true)
                            }
                            
                        }
                        
                        
                    }.refreshable {
                        await loadSearchResults()
                    }
                    
                }
            }
            
            .task(id: searchCategory) {
                await loadSearchResults()
            }
            
        }
    }
    
    func loadSearchResults() async {
        errorOccurred = false
        loading = true
        
        do {
            let searchPage = try await searchRecipes(strMeal: searchMeal, strCategory: searchCategory, strArea: searchArea)
            results = searchPage.results
        } catch {
            errorOccurred = true
            
            // Only a dev will be able to see this, of course.
            debugPrint("Unexpected error: \(error)")
        }
        
        loading = false
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(searchMeal: "", searchCategory: "", searchArea: "")
    }
}

