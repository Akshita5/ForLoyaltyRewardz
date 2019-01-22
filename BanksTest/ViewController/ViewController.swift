//
//  ViewController.swift
//  BanksTest
//
//  Created by Akshita Aggarwal on 22/01/19.
//  Copyright © 2019 Akshita Aggarwal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var array = [String]()
    var selectedTarget : Targets = .None

    @IBOutlet weak var banksTableView: UITableView!
    @IBOutlet weak var environmentLabel: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        self.makeArray()
        self.setNavigationTheme()
    }

    func makeArray(){
        array.append("It is well enough that people of the nation do not understand our banking and monetary system, for if they did, I believe there would be a revolution before tomorrow morning.")
        array.append("Banking, I would argue, is the most heavily regulated industry in the world. Regulations don't solve things. Supervision solves things.")
        array.append("Banking was conceived in iniquity and born in sin.")
        array.append("At its core, banking is not simply about profit, but about personal relationships.")
    }

    func setNavigationTheme(){
        let currentTarget : String = Configuration.sharedInstance.targetName

        let currentTargetValue = Targets(rawValue: currentTarget)
        var currentColor = UIColor()
        switch currentTargetValue!{
        case .HDFC:
            currentColor = SkinManager.BankThemes.HDFC
        case .SBI:
            currentColor = SkinManager.BankThemes.SBI
        case .OBC:
            currentColor = SkinManager.BankThemes.OBC
        case .PNB:
            currentColor = SkinManager.BankThemes.PNB
        default:
            self.navigationController?.navigationBar.barTintColor = SkinManager.BankThemes.NoBank
        }
        self.navigationController?.navigationBar.barTintColor = currentColor
        self.title = currentTarget
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
        self.environmentLabel.textColor = currentColor
        self.environmentLabel.text = Configuration.sharedInstance.endpoint
    }
}


extension ViewController : UITableViewDataSource,UITableViewDelegate{

    func numberOfSections(in tableView: UITableView) -> Int{
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.array.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        guard let cell : BankTableViewCell = tableView.dequeueReusableCell(withIdentifier: "BankTableViewCell") as? BankTableViewCell else {return UITableViewCell()}
        self.updateBankCell(cell: cell, indexPath: indexPath as NSIndexPath)
        return cell
    }

    func updateBankCell(cell:BankTableViewCell ,indexPath: NSIndexPath){
        let quote = self.array[indexPath.row]
        cell.bankLabel.text = quote
        cell.backgroundColor = UIColor.clear
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        var height : CGFloat = 20
        let quote = self.array[indexPath.row]
        let font = UIFont.boldSystemFont(ofSize: 16)
        let heightOfQuote = quote.height(withConstrainedWidth: screenWidth-40, font: font)
        height = height + heightOfQuote
        return height
    }
}
