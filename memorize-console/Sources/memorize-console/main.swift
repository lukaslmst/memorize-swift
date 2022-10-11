import Foundation

var viewmodel = ViewModel()
var counter = 0; 

print("----Memorize----")
    for card in  viewmodel.cards{
    counter += 1;

    //erster durchgang Rand zeichnen
        if(counter == 1){
            print("# ", terminator: "")
        }

        if(counter % 3 == 0){
            print(" ", terminator: "")
            if(card.isFaceUp){
                print(card.content, terminator: "")
            }else{
                print("*", terminator: "")
            }
            
            print(" #")
            print("# ", terminator: "")
        }else{
            print(" ", terminator: "")
            if(card.isFaceUp){
                print(card.content, terminator: "")
            }else{
                print("*", terminator: "")
            }
            print(" ", terminator: "")
        }
        
    }
    print("")
    print("----------------")
