//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Mickey Sonneveld on 10/11/16.
//  Copyright © 2016 Mickey Sonneveld. All rights reserved.
//

import UIKit



class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    var emojis : [Emoji] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        emojis = makeEmojiArray()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSeque", sender: emoji)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray () -> [Emoji]  {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😂"
        emoji1.birthyear = 2010
        emoji1.category = "Smiley"
        emoji1.definition = "A smiley face with tears from laughing"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😎"
        emoji2.birthyear = 2010
        emoji2.category = "Smiley"
        emoji2.definition = "A smiley face with sunglasses"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "😁"
        emoji3.birthyear = 2010
        emoji3.category = "Smiley"
        emoji3.definition = "A smiley with a big smile"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "🐹"
        emoji4.birthyear = 2013
        emoji4.category = "Animals"
        emoji4.definition = "A cute hamster"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "😇"
        emoji5.birthyear = 2010
        emoji5.category = "Smiley"
        emoji5.definition = "A smiley with a helo"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "😱"
        emoji6.birthyear = 2010
        emoji6.category = "Smiley"
        emoji6.definition = "A astonished smiley"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
        
    }
    
}


























