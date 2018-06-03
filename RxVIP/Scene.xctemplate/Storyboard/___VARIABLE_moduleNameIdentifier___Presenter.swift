//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

protocol ___VARIABLE_moduleNameIdentifier___InteractorOutputProtocol: class {

    func showModel(model: ___VARIABLE_moduleNameIdentifier___ViewModel)
}

class ___VARIABLE_moduleNameIdentifier___Presenter {

    weak var viewController: ___VARIABLE_moduleNameIdentifier___ViewInputProtocol!

}

extension ___VARIABLE_moduleNameIdentifier___Presenter: ___VARIABLE_moduleNameIdentifier___InteractorOutputProtocol {

    func showModel(model: ___VARIABLE_moduleNameIdentifier___ViewModel) {
        viewController.viewModelSubject.onNext(model)
    }

}
