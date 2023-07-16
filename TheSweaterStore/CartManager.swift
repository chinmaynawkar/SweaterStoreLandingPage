//
//  CartManager.swift
//  TheSweaterStore
//
//  Created by Chinmay S Nawkar on 16/07/23.
//

import Foundation
// this protocol is used to update  made in this class instantly update in UI
class CartManager: ObservableObject {
    @Published private(set) var products: [Product] = []
    @Published private(set) var total:Int = 0
    
    func addToCart(product: Product){
        products.append(product)
        total += product.price // to update the totalPrice in the Cart
    }
    
    func removeFromCart(product: Product) {
        products = products.filter { $0.id != product.id }
        total -= product.price
        }
    }

