//
//  ViewController.swift
//  PhotosAndCollectionView
//
//  Created by lee bennett on 10/25/21.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var mainImageVIew: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func selectImagDIdTapped(_ sender: UIButton) {
    
        let imagePicker = UIImagePickerController()
        
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            imagePicker.sourceType = .camera
        } else{
            imagePicker.sourceType = .photoLibrary
        }
        
        
        imagePicker.modalPresentationStyle = .fullScreen
        imagePicker.delegate = self
        imagePicker.allowsEditing = true
        present(imagePicker, animated: true, completion: nil)
        
    }
    
    // MARK: - UIImagePickerControllerDelegate
    
//    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
//        // write custom code
//        picker.dismiss(animated: true, completion: nil)
//    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let originalImage = info[.originalImage] as! UIImage
        mainImageVIew.image = originalImage
        picker.dismiss(animated: true, completion: nil)
    }
    

}

