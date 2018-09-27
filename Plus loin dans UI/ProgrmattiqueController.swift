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

        print(monPremierUIView?.frame)
        print(monPremierUIView?.bounds)
        
        let secondeVue = UIView(frame: monPremierUIView!.frame)
        secondeVue.center.y += 100 // le centre a 50 en plus pour qu'il soit plus bas
        secondeVue.backgroundColor = UIColor(red: 10/255, green: 80/255, blue: 87/255, alpha: 1)
        view.addSubview(secondeVue) // ajout de secondevue à l'ecran
        
        
        let troisiemeVue = UIView(frame: monPremierUIView!.bounds)
        troisiemeVue.center.y += 200
        troisiemeVue.backgroundColor = UIColor.blue
        view.addSubview(troisiemeVue)
        troisiemeVue.layer.opacity = 0.5 // oppacité de troisiemevue
        //OMBRE
        troisiemeVue.layer.shadowColor = UIColor.darkGray.cgColor // ajout de la couleur de l'ombre
        troisiemeVue.layer.shadowOffset = CGSize(width: 4, height: 4)

        troisiemeVue.layer.shadowRadius = 4 // bord arrondi de l'ombre
        troisiemeVue.layer.shadowOpacity = 0.5 // opacité de l'ombre
      
        
     
    }

}
