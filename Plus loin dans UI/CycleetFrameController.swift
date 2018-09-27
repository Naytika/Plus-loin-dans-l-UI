//
//  CycleetFrameController.swift
//  Plus loin dans UI
//
//  Created by CHEVALIER on 27/09/2018.
//  Copyright © 2018 CHEVALIER. All rights reserved.
//


import UIKit

class CycleetFrameController: UIViewController {

  
    
    // Appeler quelques chose qu'une seule fois
    override func viewDidLoad() {
        super.viewDidLoad()
print("view did load appelé")
    }
    
    // Effectuer une action quand la vue va apparaitre
    
    override func viewWillAppear(_ animated: Bool) {
      super.viewWillAppear(animated)
        print("view will appear")
    }
    
    
    //Effectuer une action à chaque fois que la vu est apparue
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }
    
    
    //Effectuer une action quand la vue va disparaitre
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disapear")
    }
    
    
    // Effectuer une action quand la vue a disparue
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("view did disappear")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



}
