import SwiftUI

struct ContentView: View {
    @State var card: Card = Card(suit: "hearts", value: 10, symbol: "Q")
    @State var deck: Deck = Deck()
    @State var gameOver: Bool = false
    @State var playerCards: [Card] = []
    @State var dealerCards: [Card] = []
    @State var playerBusted: Bool = false
    @State var dealerShowingScore: Int {
        if dealerCards.count > 1 {
            return dealerCards[1].value
        }
    }
    
    
    var playerScore: Int {
        var total = 0 
        for card in playerCards{
            total += card.value
        }
        var aceCount = 0
        for card in playerCards{
            if card.symbol == "A" {
                aceCount += 1
            }
        }
        while aceCount > 0 && total > 21 {
            total -= 10
            aceCount -= 1
        }
        if playerCards.contains(where: {$0.symbol == "A" && $0.value == 11}) && total > 21 {
            total -= 10
        } 
        return total
    }
    var dealerScore: Int {
        var total = 0 
        for card in dealerCards{
            total += card.value
        }
        var aceCount = 0
        for card in dealerCards{
            if card.symbol == "A" {
                aceCount += 1
            }
        }
        while aceCount > 0 && total > 21 {
            total -= 10
            aceCount -= 1
        }
        if dealerCards.contains(where: {$0.symbol == "A" && $0.value == 11}) && total > 21 {
            total -= 10
        } 
        return total
    }
//    var dealerScore: Int {
//        var total = 0 
//        for card in dealerCards{
//            total += card.value
//        }
//        if dealerCards.contains(where: {$0.symbol == "A" && $0.value == 11}) && total > 21 {
//            total -= 10
//        } 
//        return total
//    }
    
    
    
    var body: some View {
        VStack {
            Text(gameOver == false ? "Dealer Showing: \(dealerShowingScore)" : "Dealer: \(dealerScore)")
            HStack{
                
                ForEach(0..<dealerCards.count, id: \.self) { i in 
                    Image((gameOver == false && i == 0) ? "card_back": dealerCards[i].imageName)
                        .resizable()
                        .frame(width: 120, height: 140)
                }
            }
            
                Button("Deal Card"){
                    //                card = deck.dealCard()
                    let newCard = (deck.dealCard())
                    print(newCard.value)
                    playerCards.append(newCard)
                    if playerScore > 21 {
                        
                        newGame()
                    }
                }
            Button("NEW GAME"){
                newGame()
            }
//            Button(action: {
//                gameOver = true
//                while dealerScore < 16 {
//                    withAnimation(.spring) { 
//                        .smooth, blendDuration: 21
//                    }
//                }
//            }, label: {
//                Text("Stand")
            }
                HStack{
                    ForEach(playerCards) { card in
                        Image(card.imageName)
                            .resizable()
                            .frame(width: 120, height: 140)
                    }
                }
                Text("\(playerScore)")
                    .font(.largeTitle)
                
//                Spacer()
            
        }
        .padding()
        .font(.largeTitle)
        .onAppear(perform: {
            
            newGame()
        })
    }
    
    func newGame() {
        dealerCards.removeAll()
        playerCards.removeAll()
        
        playerCards.append(deck.dealCard())
        playerCards.append(deck.dealCard())
        
        dealerCards.append(deck.dealCard())
        dealerCards.append(deck.dealCard())
        
        for card in playerCards{
            print(card.imageName)
        }
        
       
    }
    
    func didPlayerBust() {
        if playerScore
    }
    
}
