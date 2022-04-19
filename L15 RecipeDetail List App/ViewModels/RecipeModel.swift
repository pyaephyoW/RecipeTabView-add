//
//  RecipeModel.swift
//  L15 RecipeDetail List App
//
//  Created by Thi Thi on 11/04/2022.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        
        self.recipes = DataService.getLocalData()
        
    }
    
}
