
import UIKit

class TransaccionesHeaderCell:UITableViewCell{
    
}

class TransaccionesItemCell:UITableViewCell{
    @IBOutlet weak var nombreTransaccion: UILabel!
    @IBOutlet weak var fechaTransaccion: UILabel!
    @IBOutlet weak var montoTransaccion: UILabel!
}

class ViewController: UIViewController {

    
    @IBOutlet weak var ocultarBtn: UIButton!
    @IBOutlet weak var informacionAdicionalContainerView: UIView!
    @IBOutlet weak var viewContainer: UIView!
    @IBOutlet weak var mainContainer: UIView!
    @IBOutlet weak var containerHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var transaccionesTable: UITableView!
    @IBOutlet weak var creditoDisponibleProgressBar: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        main()
    }

    func main(){
        //table delegate and datasource
        transaccionesTable.delegate = self
        transaccionesTable.dataSource = self
        
        //hide informacion adicional section
        ocultarBtnTapped(true)
    }
    
    
    @IBAction func ocultarBtnTapped(_ sender: Any) {
        
        //hide informacion adicional section
        informacionAdicionalContainerView.isHidden = !informacionAdicionalContainerView.isHidden
        
        if informacionAdicionalContainerView.isHidden{

            containerHeightConstraint.constant = containerHeightConstraint.constant - informacionAdicionalContainerView.frame.size.height
            
            //change button label text
            ocultarBtn.setTitle("Mas Información", for: .normal)
        }else{

            containerHeightConstraint.constant = containerHeightConstraint.constant +
            informacionAdicionalContainerView.frame.size.height
            
            //change button label text
            ocultarBtn.setTitle("Ocultar", for: .normal)
        }

    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
        
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "transaccionesHeaderID") as! TransaccionesHeaderCell
            return cell
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "transaccionesItemID") as! TransaccionesItemCell
        return cell
    }
    
    
    
    
}

