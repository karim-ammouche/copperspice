/*------------------------------------------------------------------------------
* Copyright (C) 2003-2006 Ben van Klinken and the CLucene Team
* 
* Distributable under the terms of either the Apache License (Version 2.0) or 
* the GNU Lesser General Public License, as specified in the COPYING file.
------------------------------------------------------------------------------*/
#ifndef _lucene_util_FastCharStream_
#define _lucene_util_FastCharStream_

#if defined(_LUCENE_PRAGMA_ONCE)
# pragma once
#endif

#include "CLucene/util/Reader.h"

CL_NS_DEF(util)

	/** Ported implementation of the FastCharStream class. */
	class FastCharStream:LUCENE_BASE
	{
		static const int32_t maxRewindSize;
		int32_t pos;
		int32_t rewindPos;
		int64_t resetPos;
		int32_t col;
		int32_t line;
		// read character from stream return false on error
		void readChar(TCHAR &);	
	public:
		Reader* input;

		/// Initializes a new instance of the FastCharStream class LUCENE_EXPORT.
		FastCharStream(Reader* reader);
		~FastCharStream();
		
		/// Returns the next TCHAR from the stream.
		int GetNext();

		void UnGet();
		
		/// Returns the current top TCHAR from the input stream without removing it.
		int Peek();
		
		
		/// Returns <b>True</b> if the end of stream was reached.
		bool Eos() const;

		/// Gets the current column.
		int32_t Column() const;

		/// Gets the current line.
		int32_t Line() const;
	};
CL_NS_END
#endif