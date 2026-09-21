//
//  ViewController.swift
//  EscondeExibe
//
//  Created by Usuário Convidado on 21/09/26.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var viewVermelho: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ocultarView(_ sender: Any) {
        UIView.animate(withDuration: 2){
            self.viewVermelho.alpha = 0
        }
        
    }
    
    @IBAction func exibirView(_ sender: Any) {
        UIView.animate(withDuration: 2){
            self.viewVermelho.alpha = 1
        }
    }
}

