//
//  NotesListRouterProtocol.swift
//  Notes
//
//  Created by Vitaly Anpilov on 07.10.2023.
//

import Foundation

protocol NotesListViewProtocol {
    var presenter: NotesListPresenterProtocol? { get set }
}

protocol NotesListPresenterProtocol {
    var view: NotesListViewProtocol? { get set }
    var interactor: NotesListInteractorProtocol? { get set }
    var router: NotesListRouterProtocol? { get set }
    
    func viewWillAppear()
}

protocol NotesListInteractorProtocol {
    func retrieveNotes()
}

protocol NotesListRouterProtocol {
    
}
