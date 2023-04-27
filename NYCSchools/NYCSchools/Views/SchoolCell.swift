
import UIKit

class SchoolCell: UITableViewCell {
    
    
    //MARK: - Views
    var nameLabel: UILabel!
    var addressLabel: UILabel!
    
    // This is only called when loaded from storyboard
    override func awakeFromNib() {
        super.awakeFromNib()
        prepareUI()
        // Initialization code
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        prepareUI()
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
    }
    
    private func prepareUI() {
        nameLabel = UILabel()
        addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 8).isActive = true
        nameLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -8).isActive = true
        nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 8).isActive = true
        nameLabel.numberOfLines = 0
        
        addressLabel = UILabel()
        addSubview(addressLabel)
        addressLabel.translatesAutoresizingMaskIntoConstraints = false
        addressLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 8).isActive = true
        addressLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -8).isActive = true
        addressLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant:8).isActive = true
        addressLabel.numberOfLines = 0
    }
    
    //MARK: - Public Methods
    
    func setup(from model: SchoolModel) {
        
        nameLabel.text = model.name
        addressLabel.text = model.address
    }

}
