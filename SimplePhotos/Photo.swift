//
//  Photo.swift
//  SimplePhotos
//
//  Created by Le Huang on 1/15/24.
//

import Foundation

struct Photo: Codable, Hashable {
  let albumId: Int
  let id: Int
  let title: String
  let url: String
  let thumbnailUrl: String
}
