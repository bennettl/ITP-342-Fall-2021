//
//  StoryManager.swift
//  MadLibsDemo
//
//  Created by lee bennett on 9/22/21.
//

import Foundation

struct Story {
    let name: String
}

class StoryManager{
 
    func createStory() -> Story{
        return  Story(name: "")
    }
}
