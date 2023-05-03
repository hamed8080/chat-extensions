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
       self.init(messageType: .init(rawValue: req?.messageType.rawValue ?? MessageType.unknown.rawValue) ?? .unknown,
                 metadata:  req?.metadata,
                 mimeType: uploadFile.mimeType,
                 originalName: uploadFile.originalName,
                 repliedTo: req?.repliedTo,
                 textMessage: req?.textMessage,
                 threadId: req?.threadId,
                 typeCode: req?.typeCode,
                 uniqueId: req?.uniqueId,
                 userGroupHash: uploadFile.userGroupHash,
                 fileToSend: uploadFile.data)
    }

    convenience init(req: SendTextMessageRequest?, imageRequest: UploadImageRequest) {
        self.init(messageType: .init(rawValue: req?.messageType.rawValue ?? MessageType.unknown.rawValue) ?? .unknown,
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
                  imageToSend: imageRequest.data)
    }

    var request: (UploadFileRequest, SendTextMessageRequest) {
        let text = SendTextMessageRequest(threadId: threadId ?? -1,
                                          textMessage: textMessage ?? "",
                                          messageType: messageType ?? .unknown,
                                          metadata: metadata,
                                          repliedTo: repliedTo,
                                          systemMetadata: nil,
                                          uniqueId: uniqueId ?? "")
        let file = UploadFileRequest(data: fileToSend ?? Data(),
                                     fileExtension: fileExtension,
                                     fileName: fileName,
                                     description: "",
                                     isPublic: isPublic,
                                     mimeType: mimeType,
                                     originalName: originalName,
                                     userGroupHash: userGroupHash,
                                     uniqueId: uniqueId ?? "")
        return (file, text)
    }
}
