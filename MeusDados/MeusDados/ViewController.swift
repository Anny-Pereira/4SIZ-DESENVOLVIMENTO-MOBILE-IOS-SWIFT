//
//  ViewController.swift
//  MeusDados
//
//  Created by Usuário Convidado on 14/09/26.
//

import UIKit

class ViewController: UIViewController {
    
    
    //outlet (referencia passiva) - antes do override
    @IBOutlet weak var lblNome: UILabel!
    @IBOutlet weak var lblIdade: UILabel!
    @IBOutlet weak var lblCidade: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblNome.text = "Meu nome é: "
        lblIdade.text = "Minha idade é: "
        lblCidade.text = "Minha cidade é: "
        // Do any additional setup after loading the view.
    }

    
    //action (referencia ativa / açao) - apos override e dentro da classe
    @IBAction func Exibir(_ sender: Any) {
        lblNome.text = "Anny"
        lblIdade.text = "22 anos"
        lblCidade.text = "São Paulo"
    }
    
    @IBAction func Limpar(_ sender: Any) {
        viewDidLoad()
    }
    
}

