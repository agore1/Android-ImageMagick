# Copyright (C) 2009 The Android Open Source Project
#                    
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#                    
#                        http://www.apache.org/licenses/LICENSE-2.0
#                    
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := android-magick
LOCAL_SRC_FILES := jmagick.c
LOCAL_SRC_FILES += magick_DrawInfo.c
LOCAL_SRC_FILES += magick_ImageInfo.c
LOCAL_SRC_FILES += magick_Magick.c
LOCAL_SRC_FILES += magick_MagickImage.c
LOCAL_SRC_FILES += magick_MagickInfo.c
LOCAL_SRC_FILES += magick_MontageInfo.c
LOCAL_SRC_FILES += magick_PixelPacket.c
LOCAL_SRC_FILES += magick_QuantizeInfo.c \
				   magick_MagickBitmap.c

LOCAL_STATIC_LIBRARIES := jpeg tiff-static filters png coderandmagick
#LOCAL_SHARED_LIBRARIES += coderandmagick

#LOCAL_SHARED_LIBRARIES := png15 bz2 gomp pthread

LOCAL_LDLIBS += -lz -llog

include $(BUILD_SHARED_LIBRARY)

$(call import-module,ImageMagick-6.7.3-0)
$(call import-module,jpeg)
$(call import-module,png/jni)
