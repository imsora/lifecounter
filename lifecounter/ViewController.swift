//
//  ViewController.swift
//  lifecounter
//
//  Created by iGuest on 1/29/19.
//  Copyright © 2019 Sam Zeng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Player1HP: UITextField!
    @IBOutlet weak var Player2HP: UITextField!
    @IBOutlet weak var Player3HP: UITextField!
    @IBOutlet weak var Player4HP: UITextField!
    @IBOutlet weak var Loser: UILabel!
    
    var P1HP = 20
    var P2HP = 20
    var P3HP = 20
    var P4HP = 20
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Loser.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func buttonClicked(_ sender: Any){
        Player1HP.text = "1"
    }

    @IBAction func P1M5(_ sender: Any) {
        P1HP -= 5
        Player1HP.text = "\(P1HP)"
        if P1HP <= 0{
            playerLost(player: 1)
        }
    }
    
    @IBAction func P1M1(_ sender: Any) {
        P1HP -= 1
        Player1HP.text = "\(P1HP)"
        if P1HP <= 0{
            playerLost(player: 1)
        }
    }
    
    @IBAction func P1P1(_ sender: Any) {
        P1HP += 1
        Player1HP.text = "\(P1HP)"
    }
    
    @IBAction func P1P5(_ sender: Any) {
        P1HP += 5
        Player1HP.text = "\(P1HP)"
    }
    
    
    @IBAction func P2M5(_ sender: Any) {
        P2HP -= 5
        Player2HP.text = "\(P2HP)"
        if P2HP <= 0{
            playerLost(player: 2)
        }
    }
    
    @IBAction func P2M1(_ sender: Any) {
        P2HP -= 1
        Player2HP.text = "\(P2HP)"
        if P2HP <= 0{
            playerLost(player: 2)
        }
    }
    
    @IBAction func P2P1(_ sender: Any) {
        P2HP += 1
        Player2HP.text = "\(P2HP)"
    }
    
    @IBAction func P2P5(_ sender: Any) {
        P2HP += 5
        Player2HP.text = "\(P2HP)"
    }
    
    @IBAction func P3M5(_ sender: Any) {
        P3HP -= 5
        Player3HP.text = "\(P3HP)"
        if P3HP <= 0{
            playerLost(player: 3)
        }
    }
    
    @IBAction func P3M1(_ sender: Any) {
        P3HP -= 1
        Player3HP.text = "\(P3HP)"
        if P3HP <= 0{
            playerLost(player: 3)
        }
    }
    
    @IBAction func P3P1(_ sender: Any) {
        P3HP += 1
        Player3HP.text = "\(P3HP)"
    }
    
    @IBAction func P3P5(_ sender: Any) {
        P3HP += 5
        Player3HP.text = "\(P3HP)"
    }
    
    @IBAction func P4M5(_ sender: Any) {
        P4HP -= 5
        Player4HP.text = "\(P4HP)"
        if P4HP <= 0{
            playerLost(player: 4)
        }
    }
    
    @IBAction func P4M1(_ sender: Any) {
        P4HP -= 1
        Player4HP.text = "\(P4HP)"
        if P4HP <= 0{
            playerLost(player: 4)
        }
    }
    
    @IBAction func P4P1(_ sender: Any) {
        P4HP += 1
        Player4HP.text = "\(P4HP)"
    }
    
    @IBAction func P4P5(_ sender: Any) {
        P4HP += 5
        Player4HP.text = "\(P4HP)"
    }
    
    func playerLost(player: Int){
        Loser.text = "Player \(player) LOSES!"
        Loser.isHidden = false
        Loser.textColor = UIColor.red
        
    }
    
}

