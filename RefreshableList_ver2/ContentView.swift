//
//  ContentView.swift
//  RefreshableList_ver2
//
//  Created by James on 2019/12/17.
//  Copyright © 2019 James. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var articleManager = ArticleFetcher(urlString: "http://140.115.3.108/api/v1/board")
    @State var needRefresh = false
    
    var body: some View {
        NavigationView{
            List(articleManager.articles, id: \.title){article in
                ArticleRow(article: article)
            }
            .navigationBarTitle(Text("討論版"))
            .background( PullToRefresh() )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
