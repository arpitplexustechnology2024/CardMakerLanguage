//
//  Intro02ViewController.swift
//  CardMakerLanguage
//
//  Created by Arpit iOS Dev. on 03/06/24.
//

import UIKit

class Intro02ViewController: UIViewController {

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
            titleLable.text = "Intro02ScreenTitleKey".localizableString(loc: "hi")
            descriptionLabel.text = "Intro02ScreenDescriptionKey".localizableString(loc: "hi")
            btnNext.setTitle("Intro02NextBtnKey".localizableString(loc: "hi"), for: .normal)
        case "en":
            titleLable.text = "Intro02ScreenTitleKey".localizableString(loc: "en")
            descriptionLabel.text = "Intro02ScreenDescriptionKey".localizableString(loc: "en")
            btnNext.setTitle("Intro02NextBtnKey".localizableString(loc: "en"), for: .normal)
        case "es":
            titleLable.text = "Intro02ScreenTitleKey".localizableString(loc: "es")
            descriptionLabel.text = "Intro02ScreenDescriptionKey".localizableString(loc: "es")
            btnNext.setTitle("Intro02NextBtnKey".localizableString(loc: "es"), for: .normal)
        case "ur":
            titleLable.text = "Intro02ScreenTitleKey".localizableString(loc: "ur")
            descriptionLabel.text = "Intro02ScreenDescriptionKey".localizableString(loc: "ur")
            btnNext.setTitle("Intro02NextBtnKey".localizableString(loc: "ur"), for: .normal)
        case "fr":
            titleLable.text = "Intro02ScreenTitleKey".localizableString(loc: "fr")
            descriptionLabel.text = "Intro02ScreenDescriptionKey".localizableString(loc: "fr")
            btnNext.setTitle("Intro02NextBtnKey".localizableString(loc: "fr"), for: .normal)
        default:
            titleLable.text = "Intro02ScreenTitleKey".localizableString(loc: "en")
            descriptionLabel.text = "Intro02ScreenDescriptionKey".localizableString(loc: "en")
            btnNext.setTitle("Intro02NextBtnKey".localizableString(loc: "en"), for: .normal)
            
        }
    }
    
    @IBAction func btnNexttapped(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "Intro03ViewController") as! Intro03ViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    @IBAction func btnUpdateTapped(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "UpdateViewController") as! UpdateViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
