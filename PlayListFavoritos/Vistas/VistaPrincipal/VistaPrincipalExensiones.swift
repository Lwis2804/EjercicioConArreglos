

import UIKit

extension VistaPrincipalViewController: UITableViewDataSource & UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayNumerosAleatorios.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NumeroAleatorioTableViewCell.identifier, for: indexPath) as? NumeroAleatorioTableViewCell ?? NumeroAleatorioTableViewCell()
        cell.setupNumeroAleatorio(numeroAleatorio: arrayNumerosAleatorios[indexPath.row])
        return cell
    }
    
    
}
