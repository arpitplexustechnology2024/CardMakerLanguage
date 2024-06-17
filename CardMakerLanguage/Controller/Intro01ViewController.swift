//
//  Intro01ViewController.swift
//  CardMakerLanguage
//
//  Created by Arpit iOS Dev. on 03/06/24.
//

import UIKit

class Intro01ViewController: UIViewController {
    
    // All Outlet
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var btnNext: UIButton!
    
    var selectedLanguage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.btnNext.layer.cornerRadius = self.btnNext.frame.height / 2
        localizeUI()
    }
    
    func localizeUI() {
        let selectedLanguage = UserDefaults.standard.string(forKey: LanguageSet.languageSelected)
        switch selectedLanguage {
        case "hi":
            titleLable.text = "Intro01ScreenTitleKey".localizableString(loc: "hi")
            descriptionLabel.text = "Intro01ScreenDescriptionKey".localizableString(loc: "hi")
            btnNext.setTitle("Intro01NextBtnKey".localizableString(loc: "hi"), for: .normal)
        case "en":
            titleLable.text = "Intro01ScreenTitleKey".localizableString(loc: "en")
            descriptionLabel.text = "Intro01ScreenDescriptionKey".localizableString(loc: "en")
            btnNext.setTitle("Intro01NextBtnKey".localizableString(loc: "en"), for: .normal)
        case "es":
            titleLable.text = "Intro01ScreenTitleKey".localizableString(loc: "es")
            descriptionLabel.text = "Intro01ScreenDescriptionKey".localizableString(loc: "es")
            btnNext.setTitle("Intro01NextBtnKey".localizableString(loc: "es"), for: .normal)
        case "ur":
            titleLable.text = "Intro01ScreenTitleKey".localizableString(loc: "ur")
            descriptionLabel.text = "Intro01ScreenDescriptionKey".localizableString(loc: "ur")
            btnNext.setTitle("Intro01NextBtnKey".localizableString(loc: "ur"), for: .normal)
        case "fr":
            titleLable.text = "Intro01ScreenTitleKey".localizableString(loc: "fr")
            descriptionLabel.text = "Intro01ScreenDescriptionKey".localizableString(loc: "fr")
            btnNext.setTitle("Intro01NextBtnKey".localizableString(loc: "fr"), for: .normal)
        default:
            titleLable.text = "Intro01ScreenTitleKey".localizableString(loc: "en")
            descriptionLabel.text = "Intro01ScreenDescriptionKey".localizableString(loc: "en")
            btnNext.setTitle("Intro01NextBtnKey".localizableString(loc: "en"), for: .normal)
            
        }
    }
    
    @IBAction func btnNexttapped(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "Intro02ViewController") as! Intro02ViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    @IBAction func btnUpdateTapped(_ sender: UIButton) {
        
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "UpdateViewController") as! UpdateViewController
        self.navigationController?.pushViewController(vc, animated: true)

    }
    
}





