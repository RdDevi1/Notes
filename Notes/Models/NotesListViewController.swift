//
//  NotesListViewController.swift
//  Notes
//
//  Created by Vitaly Anpilov on 07.10.2023.
//

import UIKit

final class NotesListViewController: UIViewController {
    // MARK: - Layout
    private lazy var notesLabel: UILabel = {
        let label = UILabel()
        label.text = "Notes"
        label.font = UIFont.systemFont(ofSize: 36, weight: .bold)
        
        return label
    }()
    
    private lazy var filterButton: UIButton = {
        let button = UIButton(type: .system)
        
        button.addTarget(self, action: #selector(didTapFilterButton), for: .touchUpInside)
        return button
    }()
    
    private lazy var toggleViewButton: UIButton = {
        let button = UIButton(type: .system)
        
        button.addTarget(self, action: #selector(didTapToggleViewButton), for: .touchUpInside)
        return button
    }()
    
    private lazy var settingButtonsStack: UIStackView = {
        let stack = UIStackView()
        
        return stack
    }()
    
    private lazy var notesTableView: UITableView = {
        let table = UITableView()
        
        
        return table
    }()
    
    private lazy var notesCollectionView: UICollectionView = {
        let collection = UICollectionView()
        
        
        return collection
    }()
    
    private lazy var emptyListStackView: UIStackView = {
        let stack = UIStackView()
        
        return stack
    }()
    
    private lazy var addButton: UIButton = {
        let button = UIButton(type: .system)
        
        return button
    }()

    

    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
    }
    
    // MARK: - Actions
    @objc
    private func didTapFilterButton() {
        
    }
    
    @objc
    private func didTapToggleViewButton() {
        
    }
    
    // MARK: - Layout methods
    
    private func setupView() {
        [notesLabel, notesTableView, notesCollectionView, settingButtonsStack, emptyListStackView, addButton].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview($0)
        }
        
    }
    
    
    
    
}

    // MARK: - NotesListViewProtocol
extension NotesListViewController: NotesListViewProtocol {
    
    
}
