//
//  NotesListPresenter.swift
//  Notes
//
//  Created by Vitaly Anpilov on 07.10.2023.
//

import Foundation

final class NotesListPresenter: NotesListPresenterProtocol {
  
    // MARK: - Properties
    var view: NotesListViewProtocol?
    var interactor: NotesListInteractorProtocol?
    var router: NotesListRouterProtocol?
    
    // MARK: - Layout methods
    func viewWillAppear() {
        interactor?.retrieveNotes()
    }
}
