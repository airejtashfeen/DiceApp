import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    let diceArray = [UIImage(named: "DiceOne"),
                     UIImage(named: "DiceTwo"),
                     UIImage(named: "DiceThree"),
                     UIImage(named: "DiceFour"),
                     UIImage(named: "DiceFive"),
                     UIImage(named: "DiceSix")]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        diceImageView1.image = diceArray[0]
        diceImageView2.image = diceArray[0]
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        UIView.transition(with: diceImageView1, duration: 0.3, options: .transitionFlipFromLeft, animations: {
            self.diceImageView1.image = self.diceArray[Int.random(in: 0...5)]
        }, completion: nil)
        
        UIView.transition(with: diceImageView2, duration: 0.3, options: .transitionFlipFromRight, animations: {
            self.diceImageView2.image = self.diceArray[Int.random(in: 0...5)]
        }, completion: nil)

        print("Dice rolled with animation!")
    }
}
