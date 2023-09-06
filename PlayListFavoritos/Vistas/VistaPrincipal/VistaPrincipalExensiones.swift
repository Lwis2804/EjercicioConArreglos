

import UIKit

extension VistaPrincipalViewController: UITableViewDataSource & UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if arrayPickArtist[indexPath.row].1 == true {
            arrayPickArtist[indexPath.row].1 = false
        }else{
            arrayPickArtist[indexPath.row].1 = true
        }
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayPickArtist.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NumeroAleatorioTableViewCell.identifier, for: indexPath) as? NumeroAleatorioTableViewCell ?? NumeroAleatorioTableViewCell()
        print(arrayPickArtist[indexPath.row].0)
        print(arrayPickArtist[indexPath.row].1)
        cell.setUpPickArtist(randomArtist: arrayPickArtist[indexPath.row].0, andState: arrayPickArtist[indexPath.row].1)
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return.delete
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt IndexPath : IndexPath) {
        if editingStyle == .delete {
           // tableView.beginUpdates()
            arrayPickArtist.remove(at: IndexPath.row)
            tableView.deleteRows(at: [IndexPath], with: .fade)
          //  tableView.endUpdates()
            self.playListPpal.reloadData()
        }
    }
    
}


