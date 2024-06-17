//
//  UpdateViewController.swift
//  CardMakerLanguage
//
//  Created by Arpit iOS Dev. on 03/06/24.
//

import UIKit

class UpdateViewController: UIViewController {

    // All Button Outlet
    @IBOutlet weak var btnHindi: UIButton!
    @IBOutlet weak var btnEnglish: UIButton!
    @IBOutlet weak var btnSpanish: UIButton!
    @IBOutlet weak var btnUrdu: UIButton!
    @IBOutlet weak var btnFrench: UIButton!
    @IBOutlet weak var btnLetsGo: UIButton!
    
    // All View Outlet
    @IBOutlet weak var hindiView: UIView!
    @IBOutlet weak var englishView: UIView!
    @IBOutlet weak var spanishView: UIView!
    @IBOutlet weak var urduView: UIView!
    @IBOutlet weak var frenchView: UIView!
    @IBOutlet weak var backgroundView: UIView!
    
    // All Lable Outlet
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var languagechangeLabel: UILabel!
    @IBOutlet weak var hindiLabel: UILabel!
    @IBOutlet weak var englishLabel: UILabel!
    @IBOutlet weak var spanishLabel: UILabel!
    @IBOutlet weak var urduLabel: UILabel!
    @IBOutlet weak var frenchLabel: UILabel!
    
    var selectedLanguage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupRadioBoader()
        setupRadioButtons()
        localizeUI()
    }
    
    func localizeUI() {
        let selectedLanguage = UserDefaults.standard.string(forKey: LanguageSet.languageSelected)
        switch selectedLanguage {
        case "hi":
            titleLabel.text = "LanguageScreenTitleKey".localizableString(loc: "hi")
            descriptionLabel.text = "LanguageScreenDescriptionKey".localizableString(loc: "hi")
            languagechangeLabel.text = "LanguageScreenNoteKey".localizableString(loc: "hi")
            btnHindi.isSelected = true
            btnEnglish.isSelected = false
            btnSpanish.isSelected = false
            btnUrdu.isSelected = false
            btnFrench.isSelected = false
            setViewBorderColors(hindiborder: .customOrange, englishborder: .black, spanishborder: .black, urduborder: .black, frenchborder: .black)
            setViewColors(hindiview: .customOrange, englishview: .systemBackground, spanishview: .systemBackground, urduview: .systemBackground, frenchview: .systemBackground)
            setLabelColors(hindilabel: .white, englishlabel: .black, spanishlabel: .black, urdulabel: .black, frenchlabel: .black)
        case "en":
            titleLabel.text = "LanguageScreenTitleKey".localizableString(loc: "en")
            descriptionLabel.text = "LanguageScreenDescriptionKey".localizableString(loc: "en")
            languagechangeLabel.text = "LanguageScreenNoteKey".localizableString(loc: "en")
            btnHindi.isSelected = false
            btnEnglish.isSelected = true
            btnSpanish.isSelected = false
            btnUrdu.isSelected = false
            btnFrench.isSelected = false
            setViewBorderColors(hindiborder: .black, englishborder: .customOrange, spanishborder: .black, urduborder: .black, frenchborder: .black)
            setViewColors(hindiview: .systemBackground, englishview: .customOrange, spanishview: .systemBackground, urduview: .systemBackground, frenchview: .systemBackground)
            setLabelColors(hindilabel: .black, englishlabel: .white, spanishlabel: .black, urdulabel: .black, frenchlabel: .black)
        case "es":
            titleLabel.text = "LanguageScreenTitleKey".localizableString(loc: "es")
            descriptionLabel.text = "LanguageScreenDescriptionKey".localizableString(loc: "es")
            languagechangeLabel.text = "LanguageScreenNoteKey".localizableString(loc: "es")
            btnHindi.isSelected = false
            btnEnglish.isSelected = false
            btnSpanish.isSelected = true
            btnUrdu.isSelected = false
            btnFrench.isSelected = false
            setViewBorderColors(hindiborder: .black, englishborder: .black, spanishborder: .customOrange, urduborder: .black, frenchborder: .black)
            setViewColors(hindiview:.systemBackground, englishview: .systemBackground, spanishview: .customOrange, urduview: .systemBackground, frenchview: .systemBackground)
            setLabelColors(hindilabel: .black, englishlabel: .black, spanishlabel: .white, urdulabel: .black, frenchlabel: .black)
        case "ur":
            titleLabel.text = "LanguageScreenTitleKey".localizableString(loc: "ur")
            descriptionLabel.text = "LanguageScreenDescriptionKey".localizableString(loc: "ur")
            languagechangeLabel.text = "LanguageScreenNoteKey".localizableString(loc: "ur")
            btnHindi.isSelected = false
            btnEnglish.isSelected = false
            btnSpanish.isSelected = false
            btnUrdu.isSelected = true
            btnFrench.isSelected = false
            setViewBorderColors(hindiborder: .black, englishborder: .black, spanishborder: .black, urduborder: .customOrange, frenchborder: .black)
            setViewColors(hindiview: .systemBackground, englishview: .systemBackground, spanishview: .systemBackground, urduview: .customOrange, frenchview: .systemBackground)
            setLabelColors(hindilabel: .black, englishlabel: .black, spanishlabel: .black, urdulabel: .white, frenchlabel: .black)
        case "fr":
            titleLabel.text = "LanguageScreenTitleKey".localizableString(loc: "fr")
            descriptionLabel.text = "LanguageScreenDescriptionKey".localizableString(loc: "fr")
            languagechangeLabel.text = "LanguageScreenNoteKey".localizableString(loc: "fr")
            btnHindi.isSelected = false
            btnEnglish.isSelected = false
            btnSpanish.isSelected = false
            btnUrdu.isSelected = false
            btnFrench.isSelected = true
            setViewBorderColors(hindiborder: .black, englishborder: .black, spanishborder: .black, urduborder: .black, frenchborder: .customOrange)
            setViewColors(hindiview: .systemBackground, englishview: .systemBackground, spanishview: .systemBackground, urduview: .systemBackground, frenchview: .customOrange)
            setLabelColors(hindilabel: .black, englishlabel: .black, spanishlabel: .black, urdulabel: .black, frenchlabel: .white)
        default: break
        }
    }
    
    @IBAction func btnLetsGoTapped(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "Intro01ViewController") as! Intro01ViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    // All Radio Button Action
    @IBAction func languageSelected(_ sender: UIButton) {
        resetButtons()
        sender.isSelected = true
        
        switch sender {
        case btnHindi:
            selectedLanguage = "hi"
            if traitCollection.userInterfaceStyle == .dark {
                // Dark mode color
                setViewBorderColors(hindiborder: .customOrange, englishborder: .white, spanishborder: .white, urduborder: .white, frenchborder: .white)
                setViewColors(hindiview:.customOrange, englishview: .customBlack, spanishview: .customBlack, urduview:.customBlack, frenchview: .customBlack)
            } else {
                // Light mode color
                setViewBorderColors(hindiborder: .customOrange, englishborder: .black, spanishborder: .black, urduborder: .black, frenchborder: .black)
                setViewColors(hindiview: .customOrange, englishview: .systemBackground, spanishview: .systemBackground, urduview: .systemBackground, frenchview: .systemBackground)
                setLabelColors(hindilabel: .white, englishlabel: .black, spanishlabel: .black, urdulabel: .black, frenchlabel: .black)
            }
            
            
        case btnEnglish:
            selectedLanguage = "en"
            if traitCollection.userInterfaceStyle == .dark {
                // Dark mode color
                setViewBorderColors(hindiborder: .white, englishborder: .customOrange, spanishborder: .white, urduborder: .white, frenchborder: .white)
                setViewColors(hindiview:.customBlack, englishview: .customOrange, spanishview: .customBlack, urduview:.customBlack, frenchview: .customBlack)
            } else {
                // Light mode color
                setViewBorderColors(hindiborder: .black, englishborder: .customOrange, spanishborder: .black, urduborder: .black, frenchborder: .black)
                setViewColors(hindiview: .systemBackground, englishview: .customOrange, spanishview: .systemBackground, urduview: .systemBackground, frenchview: .systemBackground)
                setLabelColors(hindilabel: .black, englishlabel: .white, spanishlabel: .black, urdulabel: .black, frenchlabel: .black)
            }
            
            
        case btnSpanish:
            selectedLanguage = "es"
            if traitCollection.userInterfaceStyle == .dark {
                // Dark mode color
                setViewBorderColors(hindiborder: .white, englishborder: .white, spanishborder: .customOrange, urduborder: .white, frenchborder: .white)
                setViewColors(hindiview:.customBlack, englishview: .customBlack, spanishview: .customOrange, urduview:.customBlack, frenchview: .customBlack)
            } else {
                // Light mode color
                setViewBorderColors(hindiborder: .black, englishborder: .black, spanishborder: .customOrange, urduborder: .black, frenchborder: .black)
                setViewColors(hindiview:.systemBackground, englishview: .systemBackground, spanishview: .customOrange, urduview: .systemBackground, frenchview: .systemBackground)
                setLabelColors(hindilabel: .black, englishlabel: .black, spanishlabel: .white, urdulabel: .black, frenchlabel: .black)
            }
            
            
        case btnUrdu:
            selectedLanguage = "ur"
            if traitCollection.userInterfaceStyle == .dark {
                // Dark mode color
                setViewBorderColors(hindiborder: .white, englishborder: .white, spanishborder: .white, urduborder: .customOrange, frenchborder: .white)
                setViewColors(hindiview:.customBlack, englishview: .customBlack, spanishview: .customBlack, urduview:.customOrange, frenchview: .customBlack)
            } else {
                // Light mode color
                setViewBorderColors(hindiborder: .black, englishborder: .black, spanishborder: .black, urduborder: .customOrange, frenchborder: .black)
                setViewColors(hindiview: .systemBackground, englishview: .systemBackground, spanishview: .systemBackground, urduview: .customOrange, frenchview: .systemBackground)
                setLabelColors(hindilabel: .black, englishlabel: .black, spanishlabel: .black, urdulabel: .white, frenchlabel: .black)
            }
            
            
        case btnFrench:
            selectedLanguage = "fr"
            if traitCollection.userInterfaceStyle == .dark {
                // Dark mode color
                setViewBorderColors(hindiborder: .white, englishborder: .white, spanishborder: .white, urduborder: .white, frenchborder: .customOrange)
                setViewColors(hindiview:.customBlack, englishview: .customBlack, spanishview: .customBlack, urduview:.customBlack, frenchview: .customOrange)
            } else {
                // Light mode color
                setViewBorderColors(hindiborder: .black, englishborder: .black, spanishborder: .black, urduborder: .black, frenchborder: .customOrange)
                setViewColors(hindiview: .systemBackground, englishview: .systemBackground, spanishview: .systemBackground, urduview: .systemBackground, frenchview: .customOrange)
                setLabelColors(hindilabel: .black, englishlabel: .black, spanishlabel: .black, urdulabel: .black, frenchlabel: .white)
            }
            
            
        default:
            selectedLanguage = nil
        }
        UserDefaults.standard.set(selectedLanguage, forKey: LanguageSet.languageSelected)
        UserDefaults.standard.synchronize()
    }
    
    
}
extension UpdateViewController {
    
    private func setupRadioButtons() {
        setupRadioButton(btnHindi)
        setupRadioButton(btnEnglish)
        setupRadioButton(btnSpanish)
        setupRadioButton(btnUrdu)
        setupRadioButton(btnFrench)
    }
    
    private func setupRadioButton(_ button: UIButton) {
        if traitCollection.userInterfaceStyle == .dark {
            // Dark mode color
            button.setImage(UIImage(named: "RadioWhite"), for: .normal)
            button.setImage(UIImage(named: "Radio Fill"), for: .selected)
        } else {
            // Light mode color
            button.setImage(UIImage(named: "Radio"), for: .normal)
            button.setImage(UIImage(named: "Radio Fill"), for: .selected)
        }
        
    }
    
    private func resetButtons() {
        btnHindi.isSelected = false
        btnEnglish.isSelected = false
        btnSpanish.isSelected = false
        btnUrdu.isSelected = false
        btnFrench.isSelected = false
    }
    
    private func setupRadioBoader() {
        if traitCollection.userInterfaceStyle == .dark {
            // Dark mode color
            hindiView.layer.borderWidth = 1
            englishView.layer.borderWidth = 1
            spanishView.layer.borderWidth = 1
            frenchView.layer.borderWidth = 1
            urduView.layer.borderWidth = 1
            
            hindiView.layer.borderColor = UIColor.white.cgColor
            englishView.layer.borderColor = UIColor.white.cgColor
            spanishView.layer.borderColor = UIColor.white.cgColor
            frenchView.layer.borderColor = UIColor.white.cgColor
            urduView.layer.borderColor = UIColor.white.cgColor
            
            hindiView.layer.cornerRadius = hindiView.frame.height / 2
            englishView.layer.cornerRadius = englishView.frame.height / 2
            spanishView.layer.cornerRadius = spanishView.frame.height / 2
            frenchView.layer.cornerRadius = frenchView.frame.height / 2
            urduView.layer.cornerRadius = urduView.frame.height / 2
            backgroundView.layer.cornerRadius = 20
            backgroundView.layer.backgroundColor = #colorLiteral(red: 0.1529411765, green: 0.1529411765, blue: 0.1529411765, alpha: 1)
            
            btnLetsGo.layer.cornerRadius = btnLetsGo.frame.height / 2
        } else {
            // Light mode color
            hindiView.layer.borderWidth = 1
            englishView.layer.borderWidth = 1
            spanishView.layer.borderWidth = 1
            frenchView.layer.borderWidth = 1
            urduView.layer.borderWidth = 1
            backgroundView.layer.borderWidth = 2
            backgroundView.layer.borderColor = #colorLiteral(red: 0.8199999332, green: 0.8199999332, blue: 0.8389999866, alpha: 1)
            
            hindiView.layer.cornerRadius = hindiView.frame.height / 2
            englishView.layer.cornerRadius = englishView.frame.height / 2
            spanishView.layer.cornerRadius = spanishView.frame.height / 2
            frenchView.layer.cornerRadius = frenchView.frame.height / 2
            urduView.layer.cornerRadius = urduView.frame.height / 2
            backgroundView.layer.cornerRadius = 20
            backgroundView.layer.backgroundColor = UIColor.white.cgColor
            
            btnLetsGo.layer.cornerRadius = btnLetsGo.frame.height / 2
        }
        
    }
    
    private func setViewBorderColors(hindiborder: UIColor, englishborder: UIColor, spanishborder: UIColor, urduborder: UIColor, frenchborder: UIColor) {
        hindiView.layer.borderColor = hindiborder.cgColor
        englishView.layer.borderColor = englishborder.cgColor
        spanishView.layer.borderColor = spanishborder.cgColor
        urduView.layer.borderColor = urduborder.cgColor
        frenchView.layer.borderColor = frenchborder.cgColor
    }
    
    private func setViewColors(hindiview: UIColor, englishview: UIColor, spanishview: UIColor, urduview: UIColor, frenchview: UIColor) {
        hindiView.backgroundColor = hindiview
        englishView.backgroundColor = englishview
        spanishView.backgroundColor = spanishview
        urduView.backgroundColor = urduview
        frenchView.backgroundColor = frenchview
    }
    
    private func setLabelColors(hindilabel: UIColor, englishlabel: UIColor, spanishlabel: UIColor, urdulabel: UIColor, frenchlabel: UIColor) {
        hindiLabel.textColor = hindilabel
        englishLabel.textColor = englishlabel
        spanishLabel.textColor = spanishlabel
        urduLabel.textColor = urdulabel
        frenchLabel.textColor = frenchlabel
    }
    
}
