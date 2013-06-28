###############################################################################
#START OF FILTERS MODULE
###############################################################################
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := filters
LOCAL_SRC_FILES := filters/analyze.c
LOCAL_CFLAGS += -DHAVECONFIG_H
LOCAL_LDLIBS += -lz

include $(BUILD_STATIC_LIBRARY)

###############################################################################
#END OF FILTERS MODULE
#START OF CODERANDMAGICK MODULE
###############################################################################

include $(CLEAR_VARS)
LOCAL_C_INCLUDES := $(LOCAL_PATH)/coders $(LOCAL_PATH)/magick
LOCAL_MODULE := coderandmagick

#Listing of all src files in coders
LOCAL_SRC_FILES += coders/aai.c \
            coders/art.c \
            coders/avs.c \
            coders/bgr.c \
            coders/bmp.c \
            coders/braille.c \
            coders/cals.c \
            coders/caption.c \
            coders/cin.c \
            coders/cip.c \
            coders/clip.c \
            coders/clipboard.c \
            coders/cmyk.c \
            coders/cut.c \
            coders/dcm.c \
            coders/dds.c \
            coders/debug.c \
            coders/dib.c \
            coders/djvu.c \
            coders/dng.c \
            coders/dot.c \
            coders/dps.c \
            coders/dpx.c \
            coders/emf.c \
            coders/ept.c \
            coders/exr.c \
            coders/fax.c \
            coders/fits.c \
            coders/fpx.c \
            coders/gif.c \
            coders/gradient.c \
            coders/gray.c \
            coders/hald.c \
            coders/hdr.c \
            coders/histogram.c \
            coders/hrz.c \
            coders/html.c \
            coders/icon.c \
            coders/info.c \
            coders/inline.c \
            coders/ipl.c \
            coders/jbig.c \
            coders/jp2.c \
            coders/jpeg.c \
            coders/label.c \
            coders/mac.c \
            coders/magick.c \
            coders/map.c \
            coders/mat.c \
            coders/matte.c \
            coders/meta.c \
            coders/miff.c \
            coders/mono.c \
            coders/mpc.c \
            coders/mpeg.c \
            coders/mpr.c \
            coders/msl.c \
            coders/mtv.c \
            coders/mvg.c \
            coders/null.c \
            coders/otb.c \
            coders/palm.c \
            coders/pattern.c \
            coders/pcd.c \
            coders/pcl.c \
            coders/pcx.c \
            coders/pdb.c \
            coders/pdf.c \
            coders/pes.c \
            coders/pict.c \
            coders/pix.c \
            coders/plasma.c \
            coders/png.c \
            coders/pnm.c \
            coders/preview.c \
            coders/ps.c \
            coders/ps2.c \
            coders/ps3.c \
            coders/psd.c \
            coders/pwp.c \
            coders/raw.c \
            coders/rgb.c \
            coders/rla.c \
            coders/rle.c \
            coders/scr.c \
            coders/sct.c \
            coders/sfw.c \
            coders/sgi.c \
            coders/stegano.c \
            coders/sun.c \
            coders/svg.c \
            coders/tga.c \
            coders/thumbnail.c \
            coders/tiff.c \
            coders/tile.c \
            coders/tim.c \
            coders/ttf.c \
            coders/txt.c \
            coders/uil.c \
            coders/url.c \
            coders/uyvy.c \
            coders/vicar.c \
            coders/vid.c \
            coders/viff.c \
            coders/wbmp.c \
            coders/webp.c \
            coders/wmf.c \
            coders/wpg.c \
            coders/x.c \
            coders/xbm.c \
            coders/xc.c \
            coders/xcf.c \
            coders/xpm.c \
            coders/xps.c \
            coders/xwd.c \
            coders/ycbcr.c \
            coders/yuv.c \
LOCAL_C_FLAGS += -DHAVE_CONFIG_H

#Listing of all src files in magick
LOCAL_SRC_FILES += magick/PreRvIcccm.c \
            magick/accelerate.c \
            magick/animate.c \
            magick/annotate.c \
            magick/artifact.c \
            magick/attribute.c \
            magick/blob.c \
            magick/cache-view.c \
            magick/cache.c \
            magick/cipher.c \
            magick/client.c \
            magick/coder.c \
            magick/color.c \
            magick/colormap.c \
            magick/colorspace.c \
            magick/compare.c \
            magick/composite.c \
            magick/compress.c \
            magick/configure.c \
            magick/constitute.c \
            magick/decorate.c \
            magick/delegate.c \
            magick/deprecate.c \
            magick/display.c \
            magick/distort.c \
            magick/draw.c \
            magick/effect.c \
            magick/enhance.c \
            magick/exception.c \
            magick/feature.c \
            magick/fourier.c \
            magick/fx.c \
            magick/gem.c \
            magick/geometry.c \
            magick/hashmap.c \
            magick/histogram.c \
            magick/identify.c \
            magick/image-view.c \
            magick/image.c \
            magick/layer.c \
            magick/list.c \
            magick/locale.c \
            magick/log.c \
            magick/mac.c \
            magick/magic.c \
            magick/magick.c \
            magick/matrix.c \
            magick/memory.c \
            magick/mime.c \
            magick/module.c \
            magick/monitor.c \
            magick/montage.c \
            magick/morphology.c \
            magick/nt-base.c \
            magick/option.c \
            magick/paint.c \
            magick/pixel.c \
            magick/policy.c \
            magick/prepress.c \
            magick/profile.c \
            magick/property.c \
            magick/quantize.c \
            magick/quantum-export.c \
            magick/quantum-import.c \
            magick/quantum.c \
            magick/random.c \
            magick/registry.c \
            magick/resample.c \
            magick/resize.c \
            magick/resource.c \
            magick/segment.c \
            magick/semaphore.c \
            magick/shear.c \
            magick/signature.c \
            magick/splay-tree.c \
            magick/static.c \
            magick/statistic.c \
            magick/stream.c \
            magick/string.c \
            magick/thread.c \
            magick/threshold.c \
            magick/timer.c \
            magick/token.c \
            magick/transform.c \
            magick/type.c \
            magick/utility.c \
            magick/version.c \
            magick/vms.c \
            magick/widget.c \
            magick/xml-tree.c \
            magick/xwindow.c

LOCAL_LDLIBS += -lz
LOCAL_STATIC_LIBRARIES := tiff-static png freetype jpeg filters
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)


#include $(BUILD_SHARED_LIBRARY)
include $(BUILD_STATIC_LIBRARY)
#Below should search NDK_MODULE_PATH for freetype/jni/Android.mk and import
$(call import-module,freetype/jni)
#Below should search NDK_MODULE_PATH for tiff/Android.mk and import
$(call import-module,tiff)
#Below should search NDK_MODULE_PATH for png/jni/Android.mk and import
$(call import-module,png/jni)