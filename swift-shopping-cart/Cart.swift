//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by James Campagno on 9/26/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Cart {
    var items: [Item] = []
    
    func totalPriceInCents() -> Int {
        var result = 0
        for item in items{
            result += item.priceInCents
        }
        return result
    }
    
    func add(item:Item) {
        self.items.append(item)
    }
    
    func remove(item:Item) {
        for (index, itemInCart) in items.enumerated() {
            if itemInCart.name == item.name && itemInCart.priceInCents == item.priceInCents {
                self.items.remove(at: index)
            }
        }
    }
    
    func items(withName name:String) -> [Item] {
        var results: [Item] = []
        
        for item in self.items {
            if name == item.name {
                results.append(item)
            }
        }
        return results
    }
    
    func items(withMinPrice price:Int) -> [Item] {
        var results: [Item] = []
        
        for item in self.items {
            if price <= item.priceInCents {
                results.append(item)
            }
        }
        return results
    }
    
    func items(withMaxPrice price:Int) -> [Item] {
        var results: [Item] = []
        
        for item in self.items {
            if price >= item.priceInCents {
                results.append(item)
            }
        }
        return results
    }
}
