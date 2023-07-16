//
//  ContentView.swift
//  TheSweaterStore
//
//  Created by Chinmay S Nawkar on 16/07/23.
//

import SwiftUI
// Adding Content to the ContentView

struct ContentView: View {
    @StateObject var cartManager = CartManager() // instance of cart manager.
    
    // The LazyVGrid : req two Args
    //columns type of GridItemArray & Spacing as well
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        NavigationView {
            //Adding this to NavigationView
            ScrollView {
                //Adding this to ScrollView
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(productList, id: \.id) { product in ProductCard(product: product)
                            .environmentObject(cartManager)
                    }
                }
                .padding()
            }
            .navigationTitle(Text("The Sweater Store"))
            .toolbar {
                //implementing it from ContentView to CartView
                NavigationLink {
                    CartView()
                        .environmentObject(cartManager)
                }label: {
                    //calling CartButton
                    CartButton(numberofProducts: cartManager.products.count)
                }
               
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
