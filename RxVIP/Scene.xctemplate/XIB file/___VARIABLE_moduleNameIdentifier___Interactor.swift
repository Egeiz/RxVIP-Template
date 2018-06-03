//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

protocol ___VARIABLE_moduleNameIdentifier___InteractorProtocol {

    func viewDidLoad()
}

class ___VARIABLE_moduleNameIdentifier___Interactor {

    var presenter: ___VARIABLE_moduleNameIdentifier___InteractorOutputProtocol?
}

extension ___VARIABLE_moduleNameIdentifier___Interactor: ___VARIABLE_moduleNameIdentifier___InteractorProtocol {

    func viewDidLoad() {
        presenter?.showModel(model: ___VARIABLE_moduleNameIdentifier___ViewModel())
    }

}
