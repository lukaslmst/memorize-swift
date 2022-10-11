import Foundation


struct Model <ContentType>{
    
    
    private (set) var cards: [Card]
    
    init(numberOfPairsOfCards: Int, content: (Int) -> ContentType){
        cards = []
        
        for pairIndex in 0..<numberOfPairsOfCards{
            let content1 = content(pairIndex)
            let content2 = content(pairIndex)
            cards.append(Card(id: 2*pairIndex, content: content1, isFaceUp: true))
            cards.append(Card(id: 2*pairIndex + 1, content: content2, isFaceUp: true))
        }

    }
    
    struct Card/* : Identifiable*/{
        var id: Int
        
        var content: ContentType
        var isFaceUp = true
        
    }
}
