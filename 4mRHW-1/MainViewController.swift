//
//  MainViewController.swift
//  4mRHW-1
//
//  Created by Sultanbai Almaz on 1/9/23.
//

import UIKit

class MainViewController: UIViewController {
    
    private var mainImageView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "mainLogo")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private var userImageView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "User1")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private var googleImageView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "gooGle")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private var loginLabel0: UILabel = {
        let view = UILabel()
        view.text = "Login"
        view.font = .systemFont(ofSize: 14, weight: .bold)
        view.font = .preferredFont(forTextStyle: .callout)
        view.textAlignment = .left
        //text color
        // линия line around
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private var welcomLabel1: UILabel = {
        let view = UILabel()
        view.text = "Welcom Back Sultanbai Almaz"
        view.font = .systemFont(ofSize: 12, weight: .light)
        view.font = .preferredFont(forTextStyle: .callout)
        view.textAlignment = .left
        //text color
        // линия line around
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private var enterLabel2: UILabel = {
        let view = UILabel()
        view.text = "Enter Your Mobile Number"
        view.font = .systemFont(ofSize: 17, weight: .bold)
        view.font = .preferredFont(forTextStyle: .callout)
        view.textAlignment = .left
        //text color
        // линия line around
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private var changeLabel3: UILabel = {
        let view = UILabel()
        view.text = "Change Number?"
        view.font = .systemFont(ofSize: 12, weight: .bold)
        view.font = .preferredFont(forTextStyle: .callout)
        view.textAlignment = .left
        //text color
        // линия line around
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var googleLabel4: UILabel = {
        let view = UILabel()
        view.text = "Google"
        view.font = .systemFont(ofSize: 14, weight: .bold)
        view.font = .preferredFont(forTextStyle: .callout)
        view.textAlignment = .left
        //text color
        // линия line around
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var accountLabel5: UILabel = {
        let view = UILabel()
        view.text = "You Dont have an account?"
        view.font = .systemFont(ofSize: 12, weight: .bold)
        view.font = .preferredFont(forTextStyle: .callout)
        view.textAlignment = .left
        //text color
        // линия line around
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private var numberTextField1: UITextField = {
        let view = UITextField()
        view.backgroundColor = .white
        view.placeholder = "Enter number"
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    private var loginButton: UIButton = {
        let view = UIButton()
        view.backgroundColor = #colorLiteral(red: 0.9467326999, green: 0.4765026569, blue: 0.4182939231, alpha: 1)
        view.layer.cornerRadius = 10
        view.addTarget(
            self,
            action: #selector(loginButtonTapped),
            for: .touchUpInside
        )
        view.setTitle("Login", for: .normal)
        view.titleLabel?.font = .systemFont(ofSize: 15, weight: .bold)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
    
    @objc private func loginButtonTapped(sender: UIButton) {
        let result = numberTextField1.checkIsEmpty()
        if result {
            let vc = ViewController()
            navigationController?.pushViewController(vc, animated: true)
            
        }
        
    }
    
    
    private func setup() {
        view.backgroundColor = #colorLiteral(red: 0.9719485641, green: 0.9719484448, blue: 0.9719484448, alpha: 1)
        setupSubView()
        setupConstraints()
        
    }
    
    private func setupSubView() {
        
        view.addSubview(mainImageView)
        view.addSubview(userImageView)
        view.addSubview(googleImageView)
        view.addSubview(loginButton)
        view.addSubview(numberTextField1)
        view.addSubview(loginLabel0)
        view.addSubview(welcomLabel1)
        view.addSubview(enterLabel2)
        view.addSubview(changeLabel3)
        view.addSubview(googleLabel4)
        view.addSubview(accountLabel5)
    }
    
    private func setupConstraints() {
        let imageConstraints = [
            mainImageView.leadingAnchor.constraint(
                equalTo: view.leadingAnchor,
                constant: 60
            ),
            mainImageView.trailingAnchor.constraint(
                equalTo: view.trailingAnchor,
                constant: -60
            ),
            mainImageView.topAnchor.constraint(
                equalTo: view.topAnchor,
                constant: 150
            ),
            mainImageView.heightAnchor.constraint(
                equalToConstant: 231
            )
        ]
        let userImageConstraints = [
            userImageView.leadingAnchor.constraint(
                equalTo: view.leadingAnchor,
                constant: 74
            ),
            
            userImageView.topAnchor.constraint(
                equalTo: view.topAnchor,
                constant: 64
            ),
            userImageView.heightAnchor.constraint(
                equalToConstant: 19
            )
        ]
        let image2Constraints = [
            googleImageView.leadingAnchor.constraint(
                equalTo: view.leadingAnchor,
                constant: 160),
           
            googleImageView.topAnchor.constraint(
                equalTo: loginButton.bottomAnchor,
                constant: 42),
            googleImageView.widthAnchor.constraint(
                equalToConstant: 22),
            googleImageView.heightAnchor.constraint(
                equalToConstant: 22)
            
        ]
        let loginButtonConstraints = [
            loginButton.leadingAnchor.constraint(
                equalTo: view.leadingAnchor,
                constant: 24
            ),
            loginButton.trailingAnchor.constraint(
                equalTo: view.trailingAnchor,
                constant: -24
            ),
            loginButton.topAnchor.constraint(
                equalTo: numberTextField1.bottomAnchor,
                constant: 64
            ),
            loginButton.heightAnchor.constraint(
                equalToConstant: 43
            )
        ]
        let textField1Constraints = [
            numberTextField1.leadingAnchor.constraint(
                equalTo: view.leadingAnchor,
                constant: 24
            ),
            numberTextField1.trailingAnchor.constraint(
                equalTo: view.trailingAnchor,
                constant: -24
            ),
            numberTextField1.topAnchor.constraint(
                equalTo: enterLabel2.topAnchor,
                constant: 50
            ),
            numberTextField1.heightAnchor.constraint(equalToConstant: 31)
       
        ]
        let textLabel0Constraints = [
           loginLabel0.leadingAnchor.constraint(
                equalTo: view.leadingAnchor,
                constant: 24
            ),
            loginLabel0.trailingAnchor.constraint(
                equalTo: view.trailingAnchor,
                constant: 24
            ),
            loginLabel0.topAnchor.constraint(
                equalTo: view.topAnchor,
                constant: 62
            )
       
        ]
        let textLabel1Constraints = [
           welcomLabel1.leadingAnchor.constraint(
                equalTo: view.leadingAnchor,
                constant: 24
            ),
            welcomLabel1.trailingAnchor.constraint(
                equalTo: view.trailingAnchor,
                constant: 24
            ),
            welcomLabel1.topAnchor.constraint(
                equalTo: view.topAnchor,
                constant: 88
            )
       
        ]

        let textLabel2Constraints = [
            enterLabel2.leadingAnchor.constraint(
                equalTo: view.leadingAnchor,
                constant: 94
            ),
            enterLabel2.trailingAnchor.constraint(
                equalTo: view.trailingAnchor,
                constant: -94
            ),
            enterLabel2.topAnchor.constraint(
                equalTo: mainImageView.bottomAnchor,
                constant: 15
            )
       
        ]
        let textLabel3Constraints = [
            changeLabel3.leadingAnchor.constraint(
                equalTo: view.leadingAnchor,
                constant: 230
            ),
            changeLabel3.trailingAnchor.constraint(
                equalTo: view.trailingAnchor,
                constant: -30
            ),
            changeLabel3.topAnchor.constraint(
                equalTo: numberTextField1.bottomAnchor,
                constant: 11
            )
       
        ]
        let textLabel4Constraints = [
           googleLabel4.leadingAnchor.constraint(
                equalTo: view.leadingAnchor,
                constant: 193
            ),
           googleLabel4.trailingAnchor.constraint(
                equalTo: view.trailingAnchor,
                constant: 193
            ),
           googleLabel4.topAnchor.constraint(
                equalTo: loginButton.bottomAnchor,
                constant: 45
            )
       
        ]
        
        let textLabel5Constraints = [
            accountLabel5.leadingAnchor.constraint(
                equalTo: view.leadingAnchor,
                constant: 80
            ),
            accountLabel5.trailingAnchor.constraint(
                equalTo: view.trailingAnchor,
                constant: 193
            ),
            accountLabel5.topAnchor.constraint(
                equalTo: googleLabel4.bottomAnchor,
                constant: 87
            )
       
        ]
        
       
        NSLayoutConstraint.activate(imageConstraints)
        NSLayoutConstraint.activate(image2Constraints)
        NSLayoutConstraint.activate(userImageConstraints)
        NSLayoutConstraint.activate(loginButtonConstraints)
        NSLayoutConstraint.activate(textField1Constraints)
        NSLayoutConstraint.activate(textLabel0Constraints)
        NSLayoutConstraint.activate(textLabel1Constraints)
        NSLayoutConstraint.activate(textLabel2Constraints)
        NSLayoutConstraint.activate(textLabel3Constraints)
        NSLayoutConstraint.activate(textLabel4Constraints)
        NSLayoutConstraint.activate(textLabel5Constraints)
    }

}
extension UITextField {
    func checkIsEmpty() -> Bool {
        guard let text = self.text else {
            return false
        }
        if text.isEmpty {
            
            self.placeholder = "fill the field"
            
            return false
            
            
        } else {
            return true
        }
    }
}
