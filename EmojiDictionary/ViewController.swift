
//  Created by vignesh on 7/4/20.
//To add emojis control+Command+ space bar.😂
import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var emojis = ["😀","😬","😆","🤑"]
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        tableView.dataSource = self
        tableView.delegate = self
        
    }
      //Howmany rows going to be in a table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }


    //WHat is the content in the table view (cell =table row)
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Creating new UI Table view cell and assiging it to cell constant.
        //let keyword is to declare contstant.
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       print(sender)
       let defVC = segue.destination as! DefinationViewController
       defVC.emoji = sender as! String
        
   }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }


}

