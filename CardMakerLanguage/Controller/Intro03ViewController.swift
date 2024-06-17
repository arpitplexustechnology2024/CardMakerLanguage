//
//  Intro03ViewController.swift
//  CardMakerLanguage
//
//  Created by Arpit iOS Dev. on 03/06/24.
//

import UIKit

class Intro03ViewController: UIViewController {

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
            titleLable.text = "Intro03ScreenTitleKey".localizableString(loc: "hi")
            descriptionLabel.text = "Intro03ScreenDescriptionKey".localizableString(loc: "hi")
            btnNext.setTitle("Intro03DoneBtnKey".localizableString(loc: "hi"), for: .normal)
        case "en":
            titleLable.text = "Intro03ScreenTitleKey".localizableString(loc: "en")
            descriptionLabel.text = "Intro03ScreenDescriptionKey".localizableString(loc: "en")
            btnNext.setTitle("Intro03DoneBtnKey".localizableString(loc: "en"), for: .normal)
        case "es":
            titleLable.text = "Intro03ScreenTitleKey".localizableString(loc: "es")
            descriptionLabel.text = "Intro03ScreenDescriptionKey".localizableString(loc: "es")
            btnNext.setTitle("Intro03DoneBtnKey".localizableString(loc: "es"), for: .normal)
        case "ur":
            titleLable.text = "Intro03ScreenTitleKey".localizableString(loc: "ur")
            descriptionLabel.text = "Intro03ScreenDescriptionKey".localizableString(loc: "ur")
            btnNext.setTitle("Intro03DoneBtnKey".localizableString(loc: "ur"), for: .normal)
        case "fr":
            titleLable.text = "Intro03ScreenTitleKey".localizableString(loc: "fr")
            descriptionLabel.text = "Intro03ScreenDescriptionKey".localizableString(loc: "fr")
            btnNext.setTitle("Intro03DoneBtnKey".localizableString(loc: "fr"), for: .normal)
        default:
            titleLable.text = "Intro03ScreenTitleKey".localizableString(loc: "en")
            descriptionLabel.text = "Intro03ScreenDescriptionKey".localizableString(loc: "en")
            btnNext.setTitle("Intro03DoneBtnKey".localizableString(loc: "en"), for: .normal)
            
        }
    }
    
    @IBAction func btnUpdateTapped(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "UpdateViewController") as! UpdateViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
