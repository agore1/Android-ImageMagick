#LOCAL_PATH := $(call my-dir)
#include $(CLEAR_VARS)
#LOCAL_MODULE := png
#LOCAL_SRC_FILES := ../lib/libpng.a
#include $(PREBUILT_STATIC_LIBRARY)
#
#LOCAL_PATH := $(call my-dir)
#include $(CLEAR_VARS)
#LOCAL_MODULE := freetype 
#LOCAL_SRC_FILES := ../lib/libfreetype.a
#include $(PREBUILT_STATIC_LIBRARY)

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE    := MagickCore 
LOCAL_SRC_FILES := PreRvIcccm.c \
                   accelerate.c \
                   animate.c \
                   annotate.c \
                   artifact.c \
                   attribute.c \
                   blob.c \
                   cache-view.c \
                   cache.c \
                   cipher.c \
                   client.c \
                   coder.c \
                   color.c \
                   colormap.c \
                   colorspace.c \
                   compare.c \
                   composite.c \
                   compress.c \
                   configure.c \
                   constitute.c \
                   decorate.c \
                   delegate.c \
                   deprecate.c \
                   display.c \
                   distort.c \
                   draw.c \
                   effect.c \
                   enhance.c \
                   exception.c \
                   feature.c \
                   fourier.c \
                   fx.c \
                   gem.c \
                   geometry.c \
                   hashmap.c \
                   histogram.c \
                   identify.c \
                   image-view.c \
                   image.c \
                   layer.c \
                   list.c \
                   locale.c \
                   log.c \
                   mac.c \
                   magic.c \
                   magick.c \
                   matrix.c \
                   memory.c \
                   mime.c \
                   module.c \
                   monitor.c \
                   montage.c \
                   morphology.c \
                   nt-base.c \
                   option.c \
                   paint.c \
                   pixel.c \
                   policy.c \
                   prepress.c \
                   profile.c \
                   property.c \
                   quantize.c \
                   quantum-export.c \
                   quantum-import.c \
                   quantum.c \
                   random.c \
                   registry.c \
                   resample.c \
                   resize.c \
                   resource.c \
                   segment.c \
                   semaphore.c \
                   shear.c \
                   signature.c \
                   splay-tree.c \
                   static.c \
                   statistic.c \
                   stream.c \
                   string.c \
                   thread.c \
                   threshold.c \
                   timer.c \
                   token.c \
                   transform.c \
                   type.c \
                   utility.c \
                   version.c \
                   vms.c \
                   widget.c \
                   xml-tree.c \
                   xwindow.c \

LOCAL_C_INCLUDES += $(LOCAL_PATH)/.. \
                        /usr/local/include \
                        /usr/local/include/freetype2 \
                        /usr/local/include/ImageMagick
#Not the right fix, just put path to 
LOCAL_CFLAGS += -DHAVE_CONFIG_H
LOCAL_LDLIBS += -L$(LOCAL_PATH)/../lib -lfreetype -lpng -lz 
#LOCAL_LDLIBS += -L$(LOCAL_PATH)/../coders -lcoders
#Austin -- tried below statments, didn't make a difference. 
LOCAL_EXPORT_CINCLUDES := $(LOCAL_PATH)
#Austin -- turning below on will force parent modules to look for the coders library. Trouble is that they aren't finding it. 
#LOCAL_EXPORT_LDLIBS += -lcoders
LOCAL_STATIC_LIBRARIES += coders png freetype jpeg tiff-static filters
#Comment out below and see what happens!
LOCAL_SHARED_LIBRARIES += coders png freetype jpeg tiff-shared filters


#Austin -- changed below from BUILD_STATIC to BUILD_SHARED
#include $(BUILD_STATIC_LIBRARY)
include $(BUILD_SHARED_LIBRARY)
$(call import-module,jpeg)
$(call import-module,tiff)
