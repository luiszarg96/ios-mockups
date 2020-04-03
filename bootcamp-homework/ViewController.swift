

import UIKit

class ViewController: UIViewController {

    @IBOutlet var scrollViewContainer: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        main()
    }

    func main(){
        let viewContainer = UIView()
        
        //header
        let headerView = UIView()
        headerView.contentMode = .scaleAspectFill
        
        //header backgorund
        let headerBackground = UIView(frame: CGRect(x: 0, y: 0, width: scrollViewContainer.frame.width, height: 280))
        headerBackground.backgroundColor = UIColor.blue
        headerBackground.layer.cornerRadius = 20.0
        
        //header name
        let nameLbl = UILabel()
        nameLbl.text = "Sarah Jamel"
        nameLbl.textColor = UIColor.white
        
        //header profilePic
        let profilePic = UIImageView()
        profilePic.image = UIImage(named:"avatar")
        
        //add subviews
        headerView.addSubview(headerBackground)
        headerView.addSubview(headerBackground)
        
        
        
        //form
        
        //footer
        
    }
    
}

