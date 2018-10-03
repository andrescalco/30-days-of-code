import UIKit

class ViewController: UIViewController {

    // MARK: Properties
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var incrementButton: UIButton!
    @IBOutlet weak var decrementButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    var inc: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inc = 0;
        textLabel.text = String(inc ?? 0)
        
        incrementButton.addTarget(self, action: #selector(incrementAction), for: .touchUpInside)
        decrementButton.addTarget(self, action: #selector(decrementAction), for: .touchUpInside)
        
        let longPress = UILongPressGestureRecognizer(target: self, action: #selector(resetAction(_:)))
        resetButton.addGestureRecognizer(longPress)
    }
    
    // MARK: Actions
    @objc func incrementAction(sender: UIButton!) {
        inc = (inc ?? 0) + 1
        textLabel.text = String(inc ?? 0)
    }
    
    @objc func decrementAction(sender: UIButton!) {
        inc = (inc ?? 0) - 1
        textLabel.text = String(inc ?? 0)
    }
    
    @objc func resetAction(_ guesture: UILongPressGestureRecognizer) {
        if guesture.state == UIGestureRecognizer.State.began {
            inc = 0
            textLabel.text = String(inc ?? 0)
        }
    }
    
}
