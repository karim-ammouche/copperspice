/***********************************************************************
*
* Copyright (c) 2012-2019 Barbara Geller
* Copyright (c) 2012-2019 Ansel Sermersheim
*
* Copyright (C) 2015 The Qt Company Ltd.
* Copyright (c) 2012-2016 Digia Plc and/or its subsidiary(-ies).
* Copyright (c) 2008-2012 Nokia Corporation and/or its subsidiary(-ies).
*
* This file is part of CopperSpice.
*
* CopperSpice is free software. You can redistribute it and/or
* modify it under the terms of the GNU Lesser General Public License
* version 2.1 as published by the Free Software Foundation.
*
* CopperSpice is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
*
* https://www.gnu.org/licenses/
*
***********************************************************************/

#include <qcocoaservices.h>
#include <qt_mac_p.h>
#include <qurl.h>

#include <AppKit/NSWorkspace.h>
#include <Foundation/NSURL.h>

bool QCocoaServices::openUrl(const QUrl &url)
{
   const QString scheme = url.scheme();
   if (scheme.isEmpty()) {
      return openDocument(url);
   }
   return [[NSWorkspace sharedWorkspace] openURL: [NSURL URLWithString: QCFString::toNSString(url.toString(QUrl::FullyEncoded))]];
}

bool QCocoaServices::openDocument(const QUrl &url)
{
   if (!url.isValid()) {
      return false;
   }

   return [[NSWorkspace sharedWorkspace] openFile: QCFString::toNSString(url.toLocalFile())];
}
