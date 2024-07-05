//
//  DotnetNewBinding.swift
//  NewBinding
//
//  Created by .NET MAUI team on 6/18/24.
//

import Foundation
import Usercentrics

@objc(DotnetNewBinding)
public class DotnetNewBinding : NSObject
{

    @objc
    public static func getString(myString: String) -> String {
        UsercentricsOptions(settingsId: "")
        return myString  + " from swift!"
    }

}
