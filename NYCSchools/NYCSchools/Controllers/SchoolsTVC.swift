
import UIKit

class SchoolsTVC: UIViewController {
    
    //MARK: - Views
    
     var tableView: UITableView! //Implicitly unwrapped optional
    
    //MARK: - Properties
    
    var tableViewData: [SchoolModel] = []
    
    
    //MARK: - Override Methods
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        prepareUI()
        requestServiceData()
        
    }

    private func prepareUI() {
        tableView = UITableView()
        tableView.register(SchoolCell.self, forCellReuseIdentifier: "SchoolCell")
        view.addSubview(tableView)
        // set to false
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
    
    private func requestServiceData () {
        NetworkManager().callService { (data) in
            
            
            
        }
    }

}

//MARK: - UITableView Delegates
extension SchoolsTVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}
