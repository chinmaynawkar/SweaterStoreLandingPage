//
//  Product.swift
//  TheSweaterStore
//
//  Created by Chinmay S Nawkar on 16/07/23.
//

import Foundation

//this will tell what variables  each sweater we create have.
struct Product: Identifiable {
    var id = UUID() // automatically generated by swift uniquely identify items
    var name: String
    var image: String
    var price: Int
}

//creating the product instance and its data

var productList = [Product(name: "Orange Sweater", image: "sweater1", price: 700),
                   Product(name: "Red wine sweater", image: "sweater2", price: 89),
                                      Product(name: "Sand sweater", image: "sweater3", price: 650),
                                      Product(name: "Sea sweater", image: "sweater4", price: 600),
                                      Product(name: "Cream sweater", image: "sweater5", price: 800),
                                      Product(name: "Beige sweater", image: "sweater6", price: 749),
                                      Product(name: "Grey sweater", image: "sweater7", price: 526),
                                      Product(name: "Mink sweater", image: "sweater8", price: 999)]

