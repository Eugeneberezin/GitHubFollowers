//
//  ErrorMessage.swift
//  GHFollowers
//
//  Created by Eugene Berezin on 1/6/20.
//  Copyright © 2020 Eugene Berezin. All rights reserved.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername    = "This username created an invalid request. Please try again."
    case unableToComplete   = "Unable to complete your request. Please check your internet connection"
    case invalidResponse    = "Invalid response from the server. Please try again."
    case invalidData        = "The data received from the server was invalid. Please try again."
    case unableToFavorite   = "There was an error getting favorites "
    case alreadyInFavorites = "You've already favoried this user"
}

