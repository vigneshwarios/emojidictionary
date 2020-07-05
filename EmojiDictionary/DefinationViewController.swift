//
//  DefinationViewController.swift
//  EmojiDictionary
//
//  Created by vignesh on 7/5/20.
//  Copyright © 2020 AmVi. All rights reserved.
//

import UIKit

class DefinationViewController: UIViewController {
    var emoji = "No Emoji"

    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var viewControllerEmoji: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        viewControllerEmoji.text = emoji
        if(emoji == "😀") {
            emojiLabel.text = "Happy Face"
        }
        if(emoji == "😬") {
            emojiLabel.text = "Sad Face"
        }
        if(emoji == "😆") {
            emojiLabel.text = "Very Happy Face"
        }
        if(emoji == "🤑") {
            emojiLabel.text = "Double Happy Face"
        }
        
    }

    override func didReceiveMemoryWarning() {
super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
