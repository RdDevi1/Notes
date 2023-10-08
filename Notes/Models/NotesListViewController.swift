//
//  NotesListViewController.swift
//  Notes
//
//  Created by Vitaly Anpilov on 07.10.2023.
//

import UIKit

final class NotesListViewController: UIViewController {
    
    // MARK: - Properties
    var presenter: NotesListPresenterProtocol?
    
    // MARK: - Layout
    private lazy var notesLabel: UILabel = {
        let label = UILabel()
        label.text = "Notes"
        label.font = UIFont.systemFont(ofSize: 36, weight: .bold)
        return label
    }()
    
    private lazy var filterButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(systemName: "paintpalette"), for: .normal)
        button.tintColor = .black
        button.addTarget(self, action: #selector(didTapFilterButton), for: .touchUpInside)
        return button
    }()
    
    private lazy var toggleViewButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(systemName: "square.grid.2x2"), for: .normal)
//        button.setImage(UIImage(systemName: "rectangle.grid.1x2.fill"), for: .normal)
        button.tintColor = .black
        button.addTarget(self, action: #selector(didTapToggleViewButton), for: .touchUpInside)
        return button
    }()
    
    private lazy var settingButtonsStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 17
        return stack
    }()
    
    private lazy var emptyListLabel: UILabel = {
        let label = UILabel()
        label.text = "Create your first note!"
        label.font = UIFont.systemFont(ofSize: 20, weight: .light)
        return label
    }()
    
    private lazy var emptyImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "scribble.variable")
        return image
    }()
    
    private lazy var emptyListStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 35
        return stack
    }()
    
    private lazy var addButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(systemName: "plus"), for: .normal)
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 35
        button.tintColor = .white
        button.backgroundColor = .orange
        return button
    }()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        presenter?.viewWillAppear()
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
        view.backgroundColor = .white
        settingButtonsStack.addArrangedSubview(filterButton)
        settingButtonsStack.addArrangedSubview(toggleViewButton)
        
        emptyListStackView.addArrangedSubview(emptyImageView)
        emptyListStackView.addArrangedSubview(emptyListLabel)
        
        [notesLabel, settingButtonsStack, emptyListStackView, addButton].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview($0)
        }
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            notesLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 38),
            notesLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 37),
            
            filterButton.heightAnchor.constraint(equalToConstant: 24),
            filterButton.widthAnchor.constraint(equalToConstant: 24),
            
            toggleViewButton.heightAnchor.constraint(equalToConstant: 24),
            toggleViewButton.widthAnchor.constraint(equalToConstant: 24),
            
            settingButtonsStack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 45),
            settingButtonsStack.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -28),
            
            emptyImageView.heightAnchor.constraint(equalToConstant: 208),
            emptyImageView.widthAnchor.constraint(equalToConstant: 208),
            
            addButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -31),
            addButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -106),
            addButton.heightAnchor.constraint(equalToConstant: 70),
            addButton.widthAnchor.constraint(equalToConstant: 70),
            
            emptyListStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            emptyListStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
}

    // MARK: - NotesListViewProtocol
extension NotesListViewController: NotesListViewProtocol {
    
}
