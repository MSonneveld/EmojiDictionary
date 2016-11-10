//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Mickey Sonneveld on 10/11/16.
//  Copyright © 2016 Mickey Sonneveld. All rights reserved.
//

import UIKit



class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    
    var emoji = "NO EMOJI"
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        print(emoji)
        emojiLabel.text = emoji
        
        if emoji == "👹"{
            definitionLabel.text = "A devil face"
        }
        if emoji == "👽"{
            definitionLabel.text = "This is a beautiful alien"
        }
        if emoji == "😱"{
            definitionLabel.text = "Suprised face!"
        }
        if emoji == "😇"{
            definitionLabel.text = "Angel face"
        }
        if emoji == "😂"{
            definitionLabel.text = "Crying out loud from laughing"
        }
        if emoji == "😎"{
            definitionLabel.text = "A smiley with sunglasses"
        }
        if emoji == "💪🏿"{
            definitionLabel.text = "A strong arm"
        }
        if emoji == "😁"{
            definitionLabel.text = "Big smile!"
        }
        if emoji == "😡"{
            definitionLabel.text = "Angry face"
        }
        if emoji == "😍"{
            definitionLabel.text = "In love!"
        }
        if emoji == "🤔"{
            definitionLabel.text = "Thinking face"
        }
        if emoji == "😈"{
            definitionLabel.text = "Naughty devil"
        }
        if emoji == "😷"{
            definitionLabel.text = "Nurse"
        }
        if emoji == "👻"{
            definitionLabel.text = "Spooooky ghost"
        }
        if emoji == "🤖"{
            definitionLabel.text = "A robot from the year 2050"
        }
        if emoji == "👮"{
            definitionLabel.text = "A police officer"
        }
        if emoji == "💃"{
            definitionLabel.text = "A dancer"
        }
        if emoji == "👑"{
            definitionLabel.text = "A shiny crown"
        }
        if emoji == "🐸"{
            definitionLabel.text = "A frog"
        }
        if emoji == "🐹"{
            definitionLabel.text = "A cute hamster"
        }
        
        //"👮","💃","👑","🐸","🐹"
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
