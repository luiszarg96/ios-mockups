

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        main()
        
    }

    func main(){
        
        //textfields
        usernameTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        
        let constraints = [
            usernameTextField.heightAnchor.constraint(equalToConstant: 44),
            passwordTextField.heightAnchor.constraint(equalToConstant: 44)
            
        ]
        
        NSLayoutConstraint.activate(constraints)
        
        usernameTextField.layer.cornerRadius = 20.0
        usernameTextField.layer.borderWidth = 2.0
        usernameTextField.layer.borderColor = UIColor.white.cgColor
        usernameTextField.backgroundColor = UIColor(white:1,alpha: 0)
        
        passwordTextField.layer.cornerRadius = 20.0
        passwordTextField.layer.borderWidth = 2.0
        passwordTextField.layer.borderColor = UIColor.white.cgColor
        passwordTextField.backgroundColor = UIColor(white:1,alpha: 0)
        
        
        //set placeholder default value and text color
        usernameTextField.attributedPlaceholder = NSAttributedString(string: "Username",attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        passwordTextField.attributedPlaceholder = NSAttributedString(string: "Password",attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])

        //add icons to textfields

        let userIcon = UIImageView(frame: CGRect(x: 10, y: 0, width: 20, height: 20))
        userIcon.image = UIImage(named:"user-icon")
        userIcon.image = userIcon.image?.withRenderingMode(.alwaysTemplate)
        userIcon.tintColor = UIColor.white
        
         let userIconContainer = UIView(frame: CGRect(x: 20, y: 0, width: 40, height: 20))
        userIconContainer.backgroundColor = .clear
        userIconContainer.addSubview(userIcon)
        
        usernameTextField.leftView = userIconContainer
        usernameTextField.leftViewMode = .always

        let passIcon = UIImageView(frame: CGRect(x: 10, y: 0, width: 20, height: 20))
        passIcon.image = UIImage(named:"pass-icon")
        passIcon.image = passIcon.image?.withRenderingMode(.alwaysTemplate)
        passIcon.tintColor = UIColor.white
        
        let passIconContainer = UIView(frame: CGRect(x: 20, y: 0, width: 40, height: 20))
        passIconContainer.backgroundColor = .clear
        passIconContainer.addSubview(passIcon)
        
        passwordTextField.leftView = passIconContainer
        passwordTextField.leftViewMode = .always
        
        //loginbutton
        loginBtn.layer.cornerRadius = 20.0
        
        loginBtn.layer.shadowColor = UIColor.black.cgColor
        loginBtn.layer.shadowOffset = CGSize(width: 0.0, height: 10)
        loginBtn.layer.shadowOpacity = 0.2
    }
    
}

