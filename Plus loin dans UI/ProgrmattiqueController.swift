//
//  ProgrmattiqueController.swift
//  Plus loin dans UI
//
//  Created by CHEVALIER on 27/09/2018.
//  Copyright © 2018 CHEVALIER. All rights reserved.
//

import UIKit

class ProgrmattiqueController: UIViewController {

    var monPremierUIView: UIView?
    var monPremierLabel: UILabel?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //creer un UIIview de façon programmatique
        
        //Initialisation avec une frame et donc Ajout de la taille et des contraintes par rapport a la super view
        monPremierUIView = UIView(frame: CGRect(x: 30, y: 60, width: 200, height: 50))
        
        //Ajout d'une couleur, de ma propre couleurs, spectre de couleur est compris en 0 et 255
        monPremierUIView?.backgroundColor = UIColor(red: 30/255, green: 123/255, blue: 90/255, alpha: 1)
        
        //Ajout de bord arrondis
        monPremierUIView?.layer.cornerRadius = 25
        
        // Ajout de monPremierUIView à la vue
        view.addSubview(monPremierUIView!)
    // Comme c'est un optionnel je le force avec ! et je eux aussi mettre
        // guard monPremierUIView != nil esle { return }
        // view.addSubview(monPremierUIView!)    }

        monPremierLabel = UILabel(frame: CGRect(x: 0, y: monPremierUIView!.frame.maxY + 20, width: view.frame.width, height: 50))
        monPremierLabel?.text = "Coucou je suis un texte"
        monPremierLabel?.textColor = UIColor.white
        monPremierLabel?.font = UIFont(name: "Chalkduster", size: 20)
        monPremierLabel?.textAlignment = NSTextAlignment.center // alignement .left .right (...)
        guard monPremierLabel != nil else {return}
            view.addSubview(monPremierLabel!)
        
 
    }

}
