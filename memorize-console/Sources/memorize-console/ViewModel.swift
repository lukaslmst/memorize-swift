import Foundation

class ViewModel {
    typealias Card = Model<String>.Card
    
    static let values = ["a", "b", "c", "d", "e", "f"]
    
    var model = Model(numberOfPairsOfCards: 6 ){values[$0]}
    var cards: [Card]{
     return model.cards
    }
}