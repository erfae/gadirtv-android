.class public Lcom/visualon/OSMPUtils/voOSTypePrivate;
.super Ljava/lang/Object;
.source "voOSTypePrivate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPUtils/voOSTypePrivate$VOMP_REFER_WALL_CLOCK;,
        Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;,
        Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_I_FRAME_MODE;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "@@@voOSTypePrivate"

.field public static final VOOSMP_CB_ANALYTICS_LISTENER:I = 0x5000004

.field public static final VOOSMP_CB_DRM_PRIVATE_START:I = 0x5000000

.field public static final VOOSMP_CB_OUTPUT_CONTROL_DOWN_RESOLUTION:I = 0x5000002

.field public static final VOOSMP_CB_VIDEO_DEST_BOX:I = 0x500000a

.field public static final VOOSMP_PID_ADAPTIVESTREAMING_INTERNAL_SEEK_POS:I = 0x1000e

.field public static final VOOSMP_PID_ANTI_MIRROR:I = 0x10007

.field public static final VOOSMP_PID_AUDIO_FOCUS_GAIN:I = 0x11013

.field public static final VOOSMP_PID_AUDIO_FOCUS_LOSS:I = 0x11014

.field public static final VOOSMP_PID_ENABLE_CARD_BOARD_VIDEO:I = 0x10026

.field public static final VOOSMP_PID_ENABLE_MC:I = 0x11006

.field public static final VOOSMP_PID_ENABLE_SPHERICAL_VIDEO:I = 0x10018

.field public static final VOOSMP_PID_GET_ANALYTICS_EXPORT_TYPE:I = 0x10048

.field public static final VOOSMP_PID_GET_ANALYTICS_URL_SESSIONID:I = 0x10003

.field public static final VOOSMP_PID_GET_AUDIO_DATA:I = 0x11002

.field public static final VOOSMP_PID_GET_DATASOURCE_INFO:I = 0x1000a

.field public static final VOOSMP_PID_GET_DECODER_TYPE:I = 0x10021

.field public static final VOOSMP_PID_GET_ENGINE_INFO:I = 0x10005

.field public static final VOOSMP_PID_GET_ENGINE_POSITION_NATIVE:I = 0x11009

.field public static final VOOSMP_PID_GET_VIDEO_DATA:I = 0x11001

.field public static final VOOSMP_PID_GLRENDER_WRAPPER:I = 0x11008

.field public static final VOOSMP_PID_HDCP_POLICY:I = 0x10006

.field public static final VOOSMP_PID_HWDECODER_MAX_RESOLUTION:I = 0x10010

.field public static final VOOSMP_PID_I_FRAME_MODE:I = 0x10014

.field public static final VOOSMP_PID_PLAYBACK_SPEED:I = 0x10013

.field public static final VOOSMP_PID_PRIVATE_START:I = 0x10000

.field public static final VOOSMP_PID_REFER_SYSTEM_CLOCK:I = 0x10002

.field public static final VOOSMP_PID_REGISTER_VOISERVICE:I = 0x10020

.field public static final VOOSMP_PID_SET_ANA_RENDER_OBJ:I = 0x11005

.field public static final VOOSMP_PID_SET_JAVAVM:I = 0x11003

.field public static final VOOSMP_PID_SET_SUBTITLE_RENDER_OBJ:I = 0x11004

.field public static final VOOSMP_PID_SET_TIMELISTENER_OBJ:I = 0x11012

.field public static final VOOSMP_PID_SET_VIEW_OBJ:I = 0x11011

.field public static final VOOSMP_PID_SPHERICAL_VIDEO_VIEW:I = 0x10019

.field public static final VOOSMP_PID_UPDATE_VIDEO_DEST_BOX_FINISH:I = 0x10023

.field public static final VOOSMP_PID_VIDEO_VSYNC_HELPER:I = 0x11010

.field public static final VOOSMP_RENDER_TYPE_BITMAP:I = 0x2

.field public static final VOOSMP_RENDER_TYPE_HW_RENDER:I = 0x5

.field public static final VOOSMP_RENDER_TYPE_JAVA:I = 0x0

.field public static final VOOSMP_RENDER_TYPE_JMHW_RENDER:I = 0x6

.field public static final VOOSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT_INTERNAL_SEEK_POS:I = 0x1389

.field public static final VOOSMP_SRC_PID_ADD_CONFIGURATION:I = 0x3010018

.field public static final VOOSMP_SRC_PID_ADSCTRL_CALLBACK:I = 0x3010005

.field public static final VOOSMP_SRC_PID_ADSINFO_CALLBACK:I = 0x3010003

.field public static final VOOSMP_SRC_PID_DOWNLOAD_EXTERNAL_SUBTITLE_URL:I = 0x301000b

.field public static final VOOSMP_SRC_PID_DRMLICMGR_CALLBACK:I = 0x3010004

.field public static final VOOSMP_SRC_PID_DRM_HASHMAP:I = 0x3010006

.field public static final VOOSMP_SRC_PID_PRIVATE_OUTPUT_CONTROL_DOWN_RESOLUTION:I = 0x3010001

.field public static final VOOSMP_SRC_PID_PRIVATE_START:I = 0x3010000

.field public static final VOOSMP_SRC_PID_SET_DOWNLOAD_DIRECTORY:I = 0x3010009

.field public static final VOOSMP_SRC_PID_SET_REPLACE_URL:I = 0x3010017

.field public static final VOOSMP_SRC_PID_URL_REGEX_PATTERN:I = 0x3010007

.field public static final VOOSMP_SRC_PID_URL_SUBS_PATTERN:I = 0x3010008

.field public static final VO_STREAMDOWNLOADER_PID_DOWNLOAD_THREADS_NUMBER:I = 0x20000010

.field public static final VO_STREAMDOWNLOADER_PID_HTTP_SET_MAX_SPEED:I = 0x2000000f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
