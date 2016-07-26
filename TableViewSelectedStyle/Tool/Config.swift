//
//  Config.swift
//  zanadu
//
//  Created by Benjamin Lefebvre on 3/26/15.
//  Copyright (c) 2015 zanadu. All rights reserved.
//

import Foundation
import UIKit

typealias JSONDictionary = [String: AnyObject]

#if DEVELOPMENT
    let DEVELOPMENT = true
#else
    let DEVELOPMENT = false
#endif


class Config {
    

    struct Colors {
        /// Dark Pink : often used for buttons
        static let ZanaduCerisePink = UIColor(red:0.93, green:0.26, blue:0.45, alpha:1)
        /// Grey : used for disabled buttons (TODO:remove?)
        static let ZanaduGrey = UIColor(red: 169/255, green: 169/255, blue: 169/255, alpha: 1)
        
        
        /// Grey : often used for texts (or background)
        static let PaynesGrey = UIColor(red:0.25, green:0.26, blue:0.28, alpha:1)
        static let DarkJungleGreen = UIColor(red:0.11, green:0.13, blue:0.14, alpha:1)
        
        
        /// Dark Grey : used for backgrounds
        static let ZanaduShark = UIColor(red:0.15, green:0.16, blue:0.17, alpha:1)
        /// Ligh Grey : used for backgrounds
        static let ZanaduAluminum = UIColor(red:0.6, green:0.6, blue:0.6, alpha:1)
        /// Used for fields background
        static let ZanaduOpacity = CGFloat(0.6)
        
        /// Used for images overlay
        static let ImagesDarkOverlayColor = UIColor.blackColor()
        static let ImagesDarkOverlayAlpha = CGFloat(0.23)
        
        static let TagViewColor = UIColor(red:93/255.0, green:181/255.0, blue:193/255.0, alpha:1)
        
        static let TagViewBackground = UIColor(red:0.12, green:0.12, blue:0.12, alpha:1)
        static let TagFieldBackground = ZanaduShark
        
        static let ButtonLightPink = UIColor(red:0.93, green:0.31, blue:0.49, alpha:1)
        static let ButtonDarkPink = UIColor(red:0.92, green:0.2, blue:0.41, alpha:1)

        static let SeparatorMiddleColor = UIColor(red:0.16, green:0.16, blue:0.16, alpha:1)
        static let SeparatorBorderColor = UIColor(red:0.15, green:0.15, blue:0.15, alpha:1)
        
        /// Used for texts and button borders
        static let LightGreyTextColor = UIColor(red:0.6, green:0.6, blue:0.6, alpha:1)

        /// Used for texts and button borders
        static let DarkGreyTextColor = UIColor(red:0.4, green:0.4, blue:0.4, alpha:1)
        ///used for root section title
        static let  SectionTextColor = UIColor(bd_hexColor: "e8e6e6")

        /// Used for texts and button borders
        /// RGB(100, 115, 145), CSS(#647391)
        static let DarkBlueTextColor = UIColor(red:0.392157, green:0.450980, blue:0.568627, alpha:1)
        static let LightBlueTextColor = UIColor(red:0.47, green:0.53, blue:0.63, alpha:1)
        
        static let ButtonGradient = [ButtonLightPink.CGColor, ButtonDarkPink.CGColor]
        static let SeparatorGradient = [SeparatorBorderColor.CGColor, SeparatorMiddleColor.CGColor, SeparatorBorderColor.CGColor]
        
        static let CommentTimeColor = UIColor(bd_hexColor: "F2F2F2")
        static let CommentSeparatorColor = UIColor(red:0.75, green:0.75, blue:0.75, alpha:0.3)
        static let CommentatorsNameColor = UIColor(bd_hexColor: "e03d6d")
        
        static let LikeLineColor = UIColor(bd_hexColor: "e9e9e9")

        //Used for global SearchBar
        static let TextFieldBackgroudColor = UIColor(bd_hexColor:"ffffff58")
        static let PlaceHolderColor = UIColor(bd_hexColor:"bbb8b8")
        static let CateCellBackgroudColor = UIColor(bd_hexColor:"ffffff57")
        static let CateCellHightliedTextColor = UIColor(bd_hexColor:"f43873")
        
        static let CateCellTextColor = UIColor(bd_hexColor:"444242")
        static let CateCellHighliedTextColor = UIColor(bd_hexColor:"f43873")
        static let SearchTextColor = UIColor(bd_hexColor:"ed366a")
        
        static let HistoryTitleColor = UIColor(bd_hexColor:"ee6a90")
        static let HistoryLabelTextColor = UIColor(bd_hexColor:"d7d5d5")
        
        static let HotSearchTitleColor = UIColor(bd_hexColor:"b9b5b5")
        
        
        static let PostDetailDesFiledEditColor = UIColor(red:255/255.0, green:255/255.0, blue:255/255.0, alpha:0.25)
        
        static let DestinationNormalColor = UIColor(bd_hexColor : "e7e7e7")
        static let DestinationHighiledColor = UIColor(bd_hexColor : "f43672")
        
        //destination DetailView
        static let TextfieldTextColor = UIColor(bd_hexColor : "5c5b5b")
        static let TextfieldBackgrounColor = UIColor(bd_hexColor : "ffffffdb")

        static let RecommendFriendsBackColor = UIColor(bd_hexColor : "ffffff14")

    }
    
    struct Sizes {
        static let tribeFlagSize = CGSize(width: 156, height: 239)
        static let tribeHomeFlagSize = CGSize(width: 186, height: 294)
    }
    
    struct Strings {
        
        // LABELS
        
        static let RegistrationLabel = NSLocalizedString("Register", comment: "")
        static let GetSMSButtonLabel = NSLocalizedString("Send SMS", comment: "")
        static let UserTribeChoosingDescriptionLabel = NSLocalizedString("Please choose at most 3 tribes, you will be able to change it in your profile", comment: "")
        static let RecommendationTribeChoosingDescriptionLabel = NSLocalizedString("Select the tribes where you want to publish", comment: "")

        
        // PLACEHOLDERS
        
        static let SMSCodeFieldPlaceholder = "验证码"
        static let PhoneFieldPlaceholder = "手机号"
        static let descriptionFieldPlaceholder = "写点什么..."
        
        // ALERTS
        
        static let IncorrectPhoneNumberErrorTitle = NSLocalizedString("Incorrect phone number", comment: "")
        static let IncorrectPhoneNumberErrorMessage = NSLocalizedString("Please check your phone number and try again", comment: "")
        
        static let EmptyFieldErrorTitle = NSLocalizedString("Empty field", comment: "")
        
        static let PhoneNumberLengthErrorAlertTitle = NSLocalizedString("Incorrect phone number length", comment: "")
        static let PhoneNumberLengthErrorAlertMessage = NSLocalizedString("Your phone number should have 11 digits", comment: "")
        
        static let NoPhoneNumberErrorAlertTitle = NSLocalizedString("No phone number", comment: "")
        static let NoPhoneNumberErrorAlertMessage = NSLocalizedString("Please enter your phone number", comment: "")

        static let NoSMSCodeErrorTitle = NSLocalizedString("No SMS Code", comment: "")
        static let NoSMSCodeErrorMessage = NSLocalizedString("Please write the code you received by SMS", comment: "")
        
        static let WrongSMSCodeErrorTitle = NSLocalizedString("Wrong SMS Code", comment: "")
        static let WrongSMSCodeErrorMessage = NSLocalizedString("The SMS code is incorrect. Please check the SMS you received", comment: "")
        
        static let NetworkErrorAlertTitle = NSLocalizedString("Network error", comment: "")
        static let NetworkErrorAlertMessage = NSLocalizedString("Please check your network settings and try again", comment: "")
        
        static let MaxTribePerRecommendationWarningAlertTitle = NSLocalizedString("Tribe picking limit", comment: "")
        static let MaxTribePerRecommendationWarningAlertMessage = NSLocalizedString("Please pick up to 3 tribes", comment: "")
        
        static let AlertValidationLabel = NSLocalizedString("OK", comment: "")
        static let AlertConfirmationLabel = NSLocalizedString("Apply", comment: "")
        
        static let NoPhotoLibraryAccessAlertTitle = "照片权限"
        static let NoPhotoLibraryAccessAlertMessage = "where还没有获取照片权限，请去设置进行修改"
        
        //default three zanadu author id
        static let ZanaduTravelLife = "568b4e0860b2a099cde722b2"//赞那度旅行人生
        static let Zanadu = "55814db8e4b035745ad64add"//赞那度
        static let Where = "56931d5860b2638510a2c1fd"//where
    }
    struct locals {
        static let RecentTagIds = "RecentTagIds"
    }
}
