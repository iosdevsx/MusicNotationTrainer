//
//  ViewController.swift
//  MusicNotationTrainer
//
//  Created by Юрий Логинов on 03.09.17.
//  Copyright © 2017 Юрий Логинов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stave: Stave!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func createRandomNote(_ sender: Any) {
        stave.clearStave()
        
        let note = MusicalNote.randomNote()
        let octave = Octave.randomOctave()
        
        let noteView = Note.init(symbol: note, octave: octave)
        
        stave.setup(note: noteView)
    }
}

