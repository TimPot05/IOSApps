import SwiftUI

struct Card: Identifiable {
   // 1 properties
    var suit: String
    var value: Int
    var symbol: String
    var imageName: String
    var id: String = UUID().uuidString
    
    
    
    // 2 constructors or initializers
    init(suit: String, value: Int, symbol: String, imageName: String) {
        self.suit = suit
        self.value = value
        self.symbol = symbol
        self.imageName = imageName
    }
    
    init(suit: String, value: Int, symbol: String) {
        self.suit = suit
        self.value = value
        self.symbol = symbol
        self.imageName = "card_\(suit)_\(symbol)"
    }
    
    // 3 methods
}
