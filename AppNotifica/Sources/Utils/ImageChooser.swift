//
//  ImageChooser.swift
//  AppNotifica
//
//  Created by Kleyton Lopes on 22/11/23.
//

import UIKit

class ImageChooser: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var selector = UIImagePickerController()
    
    var alert = UIAlertController(title: "Escolha uma opção", message: nil, preferredStyle: .actionSheet)
    
    var viewController: UIViewController?
    
    var callback : ( (UIImage) -> ())?
    
    func selectImage(_ viewController: UIViewController,_ callback: @escaping ((UIImage) -> ())) {
        self.callback = callback
        
        self.viewController = viewController
        
        let actionCamera = UIAlertAction(title: "Camera", style: .default) { action in
            self.openCamera()
        }
        
        let actionPhotos = UIAlertAction(title: "Galeria", style: .default) { action in
            self.openPhotos()
        }
        
        let actionCancel = UIAlertAction(title: "Cancelar", style: .cancel)
        
        selector.delegate = self
        
        alert.addAction(actionCamera)
        alert.addAction(actionPhotos)
        alert.addAction(actionCancel)
        
        alert.popoverPresentationController?.sourceView = self.viewController?.view
        
        viewController.present(alert, animated: true, completion: nil)
    }
    
    func openCamera(){
        if(UIImagePickerController .isSourceTypeAvailable(.camera)){
            selector.sourceType = .camera
            self.viewController?.present(selector, animated: true, completion: nil)
        }else{
            let alertErrorCamera = UIAlertController(title: "Alerta", message: "Aão foi possível o acesso à câmera", preferredStyle: .actionSheet)
            
            let actionOK = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            
            alertErrorCamera.addAction(actionOK)
            self.viewController?.present(alertErrorCamera, animated: true, completion: nil)
        }
    }
    
    func openPhotos(){
        alert.dismiss(animated: true, completion: nil)
        
        selector.sourceType = .photoLibrary
        
        self.viewController?.present(selector, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true, completion: nil)
        
        guard let image = info[.originalImage] as? UIImage else {
            fatalError("Esperava-se uma imagem, mas foi dado o seguinte: \(info)")
        }
        self.callback?(image)
    }
}
