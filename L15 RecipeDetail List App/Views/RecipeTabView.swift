//
//  RecipeTabView.swift
//  L15 RecipeDetail List App
//
//  Created by Thi Thi on 19/04/2022.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
       
        TabView {
            
            Text("Feature View")
                .tabItem {
                    VStack {
                        Image(systemName: "star.fill")
                        Text("Feature")
                    }
                }
            RecipeListView()
                .tabItem {
                    VStack {
                        Image(systemName: "list.bullet")
                        Text("list")
                    }
                }
        }
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
