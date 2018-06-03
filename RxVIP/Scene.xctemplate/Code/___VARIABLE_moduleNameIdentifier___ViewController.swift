//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit
import RxSwift

protocol ___VARIABLE_moduleNameIdentifier___ViewInputProtocol: class {
    var viewModelSubject: PublishSubject<___VARIABLE_moduleNameIdentifier___ViewModel> {get}
}

class ___VARIABLE_moduleNameIdentifier___ViewController: UIViewController {

    var interactor: ___VARIABLE_moduleNameIdentifier___InteractorProtocol?
    var router: ___VARIABLE_moduleNameIdentifier___RouterProtocol?
    var viewModelSubject = PublishSubject<___VARIABLE_moduleNameIdentifier___ViewModel>()

    let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModelSubject.subscribe(onNext: { [weak self]  in
            print("Viewmodel \($0) was changed in \(String(describing: self))")
        }).disposed(by: disposeBag)

        self.interactor?.viewDidLoad()
    }

    // MARK: Object lifecycle

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
    {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }

    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        setup()
    }

    func setup() {
        let viewController = self
        let interactor = ___VARIABLE_moduleNameIdentifier___Interactor()
        let presenter = ___VARIABLE_moduleNameIdentifier___Presenter()
        let router = ___VARIABLE_moduleNameIdentifier___Router()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
    }
}

extension ___VARIABLE_moduleNameIdentifier___ViewController: ___VARIABLE_moduleNameIdentifier___ViewInputProtocol {

}

