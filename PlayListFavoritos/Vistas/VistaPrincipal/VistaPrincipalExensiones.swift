

import UIKit

extension VistaPrincipalViewController: UITableViewDataSource & UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayPickArtist.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NumeroAleatorioTableViewCell.identifier, for: indexPath) as? NumeroAleatorioTableViewCell ?? NumeroAleatorioTableViewCell()
        cell.setUpPickArtist(randomArtist: arrayPickArtist[indexPath.row] )
        return cell
    }
    
    
}


//   cell.setupNumeroAleatorio(numeroAleatorio: arrayNumerosAleatorios[indexPath.row])
