//
//  ProgrmattiqueController.swift
//  Plus loin dans UI
//
//  Created by CHEVALIER on 27/09/2018.
//  Copyright © 2018 CHEVALIER. All rights reserved.
//

import UIKit

class ProgrmattiqueController: UIViewController {

    @IBOutlet weak var scroll: UIScrollView!
    var monPremierUIView: UIView?
    var monPremierLabel: UILabel?
    var monPremierBouton: UIButton?
    var mapremiereIV: UIImageView?
    
    
    
    
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
        scroll.addSubview(monPremierUIView!)
    // Comme c'est un optionnel je le force avec ! et je eux aussi mettre
        // guard monPremierUIView != nil esle { return }
        // view.addSubview(monPremierUIView!)    }

        monPremierLabel = UILabel(frame: CGRect(x: 0, y: monPremierUIView!.frame.maxY + 20, width: scroll.frame.width, height: 50))
        monPremierLabel?.text = "Coucou je suis un texte"
        monPremierLabel?.textColor = UIColor.white
        monPremierLabel?.font = UIFont(name: "Chalkduster", size: 20)
        monPremierLabel?.textAlignment = NSTextAlignment.center // alignement .left .right (...)
        guard monPremierLabel != nil else {return}
            scroll.addSubview(monPremierLabel!)
        
 let rectDeMonBouton = CGRect(x: view.frame.width/2 - 75, y: monPremierLabel!.frame.maxY + 20, width: 150, height: 40)
        
        monPremierBouton = UIButton(frame: rectDeMonBouton)
        monPremierBouton?.setTitle("Appuyer", for: UIControlState.normal)
        monPremierBouton?.tintColor = UIColor.blue // couleur du texte
        monPremierBouton?.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        monPremierBouton?.backgroundColor = UIColor.black
        monPremierBouton?.layer.borderColor = UIColor.white.cgColor
        monPremierBouton?.layer.borderWidth = 2
       scroll.addSubview(monPremierBouton!)
      
        
        monPremierBouton?.addTarget(self, action: #selector(boutonAppuye), for: .touchUpInside) // Action du bouton
        
        let largeur = view.frame.width - 60
        
        let rectIV = CGRect(x: 30, y: (view.frame.height / 2) - (largeur / 2), width: largeur, height: largeur)
        mapremiereIV = UIImageView(frame: rectIV)
        mapremiereIV?.image = #imageLiteral(resourceName: "codabee") // on peux aussi faire = UIImage(named: "codabee")
        mapremiereIV?.contentMode = .scaleAspectFill
        mapremiereIV?.clipsToBounds = true
        mapremiereIV?.layer.cornerRadius = mapremiereIV!.frame.width / 2
        
        
        scroll.addSubview(mapremiereIV!)
        //view.sendSubview(toBack: mapremiereIV!)  //envoi de l'imageView en fond
         scroll.bringSubview(toFront: monPremierBouton!)//mettre le bouton devant tout
        mapremiereIV?.isUserInteractionEnabled = true // pour mettre une image cliquable
        mapremiereIV?.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(imageAppuye)))
        
        
        
       let couleurs: [UIColor] = [.red, .blue, .white, .black]
        var maximum: CGFloat = (mapremiereIV?.frame.maxY)!
        
        
        for couleur in couleurs {
            let vue = UIView(frame: CGRect(x: 0, y: maximum + 10, width: 100, height: 100))
            vue.backgroundColor = couleur
            scroll.addSubview(vue)
            maximum = vue.frame.maxY
            
        }
        scroll.contentSize = CGSize(width: view.frame.width * 2, height: maximum + 100)
        
    }
    
    
    
    
    
    
    @objc func imageAppuye() {
    print("image touché")
    }
    
    
    @objc func boutonAppuye() { // mettre une func sous obj c
        
        print("tu as bien appuyé sur le bouton")
    }
}
