//
// QueueOfFileMessages+.swift
// Copyright (c) 2022 ChatExtensions
//
// Created by Hamed Hosseini on 12/14/22

import ChatDTO
import ChatModels
import Foundation

public extension QueueOfFileMessages {

   convenience init(req: SendTextMessageRequest?, uploadFile: UploadFileRequest) {
       self.init(messageType: (req?.messageType ?? .unknown),
                 metadata:  req?.metadata,
                 mimeType: uploadFile.mimeType,
                 originalName: uploadFile.originalName,
                 repliedTo: req?.repliedTo,
                 textMessage: req?.textMessage,
                 threadId: req?.threadId,
                 typeCode: req?.typeCode,
                 uniqueId: req?.uniqueId,
                 userGroupHash: uploadFile.userGroupHash,
                 fileToSend: uploadFile.dataToSend)
    }

    convenience init(req: SendTextMessageRequest?, imageRequest: UploadImageRequest) {
        self.init(messageType: (req?.messageType ?? .unknown),
                  metadata: req?.metadata,
                  mimeType: imageRequest.mimeType,
                  originalName: imageRequest.originalName,
                  repliedTo: req?.repliedTo,
                  textMessage: req?.textMessage,
                  threadId: req?.threadId,
                  typeCode: req?.typeCode,
                  uniqueId: req?.uniqueId,
                  userGroupHash: imageRequest.userGroupHash,
                  hC: imageRequest.hC,
                  wC: imageRequest.wC,
                  xC: imageRequest.xC,
                  yC: imageRequest.yC,
                  imageToSend: imageRequest.dataToSend)
    }
}
