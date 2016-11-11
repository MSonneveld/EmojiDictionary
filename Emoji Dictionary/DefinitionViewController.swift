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
    @IBOutlet weak var categoryLabel: UILabel!
    
    @IBOutlet weak var yearLabel: UILabel!
    var emoji = Emoji()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        print()
        emojiLabel.text = emoji.stringEmoji
        yearLabel.text = "Origination year: \(emoji.birthyear)"
        categoryLabel.text = "Category: \(emoji.category)"
        definitionLabel.text = emoji.definition
    
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
