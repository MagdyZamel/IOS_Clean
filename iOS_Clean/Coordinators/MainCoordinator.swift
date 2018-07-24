//
//  MainCoordinator.swift
//  E-Tabeb
//
//  Created by apple on 7/3/17.
//  Copyright © 2017 Code95. All rights reserved.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    func start() {
        
        let viewModel = MainViewModel()
        viewModel.coordinatorDelegate = self
        viewModel.navigationController = self.navigationController
        let viewController = MainViewController(viewModel: viewModel)
//        let viewController = WaitingListPickUpViewController()
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    func startMyDoctorsWithReturn(viewModel: MainViewModel) -> UIViewController {
        viewModel.coordinatorDelegate = self
        let viewController = MyDoctorsViewController()
        viewController.viewModel = viewModel
        return viewController
    }
    
    func startMoreWithReturn(viewModel: MainViewModel) -> UIViewController {
        viewModel.coordinatorDelegate = self
        let viewController = MoreViewController()
        viewController.viewModel = viewModel
        return viewController
    }
}

extension MainCoordinator: MainCoordinatorDelegate {
    func goToProfile() {
        let coordinator = ProfileCoordinator(navigationController: self.navigationController)
        coordinator.start()
        childCoordinators.append(coordinator)
    }
    
    func goToLogin() {
        let coordinator = LoginCoordinator(navigationController: self.navigationController)
        coordinator.start()
        childCoordinators.append(coordinator)
    }
    
    func goToSearchResult() {
        let coordinator = SearchResultCoordinator(navigationController: self.navigationController)
        coordinator.start()
        childCoordinators.append(coordinator)
    }
    
    func goToSearchFilters() {
        let coordinator = SearchFilterCoordinator(navigationController: self.navigationController)
        coordinator.start()
        childCoordinators.append(coordinator)
    }
    
    func goToNotifications() {
        log.debug("go to notifications will be implemented")
    }
    
    func goToPersonalInfoEdit() {
        let coordinator = PersonalInfoEditCoordinator(navigationController: self.navigationController)
        coordinator.start()
        childCoordinators.append(coordinator)
    }
    
    func goToMedicalInsuranceInfoEdit() {
        let coordinator = MedicalInsuranceCompanyInfoEditCoordinator(navigationController: self.navigationController)
        coordinator.start()
        childCoordinators.append(coordinator)
    }
    
    func goToPassword() {
        let coordinator = PasswordCoordinator(navigationController: self.navigationController)
        coordinator.start()
        childCoordinators.append(coordinator)
    }
    
    func goToAddNewFamilyMember() {
        let coordinator = AddNewFamilyMemberCoordinator(navigationController: self.navigationController)
        coordinator.start()
        childCoordinators.append(coordinator)
    }
    
    func goToEditFamilyMember(member: FamilyMember) {
        let coordinator = UpdateFamilyMemberCoordinator(navigationController: self.navigationController)
        coordinator.familyMember = member
        coordinator.start()
        childCoordinators.append(coordinator)
    }
    
    func goToReservation(timeSlotId: Int, date: Int, patientId: Int){
        let coordinator = ReservationCoordinator(navigationController: self.navigationController)
        coordinator.start(timeSlotId: timeSlotId, date: date)
        childCoordinators.append(coordinator)
    }
    
    func goToReservation(timeSlotId: Int, date: Int){
        let coordinator = ReservationCoordinator(navigationController: self.navigationController)
        coordinator.start(timeSlotId: timeSlotId, date: date)
        childCoordinators.append(coordinator)
    }
    
    func goToSchedule(timeSlotId: Int, doctorId: Int, patientId: Int)  {
        let coordinator = DoctorScheduleCoordinator(navigationController: self.navigationController)
        coordinator.start(timeSlotId: timeSlotId, doctorId: doctorId, patientId: patientId)
        childCoordinators.append(coordinator)
    }
    
    func goToSchedule(doctorId: Int)  {
        let coordinator = DoctorScheduleCoordinator(navigationController: self.navigationController)
        coordinator.start(doctorId: doctorId)
        childCoordinators.append(coordinator)
    }
    
}
