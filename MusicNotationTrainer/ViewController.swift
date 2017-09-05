//
//  ViewController.swift
//  MusicNotationTrainer
//
//  Created by Юрий Логинов on 03.09.17.
//  Copyright © 2017 Юрий Логинов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var noteView: NoteView!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func createRandomNote(_ sender: Any) {
        let note = Notes.randomNote()
        
        print("note is \(note)")
        
        self.noteView.setup(note: note)
    }
}

