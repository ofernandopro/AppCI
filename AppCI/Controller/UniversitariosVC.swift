//
//  UniversitariosVC.swift
//  AppCI
//
//  Created by Fernando on 02/11/23.
//

import UIKit

protocol UniversitariosVCDelegate: AnyObject {
    func clicouMostrarRespostas()
}

class UniversitariosVC: UIViewController {
    
    var pergunta: Pergunta?
    var delegate: UniversitariosVCDelegate?
    
    @IBOutlet weak var resposta1Label: UILabel!
    @IBOutlet weak var resposta2Label: UILabel!
    @IBOutlet weak var resposta3Label: UILabel!
    
    @IBAction func onTapRevelarRespostasButton(_ sender: Any) {
        delegate?.clicouMostrarRespostas()
        atribuirRespostas()
    }
    
    @IBAction func onTapFecharButton(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resposta1Label.isHidden = true
        resposta2Label.isHidden = true
        resposta3Label.isHidden = true
    }
    
    private func atribuirRespostas() {
        resposta1Label.isHidden = false
        resposta2Label.isHidden = false
        resposta3Label.isHidden = false
        
        if let pergunta = self.pergunta {
            
            let altCorreta = pergunta.altCorreta
            
            if pergunta.areaConhecimento == 0 { // Humanas
                
                setLabelsTemaHumanas(randomNum: Int.random(in: 0..<2), altCorreta: altCorreta, nivel: pergunta.nivel)
                
            } else if pergunta.areaConhecimento == 1 { // Naturezas
                
                setLabelsTemaNaturezas(randomNum: Int.random(in: 0..<2), altCorreta: altCorreta, nivel: pergunta.nivel)
                
            } else if pergunta.areaConhecimento == 2 { // Exatas
                
                setLabelsTemaExatas(randomNum: Int.random(in: 0..<2), altCorreta: altCorreta, nivel: pergunta.nivel)
                
            } else {
                
                setLabelsTemaGeral(num: Int.random(in: 0..<3), altCorreta: altCorreta)
                
            }
            
        }
    }
    
    func setLabelsTemaHumanas(randomNum: Int, altCorreta: Int, nivel: Int) {
        resposta2Label.text = getNumAlt(alt: altCorreta)
        
        if nivel > 2 {
            if randomNum == 0 {
                resposta1Label.text = getNumAlt(alt: altCorreta)
                resposta3Label.text = getWrongAlt(altCorreta: altCorreta)
            } else {
                resposta3Label.text = getNumAlt(alt: altCorreta)
                resposta1Label.text = getWrongAlt(altCorreta: altCorreta)
            }
        } else {
            resposta1Label.text = getNumAlt(alt: altCorreta)
            resposta3Label.text = getNumAlt(alt: altCorreta)
        }
    }
    
    func setLabelsTemaNaturezas(randomNum: Int, altCorreta: Int, nivel: Int) {
        resposta3Label.text = getNumAlt(alt: altCorreta)
        
        if nivel > 2 {
            if randomNum == 0 {
                resposta1Label.text = getNumAlt(alt: altCorreta)
                resposta2Label.text = getWrongAlt(altCorreta: altCorreta)
            } else {
                resposta2Label.text = getNumAlt(alt: altCorreta)
                resposta1Label.text = getWrongAlt(altCorreta: altCorreta)
            }
        } else {
            resposta1Label.text = getNumAlt(alt: altCorreta)
            resposta2Label.text = getNumAlt(alt: altCorreta)
        }
    }
    
    func setLabelsTemaExatas(randomNum: Int, altCorreta: Int, nivel: Int) {
        resposta1Label.text = getNumAlt(alt: altCorreta)
        
        if nivel > 2 {
            if randomNum == 0 {
                resposta2Label.text = getNumAlt(alt: altCorreta)
                resposta3Label.text = getWrongAlt(altCorreta: altCorreta)
            } else {
                resposta3Label.text = getNumAlt(alt: altCorreta)
                resposta2Label.text = getWrongAlt(altCorreta: altCorreta)
            }
        } else {
            resposta2Label.text = getNumAlt(alt: altCorreta)
            resposta3Label.text = getNumAlt(alt: altCorreta)
        }
    }
    
    func setLabelsTemaGeral(num: Int, altCorreta: Int) {
        if num == 0 {
            resposta1Label.text = getNumAlt(alt: altCorreta)
            resposta2Label.text = getWrongAlt(altCorreta: altCorreta)
            resposta3Label.text = getAnotherWrongAlt(altCorreta: altCorreta)
        } else if num == 1 {
            resposta1Label.text = getWrongAlt(altCorreta: altCorreta)
            resposta2Label.text = getNumAlt(alt: altCorreta)
            resposta3Label.text = getAnotherWrongAlt(altCorreta: altCorreta)
        } else if num == 2 {
            resposta1Label.text = getWrongAlt(altCorreta: altCorreta)
            resposta2Label.text = getAnotherWrongAlt(altCorreta: altCorreta)
            resposta3Label.text = getNumAlt(alt: altCorreta)
        }
    }
    
    private func getNumAlt(alt: Int) -> String {
        switch alt {
        case 1:
            return "A"
        case 2:
            return "B"
        case 3:
            return "C"
        case 4:
            return "D"
        default:
            return ""
        }
    }
    
    private func getWrongAlt(altCorreta: Int) -> String {
        switch altCorreta {
        case 1:
            return "B"
        case 2:
            return "A"
        case 3:
            return "D"
        case 4:
            return "C"
        default:
            return ""
        }
    }
    
    private func getAnotherWrongAlt(altCorreta: Int) -> String {
        switch altCorreta {
        case 1:
            return "C"
        case 2:
            return "D"
        case 3:
            return "A"
        case 4:
            return "B"
        default:
            return ""
        }
    }
    
}
