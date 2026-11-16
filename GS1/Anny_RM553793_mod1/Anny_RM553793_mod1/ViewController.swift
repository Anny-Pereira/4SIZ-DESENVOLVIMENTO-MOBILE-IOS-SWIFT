//
//  ViewController.swift
//  Anny_RM553793_mod1
//
//  Created by Usuário Convidado on 09/11/26.
//
//PARTICIPANTES
//Anny I. G. Pereira RM553793
//Katherine Fernandes Rodrigues RM552673

//Descrição da solução: aplicativo que conecta pequenos agricultores com instituições locais

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblNome: UITextField!
    @IBOutlet weak var lblCpf: UITextField!
    @IBOutlet weak var lblCidade: UITextField!
    @IBOutlet weak var lblNicho: UITextField!
    @IBOutlet weak var lblProduto: UITextField!
    @IBOutlet weak var lblValor: UITextField!
    @IBOutlet weak var lblQuantidade: UIStepper!
    @IBOutlet weak var lblOrganica: UISwitch!
    @IBOutlet weak var lblQuantidadeStepper: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblNome.text = ""
                lblCpf.text = ""
                lblCidade.text = ""
                lblNicho.text = ""
                lblProduto.text = ""
                lblValor.text = ""
                lblQuantidade.value = 0
                lblQuantidadeStepper.text = "0"
                lblOrganica.isOn = false
    }

    @IBAction func btnCadastrar(_ sender: Any) {
        let p = Produtor(nomeProdutor: lblNome.text!, documento: lblCpf.text!, cidade: lblCidade.text!, nichoProd: lblNicho.text!, nomeProduto: lblProduto.text!, valorUnitario: Double(lblValor.text ?? "0") ?? 0.0, quantidadeLote: Int(lblQuantidade.value), producaoOrganica: lblOrganica.isOn)
        
        let alerta = UIAlertController(
            title: "Cadastro realizado com sucesso :)", message: p.cadastrarLoteProdutor(prod: p), preferredStyle: UIAlertController.Style.actionSheet
        )
        
        alerta.addAction(UIAlertAction(title: "Fechar", style: UIAlertAction.Style.cancel) { _ in
            self.viewDidLoad()
        })
        
        present(alerta, animated: true)
    }
    
    @IBAction func mudarValorStepper(_ sender: Any) {
        lblQuantidadeStepper.text = "\(Int(lblQuantidade.value))"
    }
}

