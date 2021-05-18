//
//  ViewController.swift
//  TicTacToe
//
//  Created by Simon Alam on 03.04.21.
//

import UIKit

class ViewController: UIViewController {
    
    var currentUser = 1
    var user1did = [String]()
    var user2did = [String]()
  
  
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    @IBAction func fieldPressed(_ sender: UIButton) {
        if currentUser == 1 {
            print("now")
            sender.setImage(UIImage(systemName: "pause"), for: .normal)
            user1did.append(sender.accessibilityLabel!)
            print(user1did)
            currentUser = 2
        } else {
            sender.setImage(UIImage(systemName: "play"), for: .normal)
            user2did.append(sender.accessibilityLabel!)
            currentUser = 1
        }
        if (user1did.contains("upLeft") && user1did.contains("upMiddle") && user1did.contains("upRight")) || (user1did.contains("upMiddle") && user1did.contains("middleMiddle") && user1did.contains("downMiddle")) || (user1did.contains("upLeft") && user1did.contains("middleMiddle") && user1did.contains("downRight")) || (user1did.contains("upLeft") && user1did.contains("middleLeft") && user1did.contains("downLeft")) || (user1did.contains("upRight") && user1did.contains("middleRight") && user1did.contains("downRight")) || (user1did.contains("upRight") && user1did.contains("middleMiddle") && user1did.contains("downLeft")) || (user1did.contains("middleLeft") && user1did.contains("middleMiddle") && user1did.contains("middleRight")) || (user1did.contains("downleft") && user1did.contains("downMiddle") && user1did.contains("downRight")){
            print("Won")
            let ac = UIAlertController(title: "GameOver", message: "Der Spieler 1 (pause-Zeichen) hat gewonnen", preferredStyle: .alert)
            
            present(ac, animated: true, completion: nil)
        } else if (user2did.contains("upLeft") && user2did.contains("upMiddle") && user2did.contains("upRight")) || (user2did.contains("upMiddle") && user2did.contains("middleMiddle") && user2did.contains("downMiddle")) || (user2did.contains("upLeft") && user2did.contains("middleMiddle") && user2did.contains("downRight")) || (user2did.contains("upLeft") && user2did.contains("middleLeft") && user2did.contains("downLeft")) || (user2did.contains("upRight") && user2did.contains("middleRight") && user2did.contains("downRight")) || (user2did.contains("upRight") && user2did.contains("middleMiddle") && user2did.contains("downLeft")) || (user2did.contains("middleLeft") && user2did.contains("middleMiddle") && user2did.contains("middleRight")) || (user2did.contains("downleft") && user2did.contains("downMiddle") && user2did.contains("downRight")) {
            print("user two won")
            
            let ac = UIAlertController(title: "GameOver", message: "Der Spieler 2 (play-Zeichen) hat gewonnen", preferredStyle: .alert)
            
            present(ac, animated: true, completion: nil)
        }
        else {
            return
        }
        
        
    }
    
}


