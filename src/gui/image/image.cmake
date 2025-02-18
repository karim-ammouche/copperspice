list(APPEND GUI_PUBLIC_INCLUDES
   QBitmap
   QIcon
   QIconEngine
   QIconEngineFactoryInterface
   QIconEnginePlugin
   QIconSet
   QImage
   QImageIOHandler
   QImageIOHandlerFactoryInterface
   QImageIOPlugin
   QImageReader
   QImageTextKeyLang
   QImageWriter
   QMovie
   QPicture
   QPictureFormatInterface
   QPictureFormatPlugin
   QPictureIO
   QPixmap
   QPixmapCache
)

list(APPEND GUI_INCLUDES
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qbitmap.h
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qicon.h
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qiconengine.h
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qiconenginefactoryinterface.h
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qiconengineplugin.h
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qiconset.h
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qimage.h
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qimageiohandler.h
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qimageiohandlerfactoryinterface.h
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qimageioplugin.h
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qimagereader.h
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qimagetextkeylang.h
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qimagewriter.h
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qmovie.h
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qpicture.h
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qpictureformatinterface.h
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qpictureformatplugin.h
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qpictureio.h
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qpixmap.h
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qpixmapcache.h
)

list(APPEND GUI_PRIVATE_INCLUDES
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qbmphandler_p.h
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qicohandler_p.h
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qicon_p.h
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qiconloader_p.h
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qimage_p.h
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qimagepixmapcleanuphooks_p.h
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qjpeghandler_p.h
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qnativeimage_p.h
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qgifhandler_p.h
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qpaintengine_pic_p.h
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qpicture_p.h
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qpixmap_blitter_p.h
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qpixmap_raster_p.h
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qpixmapcache_p.h
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qpixmapfilter_p.h
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qpnghandler_p.h
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qppmhandler_p.h
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qtiffhandler_p.h
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qxbmhandler_p.h
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qxpmhandler_p.h
)

target_sources(CsGui
   PRIVATE
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qbmphandler.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qbitmap.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qicon.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qiconloader.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qimage.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qimage_sse2.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qimage_ssse3.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qimageiohandler.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qimagereader.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qimagewriter.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qpaintengine_pic.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qpicture.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qpictureformatplugin.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qpixmap.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qpixmapcache.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qpixmapfilter.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qiconengine.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qiconengineplugin.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qmovie.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qpixmap_raster.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qpixmap_blitter.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qnativeimage.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qimagepixmapcleanuphooks.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qgifhandler.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qicohandler.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qpnghandler.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qjpeghandler.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qxpmhandler.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qxbmhandler.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qppmhandler.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qtiffhandler.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/image/qimage_conversions.cpp

   ${CMAKE_SOURCE_DIR}/src/3rdparty/libmng/libmng_callback_xs.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libmng/libmng_chunk_descr.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libmng/libmng_chunk_io.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libmng/libmng_chunk_prc.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libmng/libmng_chunk_xs.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libmng/libmng_cms.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libmng/libmng_display.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libmng/libmng_dither.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libmng/libmng_error.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libmng/libmng_filter.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libmng/libmng_hlapi.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libmng/libmng_jpeg.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libmng/libmng_object_prc.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libmng/libmng_pixels.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libmng/libmng_prop_xs.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libmng/libmng_read.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libmng/libmng_trace.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libmng/libmng_write.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libmng/libmng_zlib.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libpng/png.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libpng/pngerror.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libpng/pngget.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libpng/pngmem.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libpng/pngpread.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libpng/pngread.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libpng/pngrio.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libpng/pngrtran.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libpng/pngrutil.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libpng/pngset.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libpng/pngtrans.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libpng/pngwio.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libpng/pngwrite.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libpng/pngwtran.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libpng/pngwutil.c

   ${CMAKE_SOURCE_DIR}/src/3rdparty/libtiff/libtiff/tif_aux.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libtiff/libtiff/tif_close.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libtiff/libtiff/tif_codec.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libtiff/libtiff/tif_color.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libtiff/libtiff/tif_compress.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libtiff/libtiff/tif_dir.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libtiff/libtiff/tif_dirinfo.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libtiff/libtiff/tif_dirread.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libtiff/libtiff/tif_dirwrite.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libtiff/libtiff/tif_dumpmode.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libtiff/libtiff/tif_error.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libtiff/libtiff/tif_extension.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libtiff/libtiff/tif_fax3.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libtiff/libtiff/tif_fax3sm.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libtiff/libtiff/tif_flush.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libtiff/libtiff/tif_getimage.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libtiff/libtiff/tif_luv.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libtiff/libtiff/tif_lzw.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libtiff/libtiff/tif_next.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libtiff/libtiff/tif_open.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libtiff/libtiff/tif_packbits.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libtiff/libtiff/tif_pixarlog.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libtiff/libtiff/tif_predict.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libtiff/libtiff/tif_print.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libtiff/libtiff/tif_read.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libtiff/libtiff/tif_strip.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libtiff/libtiff/tif_swab.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libtiff/libtiff/tif_thunder.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libtiff/libtiff/tif_tile.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libtiff/libtiff/tif_version.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libtiff/libtiff/tif_warning.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libtiff/libtiff/tif_write.c
   ${CMAKE_SOURCE_DIR}/src/3rdparty/libtiff/libtiff/tif_zip.c
)

if (NOT ${JPEG_FOUND})
   target_sources(CsGui
      PRIVATE
      ${CMAKE_SOURCE_DIR}/src/3rdparty/libjpeg/jaricom.c
      ${CMAKE_SOURCE_DIR}/src/3rdparty/libjpeg/jcapimin.c
      ${CMAKE_SOURCE_DIR}/src/3rdparty/libjpeg/jcapistd.c
      ${CMAKE_SOURCE_DIR}/src/3rdparty/libjpeg/jcarith.c
      ${CMAKE_SOURCE_DIR}/src/3rdparty/libjpeg/jccoefct.c
      ${CMAKE_SOURCE_DIR}/src/3rdparty/libjpeg/jccolor.c
      ${CMAKE_SOURCE_DIR}/src/3rdparty/libjpeg/jcdctmgr.c
      ${CMAKE_SOURCE_DIR}/src/3rdparty/libjpeg/jchuff.c
      ${CMAKE_SOURCE_DIR}/src/3rdparty/libjpeg/jcinit.c
      ${CMAKE_SOURCE_DIR}/src/3rdparty/libjpeg/jcmainct.c
      ${CMAKE_SOURCE_DIR}/src/3rdparty/libjpeg/jcmarker.c
      ${CMAKE_SOURCE_DIR}/src/3rdparty/libjpeg/jcmaster.c
      ${CMAKE_SOURCE_DIR}/src/3rdparty/libjpeg/jcomapi.c
      ${CMAKE_SOURCE_DIR}/src/3rdparty/libjpeg/jcparam.c
      ${CMAKE_SOURCE_DIR}/src/3rdparty/libjpeg/jcprepct.c
      ${CMAKE_SOURCE_DIR}/src/3rdparty/libjpeg/jcsample.c
      ${CMAKE_SOURCE_DIR}/src/3rdparty/libjpeg/jctrans.c
      ${CMAKE_SOURCE_DIR}/src/3rdparty/libjpeg/jdapimin.c
      ${CMAKE_SOURCE_DIR}/src/3rdparty/libjpeg/jdapistd.c
      ${CMAKE_SOURCE_DIR}/src/3rdparty/libjpeg/jdarith.c
      ${CMAKE_SOURCE_DIR}/src/3rdparty/libjpeg/jdatadst.c
      ${CMAKE_SOURCE_DIR}/src/3rdparty/libjpeg/jdatasrc.c
      ${CMAKE_SOURCE_DIR}/src/3rdparty/libjpeg/jdcoefct.c
      ${CMAKE_SOURCE_DIR}/src/3rdparty/libjpeg/jdcolor.c
      ${CMAKE_SOURCE_DIR}/src/3rdparty/libjpeg/jddctmgr.c
      ${CMAKE_SOURCE_DIR}/src/3rdparty/libjpeg/jdhuff.c
      ${CMAKE_SOURCE_DIR}/src/3rdparty/libjpeg/jdinput.c
      ${CMAKE_SOURCE_DIR}/src/3rdparty/libjpeg/jdmainct.c
      ${CMAKE_SOURCE_DIR}/src/3rdparty/libjpeg/jdmarker.c
      ${CMAKE_SOURCE_DIR}/src/3rdparty/libjpeg/jdmaster.c
      ${CMAKE_SOURCE_DIR}/src/3rdparty/libjpeg/jdmerge.c
      ${CMAKE_SOURCE_DIR}/src/3rdparty/libjpeg/jdpostct.c
      ${CMAKE_SOURCE_DIR}/src/3rdparty/libjpeg/jdsample.c
      ${CMAKE_SOURCE_DIR}/src/3rdparty/libjpeg/jdtrans.c
      ${CMAKE_SOURCE_DIR}/src/3rdparty/libjpeg/jerror.c
      ${CMAKE_SOURCE_DIR}/src/3rdparty/libjpeg/jfdctflt.c
      ${CMAKE_SOURCE_DIR}/src/3rdparty/libjpeg/jfdctfst.c
      ${CMAKE_SOURCE_DIR}/src/3rdparty/libjpeg/jfdctint.c
      ${CMAKE_SOURCE_DIR}/src/3rdparty/libjpeg/jidctflt.c
      ${CMAKE_SOURCE_DIR}/src/3rdparty/libjpeg/jidctfst.c
      ${CMAKE_SOURCE_DIR}/src/3rdparty/libjpeg/jidctint.c
      ${CMAKE_SOURCE_DIR}/src/3rdparty/libjpeg/jmemmgr.c
      ${CMAKE_SOURCE_DIR}/src/3rdparty/libjpeg/jmemnobs.c
      ${CMAKE_SOURCE_DIR}/src/3rdparty/libjpeg/jquant1.c
      ${CMAKE_SOURCE_DIR}/src/3rdparty/libjpeg/jquant2.c
      ${CMAKE_SOURCE_DIR}/src/3rdparty/libjpeg/jutils.c
   )
endif()

if(CMAKE_SYSTEM_PROCESSOR MATCHES arm|aarch64)
   target_sources(CsGui
      PRIVATE
      ${CMAKE_CURRENT_SOURCE_DIR}/image/qimage_neon.cpp

      ${CMAKE_SOURCE_DIR}/src/3rdparty/libpng/arm/arm_init.c
      ${CMAKE_SOURCE_DIR}/src/3rdparty/libpng/arm/filter_neon.S
      ${CMAKE_SOURCE_DIR}/src/3rdparty/libpng/arm/filter_neon_intrinsics.c
   )
endif()

if(CMAKE_SYSTEM_NAME MATCHES "Windows")
   target_sources(CsGui
      PRIVATE
      ${CMAKE_CURRENT_SOURCE_DIR}/image/qpixmap_win.cpp
      ${CMAKE_SOURCE_DIR}/src/3rdparty/libtiff/libtiff/tif_win32.c
   )

else()
   target_sources(CsGui
      PRIVATE
      ${CMAKE_SOURCE_DIR}/src/3rdparty/libtiff/libtiff/tif_unix.c
    )
endif()

