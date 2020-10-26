//
//  AppDelegate.swift
//  Macro Dashboard
//
//  Created by Yosua Marchel on 22/10/20.
//  Copyright © 2020 Yosua Marchel. All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


// MARK: - Core Data stack

    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "hydrowatch")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()

//    // MARK: - Core Data Saving support
//
//    func saveContext () {
//        let context = persistentContainer.viewContext
//        if context.hasChanges {
//            do {
//                try context.save()
//            } catch {
//                // Replace this implementation with code to handle the error appropriately.
//                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
//                let nserror = error as NSError
//                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
//            }
//        }
//    }
//
//    func StoreContainerData(data: DataContainer) -> Bool {
//        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return false }
//
//        let context = appDelegate.persistentContainer.viewContext
//
//        let containerEntity = NSEntityDescription.entity(forEntityName: "ContainerData", in: context)!
//
//        let container = NSManagedObject(entity: containerEntity, insertInto: context)
//
//        container.setValue(data.containerName, forKey: "containerName")
//        container.setValue(data.plantId, forKey: "plantId")
//        container.setValue(data.plantName, forKey: "plantName")
//        container.setValue(data.createdDate, forKey: "createdAt")
//
//        do {
//
//            try context.save()
//            return true
//
//        } catch let error as NSError {
//
//            print("Gagal save context \(error), \(error.userInfo)")
//            return false
//
//        }
//    }
//
//    func DeleteContainerData(plantId: String) -> Bool {
//        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return false }
//
//        let managedContext = appDelegate.persistentContainer.viewContext
//
//        let fetchRequest:NSFetchRequest<NSFetchRequestResult> = NSFetchRequest.init(entityName: "ContainerData")
//        fetchRequest.predicate = NSPredicate(format: "plantId = %@", plantId)
//
//        do {
//
//            let dataToDelete = try managedContext.fetch(fetchRequest)[0] as! NSManagedObject
//            managedContext.delete(dataToDelete)
//
//            try managedContext.save()
//
//            return true
//
//        } catch let error as NSError {
//
//            print("Gagal save context \(error), \(error.userInfo)")
//            return false
//
//        }
//    }
//
//    func UpdateContainerData(data: DataContainer) -> Bool {
//        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return false }
//
//        let managedContext = appDelegate.persistentContainer.viewContext
//
//        let fetchRequest:NSFetchRequest<NSFetchRequestResult> = NSFetchRequest.init(entityName: "ContainerData")
//        fetchRequest.predicate = NSPredicate(format: "plantId = %@", data.plantId)
//
//        do {
//
//            let fetch = try managedContext.fetch(fetchRequest)
//            let dataToUpdate = fetch[0] as! NSManagedObject
//
//            dataToUpdate.setValue(data.containerName, forKey: "containerName")
//            dataToUpdate.setValue(data.plantName, forKey: "plantName")
//            dataToUpdate.setValue(data.updatedAt, forKey: "updatedAt")
//
//            try managedContext.save()
//            return true
//
//        } catch let error as NSError {
//
//            print("Gagal save context \(error), \(error.userInfo)")
//            return false
//
//        }
//    }
//
//    func GetContainerData() -> [DataContainer] {
//        var containerData: [DataContainer] = []
//
//        guard let appDel = UIApplication.shared.delegate as? AppDelegate else { return containerData }
//        let context = appDel.persistentContainer.viewContext
//
//        let fetch = NSFetchRequest<NSFetchRequestResult>(entityName: "ContainerData")
//        let sort = NSSortDescriptor(key: "createdAt", ascending: false)
//        fetch.sortDescriptors = [sort]
//
//        do {
//
//            let result = try context.fetch(fetch)
//
//            for data in result as! [NSManagedObject] {
//                containerData.append(DataContainer(containerName: data.value(forKey: "containerName") as! String, plantId: data.value(forKey: "plantId") as! String, plantName: data.value(forKey: "plantName") as! String, createdDate: data.value(forKey: "createdAt") as! String, updatedAt: data.value(forKey: "updatedAt") as! String))
//            }
//
//        } catch {
//
//            print("Failed to get data")
//
//        }
//
//        return containerData
//    }
}

