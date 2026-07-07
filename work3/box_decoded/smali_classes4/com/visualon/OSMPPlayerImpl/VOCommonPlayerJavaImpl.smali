.class public Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;
.super Ljava/lang/Object;
.source "VOCommonPlayerJavaImpl.java"

# interfaces
.implements Lcom/visualon/OSMPUtils/voCustomerTagWrap$onID3Listener;
.implements Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;
.implements Lcom/visualon/OSMPUtils/voVideoViewController$onViewChangeListener;
.implements Lcom/visualon/OSMPOutputControl/voOSOutputControlServer$onOutputControlListener;
.implements Lcom/visualon/OSMPUtils/voBluetoothManager$onStatusChangeListener;
.implements Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener$Listener;
.implements Lcom/visualon/OSMPUtils/voUnifyDecoderManager$onUnifyDecoderListener;
.implements Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase$audioOutputControllerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;,
        Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$NullAnalyticsExportListener;
    }
.end annotation


# static fields
.field private static final IS_DNA_TV:Z

.field private static final IS_FORCE_SEEK_BLUETOOTH_DISCONNECTED:Z

.field private static final RENDER_FORMAT_AC3:I

.field private static final RENDER_FORMAT_EAC3:I

.field private static final RENDER_FORMAT_PCM:I

.field public static final SYNC_CLIENT_PORT:I = 0xbb8

.field public static final SYNC_SERVER_PORT:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "@@@VOCommonPlayerJavaImpl"

.field private static mCheckInfo:Lcom/visualon/OSMPUtils/voCheckMediaCodecInfo; = null

.field private static final messageBluetooth:I = -0xf0ffff1

.field private static final messageCCSetView:I = -0xf0ffff3

.field private static final messageCustomerTag:I = -0xf0ffffe

.field private static final messageSetView:I = -0xf0ffff7


# instance fields
.field private audioFocusManagement:Z

.field private currentEncoding:Lcom/visualon/OSMPUtils/VOSupportEncoding;

.field private mAnaRender:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

.field private mAnalytics:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;

.field private mAnalyticsExportListener:Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsExportListener;

.field private mAnalyticsVoExportListener:Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsExportListener;

.field private mAudioCtrl:Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase;

.field private mAudioFormat:Lcom/visualon/OSMPUtils/voOSAudioFormatImpl;

.field private mAudioRender:Lcom/visualon/OSMPRender/voAudioRender;

.field private mAudioRenderListener:Lcom/visualon/OSMPPlayer/VOOSMPAudioRenderListener;

.field private mAudioSessionID:I

.field private mBluetoothManager:Lcom/visualon/OSMPUtils/voBluetoothManager;

.field private mCodeType:I

.field private mContext:Landroid/content/Context;

.field private mDRMWrap:Lcom/visualon/OSMPUtils/voOSMPDRM;

.field private mEnableAudioRenderExport:Z

.field private mEnablePersistentDrmLcs:Z

.field private mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;

.field private mEventListener:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

.field private mHdmiMgr:Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;

.field private mHeightVideo:I

.field private final mID3Container:Lcom/visualon/OSMPUtils/voID3Container;

.field private mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

.field private mLibPath:Ljava/lang/String;

.field public mNativeContextAudio:J

.field private mOutputControlServer:Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;

.field private mOverWritedView:Landroid/view/View;

.field private mPlayer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

.field private mPlayerType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PLAYER_ENGINE;

.field private mSubtitleRender:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mUnifiedDrmLicMgr:Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;

.field private mUnifyDecoderManager:Lcom/visualon/OSMPUtils/voUnifyDecoderManager;

.field private mVSyncHelper:Lcom/visualon/OSMPRender/voVSyncHelper;

.field private mVideoViewCtrl:Lcom/visualon/OSMPUtils/voVideoViewController;

.field private mView:Landroid/view/View;

.field private mWidthVideo:I

.field private m_RenderType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

.field private m_bCreateDRMSuccess:Z

.field private m_bForcePureVideo:Z

.field private final mutex_:Ljava/util/concurrent/locks/ReentrantLock;

.field private mvlRC:I

.field private syncServerIP:Ljava/lang/String;

.field private syncUDPHandler:Lcom/visualon/OSMPPlayerImpl/OSMPSync/UDPHandler;

.field private voSynchronousType:Lcom/visualon/OSMPPlayerImpl/OSMPSync/VOSynchronousType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 201
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingPCM:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    .line 202
    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->ordinal()I

    move-result v0

    sput v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->RENDER_FORMAT_PCM:I

    .line 203
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingAC3:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    .line 204
    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->ordinal()I

    move-result v0

    sput v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->RENDER_FORMAT_AC3:I

    .line 205
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingEAC3:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    .line 206
    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->ordinal()I

    move-result v0

    sput v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->RENDER_FORMAT_EAC3:I

    .line 222
    new-instance v0, Lcom/visualon/OSMPUtils/voCheckMediaCodecInfo;

    invoke-direct {v0}, Lcom/visualon/OSMPUtils/voCheckMediaCodecInfo;-><init>()V

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mCheckInfo:Lcom/visualon/OSMPUtils/voCheckMediaCodecInfo;

    .line 227
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Google"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Sony"

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->IS_FORCE_SEEK_BLUETOOTH_DISCONNECTED:Z

    .line 229
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "DNA Android TV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->IS_DNA_TV:Z

    return-void
.end method

.method public constructor <init>(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;)V
    .locals 5

    .line 1032
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 146
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mPlayer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    .line 147
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    .line 148
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mSubtitleRender:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    .line 149
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAnaRender:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    .line 151
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    .line 152
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mOutputControlServer:Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;

    .line 153
    new-instance v1, Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-direct {v1}, Lcom/visualon/OSMPUtils/voVideoViewController;-><init>()V

    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mVideoViewCtrl:Lcom/visualon/OSMPUtils/voVideoViewController;

    .line 154
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAudioCtrl:Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase;

    .line 156
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mDRMWrap:Lcom/visualon/OSMPUtils/voOSMPDRM;

    .line 158
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEventListener:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

    .line 163
    new-instance v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$NullAnalyticsExportListener;

    invoke-direct {v1, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$NullAnalyticsExportListener;-><init>(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$1;)V

    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAnalyticsExportListener:Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsExportListener;

    .line 164
    new-instance v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$NullAnalyticsExportListener;

    invoke-direct {v1, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$NullAnalyticsExportListener;-><init>(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$1;)V

    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAnalyticsVoExportListener:Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsExportListener;

    const/4 v1, 0x0

    .line 179
    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mvlRC:I

    .line 183
    new-instance v2, Lcom/visualon/OSMPUtils/voID3ContainerImpl;

    invoke-direct {v2}, Lcom/visualon/OSMPUtils/voID3ContainerImpl;-><init>()V

    iput-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mID3Container:Lcom/visualon/OSMPUtils/voID3Container;

    .line 184
    new-instance v2, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;

    invoke-direct {v2}, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;-><init>()V

    iput-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mUnifyDecoderManager:Lcom/visualon/OSMPUtils/voUnifyDecoderManager;

    .line 191
    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_VIDEO_SW:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    .line 192
    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v2

    sget-object v3, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_AUDIO_SW:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mCodeType:I

    .line 193
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mPlayerType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PLAYER_ENGINE;

    .line 195
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mLibPath:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 199
    iput-wide v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mNativeContextAudio:J

    .line 208
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mUnifiedDrmLicMgr:Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;

    .line 210
    iput-boolean v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->m_bCreateDRMSuccess:Z

    .line 211
    iput-boolean v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->m_bForcePureVideo:Z

    .line 214
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mVSyncHelper:Lcom/visualon/OSMPRender/voVSyncHelper;

    .line 216
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mBluetoothManager:Lcom/visualon/OSMPUtils/voBluetoothManager;

    .line 217
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mHdmiMgr:Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;

    .line 220
    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAudioSessionID:I

    .line 224
    iput-boolean v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->audioFocusManagement:Z

    .line 234
    sget-object v2, Lcom/visualon/OSMPPlayerImpl/OSMPSync/VOSynchronousType;->NOSYNC:Lcom/visualon/OSMPPlayerImpl/OSMPSync/VOSynchronousType;

    iput-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->voSynchronousType:Lcom/visualon/OSMPPlayerImpl/OSMPSync/VOSynchronousType;

    .line 239
    iput-boolean v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEnableAudioRenderExport:Z

    .line 240
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAudioRenderListener:Lcom/visualon/OSMPPlayer/VOOSMPAudioRenderListener;

    .line 242
    iput-boolean v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEnablePersistentDrmLcs:Z

    .line 282
    new-instance v2, Lcom/visualon/OSMPUtils/VOSupportEncoding;

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x2

    aput v4, v3, v1

    invoke-direct {v2, v3, v1}, Lcom/visualon/OSMPUtils/VOSupportEncoding;-><init>([II)V

    iput-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->currentEncoding:Lcom/visualon/OSMPUtils/VOSupportEncoding;

    .line 1033
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mPlayer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    .line 1034
    iput-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    .line 1037
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    const-string p2, "@@@VOCommonPlayerJavaImpl"

    if-eqz p1, :cond_0

    .line 1038
    new-instance v2, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;

    invoke-direct {v2, p0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;-><init>(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;

    .line 1039
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1040
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "myLooper()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p2, p1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1042
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1043
    new-instance v2, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;

    invoke-direct {v2, p0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;-><init>(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;

    .line 1044
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1045
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMainLooper()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p2, p1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1048
    :cond_1
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;

    .line 1053
    :cond_2
    :goto_0
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEventListener:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

    .line 1054
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mContext:Landroid/content/Context;

    .line 1055
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mPlayerType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PLAYER_ENGINE;

    .line 1056
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mVideoViewCtrl:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-virtual {p1, p0}, Lcom/visualon/OSMPUtils/voVideoViewController;->setViewChangeListener(Lcom/visualon/OSMPUtils/voVideoViewController$onViewChangeListener;)V

    .line 1057
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mVideoViewCtrl:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-virtual {p1, v1}, Lcom/visualon/OSMPUtils/voVideoViewController;->withEnforceSWVideoScaling(Z)Lcom/visualon/OSMPUtils/voVideoViewController;

    .line 1058
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mUnifyDecoderManager:Lcom/visualon/OSMPUtils/voUnifyDecoderManager;

    invoke-virtual {p1, p0}, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->setListener(Lcom/visualon/OSMPUtils/voUnifyDecoderManager$onUnifyDecoderListener;)V

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "VOCommonPlayerImpl construct."

    .line 1059
    invoke-static {p2, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private CheckCallBackParam(IJJLjava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move/from16 v0, p1

    move-wide/from16 v1, p2

    const v3, 0x2000030

    const/4 v4, 0x0

    if-nez p6, :cond_0

    return-object v4

    :cond_0
    const v5, 0x2000050

    const/4 v6, 0x0

    if-eq v3, v0, :cond_1

    if-ne v5, v0, :cond_9

    :cond_1
    if-ne v5, v0, :cond_2

    const-wide/16 v7, 0x1

    cmp-long v9, v1, v7

    if-eqz v9, :cond_3

    const-wide/16 v7, 0x3

    cmp-long v9, v1, v7

    if-eqz v9, :cond_3

    :cond_2
    const-wide/16 v7, 0x4

    if-ne v3, v0, :cond_4

    cmp-long v9, v1, v7

    if-eqz v9, :cond_3

    const-wide/16 v9, 0x5

    cmp-long v11, v1, v9

    if-eqz v11, :cond_3

    const-wide/16 v9, 0x6

    cmp-long v11, v1, v9

    if-nez v11, :cond_4

    .line 2160
    :cond_3
    move-object/from16 v0, p6

    check-cast v0, Landroid/os/Parcel;

    .line 2161
    new-instance v1, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;

    invoke-direct {v1}, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;-><init>()V

    .line 2162
    invoke-virtual {v1, v0}, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->parse(Landroid/os/Parcel;)Z

    return-object v1

    :cond_4
    if-ne v3, v0, :cond_5

    const-wide/16 v9, 0x7

    cmp-long v3, v1, v9

    if-eqz v3, :cond_6

    :cond_5
    if-ne v5, v0, :cond_7

    cmp-long v3, v1, v7

    if-nez v3, :cond_7

    .line 2170
    :cond_6
    move-object/from16 v0, p6

    check-cast v0, Landroid/os/Parcel;

    .line 2171
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2172
    new-instance v1, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;

    invoke-direct {v1}, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;-><init>()V

    .line 2173
    invoke-virtual {v1, v0}, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->parse(Landroid/os/Parcel;)Z

    return-object v1

    :cond_7
    const-wide/16 v7, 0xb

    cmp-long v3, v1, v7

    if-nez v3, :cond_8

    .line 2178
    move-object/from16 v0, p6

    check-cast v0, Landroid/os/Parcel;

    .line 2179
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2180
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2181
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 2182
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 2183
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 2184
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 2185
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2186
    new-instance v1, Lcom/visualon/OSMPUtils/voOSChunkSampleImpl;

    int-to-long v2, v0

    move-object v7, v1

    move-wide/from16 v16, v2

    invoke-direct/range {v7 .. v17}, Lcom/visualon/OSMPUtils/voOSChunkSampleImpl;-><init>(IJIJJJ)V

    return-object v1

    :cond_8
    const-wide/16 v7, 0xd

    cmp-long v3, v7, v1

    if-nez v3, :cond_9

    .line 2192
    move-object/from16 v0, p6

    check-cast v0, Landroid/os/Parcel;

    invoke-static {v0}, Lcom/visualon/OSMPUtils/voOSSessionDataImpl;->parse(Landroid/os/Parcel;)Lcom/visualon/OSMPUtils/voOSSessionDataImpl;

    move-result-object v0

    return-object v0

    :cond_9
    const v3, 0x2000020

    const/4 v5, 0x1

    if-ne v3, v0, :cond_c

    .line 2198
    move-object/from16 v0, p6

    check-cast v0, Landroid/os/Parcel;

    .line 2199
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2200
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 2201
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-gtz v10, :cond_a

    new-array v1, v5, [B

    goto :goto_0

    .line 2206
    :cond_a
    new-array v1, v10, [B

    :goto_0
    move-object v11, v1

    if-lez v10, :cond_b

    .line 2208
    invoke-virtual {v0, v11}, Landroid/os/Parcel;->readByteArray([B)V

    .line 2209
    :cond_b
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 2211
    new-instance v0, Lcom/visualon/OSMPUtils/voOSTimedTagImpl;

    const/4 v13, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Lcom/visualon/OSMPUtils/voOSTimedTagImpl;-><init>(JI[BILjava/lang/Object;)V

    return-object v0

    :cond_c
    const v3, 0x3000004

    const-string v7, "@@@VOCommonPlayerJavaImpl"

    if-ne v3, v0, :cond_e

    .line 2215
    move-object/from16 v0, p6

    check-cast v0, Landroid/os/Parcel;

    .line 2216
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2217
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-lez v3, :cond_d

    .line 2220
    new-array v4, v3, [B

    .line 2221
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->readByteArray([B)V

    .line 2222
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CheckCallBackParam  uSize = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  dt = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v7, v0, v3}, Lcom/visualon/OSMPUtils/voLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2227
    :cond_d
    new-instance v0, Lcom/visualon/OSMPUtils/voOSDRMInit;

    invoke-direct {v0, v1, v2, v4}, Lcom/visualon/OSMPUtils/voOSDRMInit;-><init>(J[B)V

    return-object v0

    :cond_e
    const v1, 0x3000003

    if-eq v0, v1, :cond_10

    const v2, 0x3000002

    if-ne v0, v2, :cond_f

    goto :goto_1

    :cond_f
    return-object v4

    .line 2234
    :cond_10
    :goto_1
    move-object/from16 v2, p6

    check-cast v2, Landroid/os/Parcel;

    .line 2235
    new-instance v3, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;

    invoke-direct {v3}, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;-><init>()V

    if-eqz v2, :cond_11

    .line 2237
    invoke-virtual {v3, v2}, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;->parse(Landroid/os/Parcel;)Z

    :cond_11
    const/4 v2, 0x2

    if-ne v0, v1, :cond_12

    .line 2241
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 2244
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    .line 2246
    invoke-virtual {v3}, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;->getReason()Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;->valueOf(Ljava/lang/String;)Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    move-result-object v0

    aput-object v0, v1, v5

    .line 2247
    invoke-virtual {v3}, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;->getResponse()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x3

    invoke-virtual {v3}, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;->getURL()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "DataSource handleRequest, VOOSMP_SRC_CB_IO_HTTP_Download_Failed, ID is %s, reason is %s, response is %s, url is %s"

    .line 2242
    invoke-static {v7, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 2250
    :cond_12
    invoke-virtual {v3}, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;->getURL()Ljava/lang/String;

    move-result-object v1

    .line 2251
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v4

    if-eqz v4, :cond_13

    new-array v2, v2, [Ljava/lang/Object;

    .line 2254
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-virtual {v3}, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;->getURL()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    const-string v0, "DataSource handleRequest, VOOSMP_SRC_CB_IO_HTTP_Start_Download, ID is %s, url is %s"

    .line 2252
    invoke-static {v7, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_13
    move-object v3, v1

    :cond_14
    :goto_2
    return-object v3
.end method

.method private CreateAnalytics()I
    .locals 3

    .line 2479
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAnalytics:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2483
    :cond_0
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;

    invoke-direct {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAnalytics:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;

    if-nez v0, :cond_1

    const v0, -0x7ffffff9

    return v0

    .line 2488
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAnaRender:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    if-nez v0, :cond_2

    .line 2489
    new-instance v0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-direct {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAnaRender:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    .line 2490
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->setSurfaceView(Landroid/view/View;)V

    const v0, 0x11005

    .line 2491
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAnaRender:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-virtual {p0, v0, v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setParameter(ILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 2495
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAnalytics:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->Init(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private DestroyAnalytics()I
    .locals 2

    .line 2615
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAnalytics:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2618
    :cond_0
    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->Uninit()I

    move-result v0

    const/4 v1, 0x0

    .line 2619
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAnalytics:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;

    return v0
.end method

.method private FirstReport()I
    .locals 1

    .line 2515
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAnalytics:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;

    if-nez v0, :cond_0

    .line 2516
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v0

    return v0

    .line 2518
    :cond_0
    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->FirstReport()I

    move-result v0

    return v0
.end method

.method private GetAnalyticsUUID()Ljava/lang/String;
    .locals 1

    .line 2505
    invoke-static {}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->getUUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private GetCacheDir()Ljava/lang/String;
    .locals 1

    .line 2509
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private GetConnectivityManager()Ljava/lang/Object;
    .locals 2

    .line 2501
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private GetScreenBrightnessMode()I
    .locals 3

    .line 1691
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->isFroyoOrAbove()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1696
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "screen_brightness_mode"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v1
.end method

.method static synthetic access$100(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsExportListener;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAnalyticsVoExportListener:Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsExportListener;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Lcom/visualon/OSMPUtils/voVideoViewController;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mVideoViewCtrl:Lcom/visualon/OSMPUtils/voVideoViewController;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mOutputControlServer:Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Landroid/view/View;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Landroid/view/View;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mOverWritedView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mOverWritedView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Landroid/content/Context;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->removeView()V

    return-void
.end method

.method static synthetic access$1700(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEventListener:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 0

    .line 136
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->sendVOEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;Landroid/view/View;)V
    .locals 0

    .line 136
    invoke-direct {p0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setViewInMainThread(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Lcom/visualon/OSMPRender/voAudioRender;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAudioRender:Lcom/visualon/OSMPRender/voAudioRender;

    return-object p0
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 136
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->IS_FORCE_SEEK_BLUETOOTH_DISCONNECTED:Z

    return v0
.end method

.method static synthetic access$600(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mPlayer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    return-object p0
.end method

.method static synthetic access$700(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Z
    .locals 0

    .line 136
    iget-boolean p0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->m_bForcePureVideo:Z

    return p0
.end method

.method static synthetic access$702(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;Z)Z
    .locals 0

    .line 136
    iput-boolean p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->m_bForcePureVideo:Z

    return p1
.end method

.method static synthetic access$800()Z
    .locals 1

    .line 136
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->IS_DNA_TV:Z

    return v0
.end method

.method static synthetic access$900(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;)Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsExportListener;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAnalyticsExportListener:Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsExportListener;

    return-object p0
.end method

.method private enableTunnelingModeByCheckingLicense(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 0

    if-eqz p1, :cond_0

    .line 2762
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeEnableTunnelingModeByCheckingLicense()I

    move-result p1

    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1

    .line 2765
    :cond_0
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method

.method private getParameter2WithDefaultValue(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1087
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    const/4 v1, 0x0

    const-string v2, "@@@VOCommonPlayerJavaImpl"

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Fail to load JNI library"

    .line 1088
    invoke-static {v2, p2, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p3

    .line 1091
    :cond_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1092
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "getParam id:0x%08X"

    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1094
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2, p2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeGetParam(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    move-object p3, p1

    :cond_2
    return-object p3
.end method

.method private getVideoLRC()I
    .locals 1

    .line 1725
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mvlRC:I

    return v0
.end method

.method private handleAudioRenderListener(IIILjava/lang/Object;)I
    .locals 2

    .line 1777
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAudioRenderListener:Lcom/visualon/OSMPPlayer/VOOSMPAudioRenderListener;

    if-eqz v0, :cond_1

    const v1, -0x7fffffdf

    if-ne p1, v1, :cond_0

    .line 1779
    check-cast p4, [B

    check-cast p4, [B

    invoke-interface {v0, p4, p2, p3}, Lcom/visualon/OSMPPlayer/VOOSMPAudioRenderListener;->write([BII)I

    move-result p1

    return p1

    :cond_0
    const p2, -0x7fffffdd

    if-ne p1, p2, :cond_1

    .line 1782
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAudioRenderListener;->getLatency()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private initOutputControl()V
    .locals 3

    .line 400
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mOutputControlServer:Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;

    if-nez v0, :cond_0

    .line 401
    new-instance v0, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;

    invoke-direct {v0, v1, v2}, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mOutputControlServer:Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;

    .line 403
    invoke-virtual {v0, p0}, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;->setOutputControlListener(Lcom/visualon/OSMPOutputControl/voOSOutputControlServer$onOutputControlListener;)V

    .line 404
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mOutputControlServer:Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;

    invoke-virtual {v0}, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;->startDisplayListener()V

    :cond_0
    return-void
.end method

.method private isFroyoOrAbove()Z
    .locals 2

    .line 1546
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "1."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "2.0"

    .line 1547
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "2.1"

    .line 1548
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private queryOutputControlCapacity(II)I
    .locals 10

    .line 360
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$1;->$SwitchMap$com$visualon$OSMPUtils$voOSType$VOOSMP_OUTPUT_CONTROL_TYPE:[I

    invoke-static {p1}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->valueOf(I)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    const-string v2, "VOOSMP_CB_Query_Output_Control_Capacity, param1 is 0x%08X, param2 is 0x%08X. return is %d."

    const-string v3, "VOOSMP_CB_Query_Output_Control_Capacity, device OS version %s is too old, don\'t support check if support HDCP and get SecureFlag."

    const/16 v4, 0x11

    const/4 v5, 0x2

    const-string v6, "@@@VOCommonPlayerJavaImpl"

    const v7, -0x7ffffff2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v0, v8, :cond_3

    if-eq v0, v5, :cond_0

    goto/16 :goto_0

    .line 377
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_2

    .line 378
    new-instance v0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;-><init>(Landroid/content/Context;)V

    .line 379
    invoke-virtual {v0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->isHDCPForMiracast()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v7, 0x0

    .line 380
    :cond_1
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_6

    new-array v0, v1, [Ljava/lang/Object;

    .line 381
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v5

    invoke-static {v6, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 385
    :cond_2
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_6

    new-array p1, v8, [Ljava/lang/Object;

    .line 386
    sget-object p2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object p2, p1, v9

    invoke-static {v6, v3, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 362
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_5

    .line 363
    new-instance v0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;-><init>(Landroid/content/Context;)V

    .line 364
    invoke-virtual {v0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->isHDCPForHDMI()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v7, 0x0

    .line 365
    :cond_4
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_6

    new-array v0, v1, [Ljava/lang/Object;

    .line 366
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v5

    invoke-static {v6, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 370
    :cond_5
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_6

    new-array p1, v8, [Ljava/lang/Object;

    .line 371
    sget-object p2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object p2, p1, v9

    invoke-static {v6, v3, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    :goto_0
    return v7
.end method

.method private removeView()V
    .locals 2

    .line 1245
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mOverWritedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1246
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1248
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mOverWritedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private sendVOEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 5

    .line 411
    sget-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_CB_EVENT_ID_MAX:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "@@@VOCommonPlayerJavaImpl"

    if-ne v0, p1, :cond_1

    .line 412
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 415
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "Don\'t send event for onVOEvent (ID_MAX detected). param1 is 0x%X, param2 is 0x%X. "

    .line 413
    invoke-static {v3, p2, p1}, Lcom/visualon/OSMPUtils/voLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    :cond_0
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEventListener:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

    if-nez v0, :cond_2

    .line 421
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1

    .line 423
    :cond_2
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_ADAPTIVE_STREAMING_INFO:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    if-eq v0, p1, :cond_3

    sget-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_IO_HTTP_START_DOWNLOAD:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    if-eq v0, p1, :cond_3

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send onVOEvent to listener: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " - 0x%08X"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v3, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 429
    :cond_3
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEventListener:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;->onVOEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1
.end method

.method private setCodeType(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 1379
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_VIDEO_SW:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v0

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_VIDEO_IOMX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    .line 1380
    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_VIDEO_MEDIACODEC:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    .line 1381
    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_VIDEO_HARDWARE_AUTO_SELECTED:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    .line 1383
    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v1

    or-int/2addr v0, v1

    .line 1385
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_AUDIO_SW:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v1

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_AUDIO_MEDIACODEC:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    .line 1386
    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v2

    or-int/2addr v1, v2

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_AUDIO_IOMX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    .line 1387
    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v2

    or-int/2addr v1, v2

    and-int/2addr v0, p1

    and-int/2addr p1, v1

    .line 1392
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mUnifyDecoderManager:Lcom/visualon/OSMPUtils/voUnifyDecoderManager;

    const/high16 v2, 0x230000

    invoke-virtual {v1, v2, p1}, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->setCodeType(II)I

    move-result p1

    .line 1393
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 1394
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1

    .line 1396
    :cond_0
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mUnifyDecoderManager:Lcom/visualon/OSMPUtils/voUnifyDecoderManager;

    const/high16 v1, 0x240000

    invoke-virtual {p1, v1, v0}, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->setCodeType(II)I

    move-result p1

    .line 1397
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1
.end method

.method private setViewInMainThread(Landroid/view/View;)V
    .locals 4

    .line 1254
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    const/4 v1, 0x0

    const-string v2, "@@@VOCommonPlayerJavaImpl"

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Fail to load JNI library"

    .line 1255
    invoke-static {v2, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1259
    :cond_0
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mView:Landroid/view/View;

    .line 1260
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mVideoViewCtrl:Lcom/visualon/OSMPUtils/voVideoViewController;

    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, p1, v3}, Lcom/visualon/OSMPUtils/voVideoViewController;->withSurfaceView(Landroid/view/View;Landroid/view/SurfaceHolder;)Lcom/visualon/OSMPUtils/voVideoViewController;

    .line 1262
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setViewInMainThread is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1267
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mSubtitleRender:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    if-eqz v0, :cond_2

    .line 1268
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->setSurfaceView(Landroid/view/View;)V

    .line 1271
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAnaRender:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    if-eqz v0, :cond_3

    .line 1272
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->setSurfaceView(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method private setViewInSubThread(Landroid/view/View;)V
    .locals 5

    .line 1207
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    const/4 v1, 0x0

    const-string v2, "@@@VOCommonPlayerJavaImpl"

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Fail to load JNI library"

    .line 1208
    invoke-static {v2, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1212
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mSurface:Landroid/view/Surface;

    const/16 v3, 0xe

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_2

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mView:Landroid/view/View;

    instance-of v4, v0, Landroid/view/TextureView;

    if-nez v4, :cond_1

    instance-of v0, v0, Lcom/visualon/OSMPUtils/voGLSurfaceView;

    if-eqz v0, :cond_2

    .line 1213
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_2
    const/4 v0, 0x0

    .line 1215
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mSurface:Landroid/view/Surface;

    .line 1216
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez p1, :cond_3

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "SetView Surface Destroy"

    .line 1219
    invoke-static {v2, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1221
    :cond_3
    instance-of v0, p1, Lcom/visualon/OSMPUtils/voGLSurfaceView;

    if-eqz v0, :cond_4

    .line 1222
    check-cast p1, Lcom/visualon/OSMPUtils/voGLSurfaceView;

    invoke-virtual {p1}, Lcom/visualon/OSMPUtils/voGLSurfaceView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    .line 1223
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mSurface:Landroid/view/Surface;

    goto :goto_0

    .line 1225
    :cond_4
    instance-of v0, p1, Landroid/view/SurfaceView;

    if-eqz v0, :cond_6

    .line 1226
    check-cast p1, Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1227
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1228
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setDisplay surface is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1230
    :cond_5
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz p1, :cond_7

    .line 1231
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mSurface:Landroid/view/Surface;

    goto :goto_0

    .line 1232
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_7

    instance-of v0, p1, Landroid/view/TextureView;

    if-eqz v0, :cond_7

    .line 1233
    check-cast p1, Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    .line 1234
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mSurface:Landroid/view/Surface;

    .line 1237
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mSurface:Landroid/view/Surface;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result p1

    if-nez p1, :cond_8

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "@@@Surface surface is inValid"

    .line 1238
    invoke-static {v2, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1241
    :cond_8
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetView(Ljava/lang/Object;)I

    return-void
.end method

.method private trylockAndSendSyncEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_SYNC_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 4

    .line 2268
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v1, 0x64

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2269
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "@@@VOCommonPlayerJavaImpl"

    const-string p3, "Lock for event %d fail"

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p4, v0

    .line 2270
    invoke-static {p2, p3, p4}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2272
    :cond_0
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_OUT_OF_TIME:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 2275
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEventListener:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;->onVOSyncEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_SYNC_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2277
    :try_start_2
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 2280
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2282
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method


# virtual methods
.method public GetAudioData([B)J
    .locals 3

    .line 1826
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    .line 1827
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_JNI:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 1829
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    const-wide/32 v1, 0x11002

    invoke-virtual {v0, v1, v2, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeGetParam(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 1831
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    :goto_0
    return-wide v0
.end method

.method public GetEventHandler()Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;
    .locals 1

    .line 1894
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;

    return-object v0
.end method

.method public GetVideoData([B)J
    .locals 3

    .line 1835
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    .line 1836
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_JNI:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result p1

    :goto_0
    int-to-long v0, p1

    return-wide v0

    .line 1838
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    const-wide/32 v1, 0x11001

    invoke-virtual {v0, v1, v2, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeGetParam(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 1840
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0
.end method

.method public SetParam(JLjava/lang/Object;)I
    .locals 5

    const/4 v0, 0x0

    const-string v1, "@@@VOCommonPlayerJavaImpl"

    const-wide/16 v2, 0x102d

    cmp-long v4, p1, v2

    if-eqz v4, :cond_4

    const-wide/16 v2, 0x1026

    cmp-long v4, p1, v2

    if-eqz v4, :cond_4

    const-wide/16 v2, 0x102e

    cmp-long v4, p1, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const-wide/32 v2, 0x11013

    cmp-long v4, p1, v2

    if-nez v4, :cond_2

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "Audio Focus Gain"

    .line 256
    invoke-static {v1, p2, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    iget-boolean p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->audioFocusManagement:Z

    if-eqz p1, :cond_1

    .line 258
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mPlayer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->start()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result p1

    return p1

    .line 260
    :cond_1
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result p1

    return p1

    :cond_2
    const-wide/32 v2, 0x11014

    cmp-long v4, p1, v2

    if-nez v4, :cond_6

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "Audio Focus Loss"

    .line 262
    invoke-static {v1, p2, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    iget-boolean p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->audioFocusManagement:Z

    if-eqz p1, :cond_3

    .line 264
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mPlayer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->sp_Pause()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result p1

    return p1

    .line 266
    :cond_3
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result p1

    return p1

    .line 249
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;

    if-eqz v2, :cond_5

    const v0, -0xf0ffff1

    .line 250
    invoke-virtual {v2, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->removeMessages(I)V

    .line 251
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v0, v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_5
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Event handler is null"

    .line 253
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1, p2, p3}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetParam(JLjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public canBePaused()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public close()V
    .locals 2

    .line 1429
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mUnifiedDrmLicMgr:Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    if-eqz v1, :cond_0

    .line 1430
    check-cast v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->close()V

    .line 1432
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 1433
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->removeView()V

    :cond_1
    const/4 v0, 0x0

    .line 1436
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAudioSessionID:I

    return-void
.end method

.method public configureSynchronousPlayback(Lcom/visualon/OSMPPlayerImpl/OSMPSync/VOSynchronousType;Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 0

    .line 2811
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->voSynchronousType:Lcom/visualon/OSMPPlayerImpl/OSMPSync/VOSynchronousType;

    .line 2812
    iput-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->syncServerIP:Ljava/lang/String;

    .line 2813
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method

.method public destroy()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 6

    .line 2522
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2524
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mVideoViewCtrl:Lcom/visualon/OSMPUtils/voVideoViewController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2525
    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voVideoViewController;->destroy()V

    .line 2526
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mVideoViewCtrl:Lcom/visualon/OSMPUtils/voVideoViewController;

    .line 2529
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAudioCtrl:Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase;

    if-eqz v0, :cond_1

    .line 2530
    invoke-virtual {v0}, Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase;->destroy()V

    .line 2531
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAudioCtrl:Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase;

    .line 2534
    :cond_1
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v0

    .line 2536
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v2, :cond_3

    .line 2537
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_2

    .line 2538
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_JNI:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2608
    :goto_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 2540
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeDestroy()I

    move-result v0

    .line 2543
    :cond_3
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mPlayer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    if-eqz v2, :cond_4

    .line 2544
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mPlayer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    .line 2547
    :cond_4
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mDRMWrap:Lcom/visualon/OSMPUtils/voOSMPDRM;

    if-eqz v2, :cond_6

    .line 2548
    iget-boolean v3, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->m_bCreateDRMSuccess:Z

    if-eqz v3, :cond_5

    .line 2549
    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSMPDRM;->destoryDRM()I

    .line 2550
    :cond_5
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mDRMWrap:Lcom/visualon/OSMPUtils/voOSMPDRM;

    .line 2553
    :cond_6
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mUnifyDecoderManager:Lcom/visualon/OSMPUtils/voUnifyDecoderManager;

    invoke-virtual {v2, v1}, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->setListener(Lcom/visualon/OSMPUtils/voUnifyDecoderManager$onUnifyDecoderListener;)V

    .line 2554
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mOutputControlServer:Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;

    if-eqz v2, :cond_7

    .line 2555
    invoke-virtual {v2}, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;->stopDisplayListener()V

    .line 2556
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mOutputControlServer:Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;

    .line 2558
    :cond_7
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;

    if-eqz v2, :cond_8

    .line 2559
    invoke-virtual {v2, v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2560
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;

    .line 2562
    :cond_8
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    const-string v4, "@@@VOCommonPlayerJavaImpl"

    if-eqz v2, :cond_9

    .line 2563
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VOCommonPlayerImpl destroy, return "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2565
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Object;

    .line 2563
    invoke-static {v4, v2, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2568
    :cond_9
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mUnifiedDrmLicMgr:Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;

    if-eqz v2, :cond_a

    instance-of v5, v2, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    if-eqz v5, :cond_a

    .line 2569
    check-cast v2, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->uninit()V

    .line 2570
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mUnifiedDrmLicMgr:Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;

    .line 2574
    :cond_a
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mVSyncHelper:Lcom/visualon/OSMPRender/voVSyncHelper;

    if-eqz v2, :cond_b

    .line 2575
    invoke-virtual {v2}, Lcom/visualon/OSMPRender/voVSyncHelper;->uninit()V

    .line 2576
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mVSyncHelper:Lcom/visualon/OSMPRender/voVSyncHelper;

    .line 2579
    :cond_b
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mBluetoothManager:Lcom/visualon/OSMPUtils/voBluetoothManager;

    if-eqz v2, :cond_c

    .line 2580
    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voBluetoothManager;->uninit()V

    .line 2581
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mBluetoothManager:Lcom/visualon/OSMPUtils/voBluetoothManager;

    .line 2583
    :cond_c
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mHdmiMgr:Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;

    if-eqz v2, :cond_d

    .line 2584
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "destroy VOHdmiCapableChangeListener object "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mHdmiMgr:Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2585
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mHdmiMgr:Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;->unregister()V

    .line 2586
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mHdmiMgr:Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;

    .line 2589
    :cond_d
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->resetID3()V

    .line 2591
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAudioRender:Lcom/visualon/OSMPRender/voAudioRender;

    if-eqz v2, :cond_e

    .line 2592
    invoke-virtual {v2}, Lcom/visualon/OSMPRender/voAudioRender;->unInit()V

    .line 2593
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAudioRender:Lcom/visualon/OSMPRender/voAudioRender;

    .line 2596
    :cond_e
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mContext:Landroid/content/Context;

    .line 2597
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEventListener:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

    .line 2598
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mOverWritedView:Landroid/view/View;

    .line 2600
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mID3Container:Lcom/visualon/OSMPUtils/voID3Container;

    if-eqz v2, :cond_f

    .line 2601
    invoke-interface {v2, v1}, Lcom/visualon/OSMPUtils/voID3Container;->setID3Listener(Lcom/visualon/OSMPUtils/voCustomerTagWrap$onID3Listener;)V

    .line 2604
    :cond_f
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->stopSynchronousPlayback()V

    .line 2606
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 2608
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public enableAnalyticsExport(Z)I
    .locals 1

    .line 2625
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0x8b

    .line 2624
    invoke-virtual {p0, v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setParameter(ILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    .line 2625
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result p1

    return p1
.end method

.method public enableAnalyticsFoundationLocation(Z)I
    .locals 3

    .line 2468
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VOCommonPlayerImpl enableAnalyticsFoundationLocation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "@@@VOCommonPlayerJavaImpl"

    invoke-static {v2, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0x84

    .line 2473
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 2472
    invoke-virtual {p0, v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setParameter(ILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    .line 2473
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result p1

    return p1
.end method

.method enableAudioFocusManagement(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 0

    .line 2806
    iput-boolean p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->audioFocusManagement:Z

    .line 2807
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method

.method public enableAudioRenderExport(Z)I
    .locals 1

    .line 2637
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAudioRender:Lcom/visualon/OSMPRender/voAudioRender;

    if-eqz v0, :cond_0

    .line 2638
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPRender/voAudioRender;->enableAudioRenderExport(Z)V

    .line 2639
    iput-boolean p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEnableAudioRenderExport:Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public enableCardBoardVideo(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .line 2709
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mUnifyDecoderManager:Lcom/visualon/OSMPUtils/voUnifyDecoderManager;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->enableCardBoardVideo(Z)V

    .line 2710
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mVideoViewCtrl:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPUtils/voVideoViewController;->setCardBoardEnable(Z)V

    .line 2711
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    .line 2712
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeEnableCardBoardVideo(Z)I

    move-result p1

    .line 2711
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1
.end method

.method public enableCubemapVideo(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .line 2723
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mUnifyDecoderManager:Lcom/visualon/OSMPUtils/voUnifyDecoderManager;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->enableCubemapVideo(Z)V

    .line 2724
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mVideoViewCtrl:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPUtils/voVideoViewController;->setCubemapEnable(Z)V

    .line 2725
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    .line 2726
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeEnableCubemapVideo(Z)I

    move-result p1

    .line 2725
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1
.end method

.method public enableDSPClock(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 2748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "try enableDSPClock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "@@@VOCommonPlayerJavaImpl"

    invoke-static {v2, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2749
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAudioRender:Lcom/visualon/OSMPRender/voAudioRender;

    if-eqz v0, :cond_0

    .line 2750
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPRender/voAudioRender;->setEnableDSPClock(Z)V

    .line 2752
    :cond_0
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method

.method enablePersistentDrmLicense(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 0

    .line 2844
    iput-boolean p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEnablePersistentDrmLcs:Z

    .line 2845
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method

.method public enableRecording(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .line 2730
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mVideoViewCtrl:Lcom/visualon/OSMPUtils/voVideoViewController;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPUtils/voVideoViewController;->setSecure(Z)V

    .line 2731
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method

.method public enableSEIPostProcessVideo(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 1596
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mUnifyDecoderManager:Lcom/visualon/OSMPUtils/voUnifyDecoderManager;

    sget-object v1, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;->VARSKEY_ENABLE_SEI_POST_PROCESS_VIDEO:Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->setParam(Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;Ljava/lang/Object;)I

    .line 1598
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0x80

    .line 1597
    invoke-virtual {p0, v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setParameter(ILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1
.end method

.method public enableSphericalVideo(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .line 2716
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mUnifyDecoderManager:Lcom/visualon/OSMPUtils/voUnifyDecoderManager;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->enableSphericalVideo(Z)V

    .line 2717
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mVideoViewCtrl:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPUtils/voVideoViewController;->setSphericalEnable(Z)V

    .line 2718
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    .line 2719
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeEnableSphericalVideo(Z)I

    move-result p1

    .line 2718
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1
.end method

.method public enableTunneling(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 6

    .line 2769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "try enableTunneling: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "@@@VOCommonPlayerJavaImpl"

    invoke-static {v3, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2772
    invoke-direct {p0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->enableTunnelingModeByCheckingLicense(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    .line 2773
    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    if-eq v2, v0, :cond_0

    .line 2774
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to check Tunneling mode from license!!"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, v1}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 2778
    :cond_0
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_1

    .line 2779
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_JNI:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1

    .line 2781
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAudioRender:Lcom/visualon/OSMPRender/voAudioRender;

    if-nez v0, :cond_2

    .line 2782
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1

    :cond_2
    const-wide/32 v4, 0x10046

    if-eqz p1, :cond_4

    .line 2784
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_4

    .line 2785
    iget p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAudioSessionID:I

    if-nez p1, :cond_3

    .line 2786
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    .line 2787
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 2789
    invoke-virtual {p1}, Landroid/media/AudioManager;->generateAudioSessionId()I

    move-result p1

    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAudioSessionID:I

    :cond_3
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Enable Tunneling , Force enable DSP Clock!"

    .line 2791
    invoke-static {v3, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2792
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAudioRender:Lcom/visualon/OSMPRender/voAudioRender;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/visualon/OSMPRender/voAudioRender;->setEnableDSPClock(Z)V

    .line 2793
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAudioRender:Lcom/visualon/OSMPRender/voAudioRender;

    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAudioSessionID:I

    invoke-virtual {p1, v0}, Lcom/visualon/OSMPRender/voAudioRender;->SetAudioSessionID(I)V

    .line 2794
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAudioSessionID:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v4, v5, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetParam(JLjava/lang/Object;)I

    goto :goto_0

    :cond_4
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Disable Tunneling"

    .line 2797
    invoke-static {v3, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2798
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAudioRender:Lcom/visualon/OSMPRender/voAudioRender;

    invoke-virtual {p1, v1}, Lcom/visualon/OSMPRender/voAudioRender;->SetAudioSessionID(I)V

    .line 2799
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAudioSessionID:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v4, v5, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetParam(JLjava/lang/Object;)I

    .line 2802
    :goto_0
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method

.method public enableVOAdaptivePlayback(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 1607
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mUnifyDecoderManager:Lcom/visualon/OSMPUtils/voUnifyDecoderManager;

    sget-object v1, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;->VARSKEY_ADAPTIVE_PLAYBACK:Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->setParam(Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1
.end method

.method public enableVerimatrixPostProcessVideo(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 1602
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mUnifyDecoderManager:Lcom/visualon/OSMPUtils/voUnifyDecoderManager;

    sget-object v1, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;->VARSKEY_VERIMATRIX:Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->setParam(Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;Ljava/lang/Object;)I

    .line 1603
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method

.method public enforceSoftwareVideoScaling(Z)I
    .locals 1

    .line 1591
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mVideoViewCtrl:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPUtils/voVideoViewController;->withEnforceSWVideoScaling(Z)Lcom/visualon/OSMPUtils/voVideoViewController;

    const/4 p1, 0x0

    return p1
.end method

.method public getAudioDecodingBitrate()[I
    .locals 6

    .line 1648
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mPlayer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/16 v0, 0xa

    new-array v1, v0, [I

    const/16 v2, 0x20

    .line 1652
    invoke-virtual {p0, v2, v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->getParameter(ILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    new-array v2, v0, [I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    rsub-int/lit8 v4, v3, 0x9

    .line 1655
    aget v5, v1, v3

    mul-int/lit8 v5, v5, 0x8

    aput v5, v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public getFrameScrubbingThumbnail(I)Ljava/lang/String;
    .locals 1

    .line 1844
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mID3Container:Lcom/visualon/OSMPUtils/voID3Container;

    if-eqz v0, :cond_0

    .line 1845
    invoke-interface {v0, p1}, Lcom/visualon/OSMPUtils/voID3Container;->getThumbnailByTime(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getParameter(ILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 1063
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    .line 1064
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_JNI:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1

    .line 1066
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2, p2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeGetParam(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 1067
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1068
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "@@@VOCommonPlayerJavaImpl"

    const-string p2, "getParam id:0x%08X ret obj:%p"

    invoke-static {p1, p2, v0}, Lcom/visualon/OSMPUtils/voLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1071
    :cond_1
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method

.method public getParameter2(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1075
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    const/4 v1, 0x0

    const-string v2, "@@@VOCommonPlayerJavaImpl"

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Fail to load JNI library"

    .line 1076
    invoke-static {v2, p2, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 1079
    :cond_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1080
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "getParam id:0x%08X"

    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1083
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2, p2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeGetParam(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPlayerType()I
    .locals 3

    .line 1661
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mPlayer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOCommonPlayerJavaImpl"

    const-string v2, "VOCommonPlayerImpl getPlayerType "

    .line 1663
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x17

    const/4 v1, 0x0

    .line 1664
    invoke-virtual {p0, v0, v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->getParameter2(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1665
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getProcessorType()Ljava/lang/String;
    .locals 1

    .line 1721
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenBrightness()I
    .locals 4

    .line 1705
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mPlayer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    if-nez v0, :cond_0

    .line 1706
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0xff

    .line 1710
    :try_start_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mContext:Landroid/content/Context;

    .line 1711
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    .line 1710
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    int-to-float v0, v0

    float-to-double v0, v0

    const-wide v2, 0x4004666666666666L    # 2.55

    div-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public getScreenBrightnessMode()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SCREEN_BRIGHTNESS_MODE;
    .locals 1

    .line 1681
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mPlayer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    if-nez v0, :cond_0

    .line 1682
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SCREEN_BRIGHTNESS_MODE;->VO_OSMP_SCREEN_BRIGHTNESS_MODE_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SCREEN_BRIGHTNESS_MODE;

    return-object v0

    .line 1686
    :cond_0
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->GetScreenBrightnessMode()I

    move-result v0

    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SCREEN_BRIGHTNESS_MODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SCREEN_BRIGHTNESS_MODE;

    move-result-object v0

    return-object v0
.end method

.method public getVideoDecodingBitrate()[I
    .locals 5

    .line 1635
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mPlayer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/16 v0, 0xa

    new-array v1, v0, [I

    const/16 v2, 0x21

    .line 1639
    invoke-virtual {p0, v2, v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->getParameter(ILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    new-array v2, v0, [I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    rsub-int/lit8 v4, v3, 0x9

    .line 1642
    aget v4, v1, v4

    mul-int/lit8 v4, v4, 0x8

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public init(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PLAYER_ENGINE;Lcom/visualon/OSMPPlayer/VOOSMPInitParam;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 5

    .line 1100
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    const-string v1, "@@@VOCommonPlayerJavaImpl"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "Fail to load JNI library from Init()"

    .line 1101
    invoke-static {v1, p2, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const p1, -0x7ffffff1

    .line 1102
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1

    .line 1105
    :cond_0
    invoke-virtual {p2}, Lcom/visualon/OSMPPlayer/VOOSMPInitParam;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mContext:Landroid/content/Context;

    .line 1106
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mPlayerType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PLAYER_ENGINE;

    .line 1107
    invoke-virtual {p2}, Lcom/visualon/OSMPPlayer/VOOSMPInitParam;->getLibraryPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mLibPath:Ljava/lang/String;

    .line 1108
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;->VO_OSMP_RENDER_TYPE_NATIVE_WINDOW:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->m_RenderType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    .line 1109
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mID3Container:Lcom/visualon/OSMPUtils/voID3Container;

    invoke-interface {v0, p0}, Lcom/visualon/OSMPUtils/voID3Container;->setID3Listener(Lcom/visualon/OSMPUtils/voCustomerTagWrap$onID3Listener;)V

    .line 1110
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PLAYER_ENGINE;->getValue()I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeInit(ILjava/lang/Object;)I

    move-result p1

    .line 1112
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mBluetoothManager:Lcom/visualon/OSMPUtils/voBluetoothManager;

    if-nez p2, :cond_1

    .line 1113
    new-instance p2, Lcom/visualon/OSMPUtils/voBluetoothManager;

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0, p0}, Lcom/visualon/OSMPUtils/voBluetoothManager;-><init>(Landroid/content/Context;Lcom/visualon/OSMPUtils/voBluetoothManager$onStatusChangeListener;)V

    iput-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mBluetoothManager:Lcom/visualon/OSMPUtils/voBluetoothManager;

    .line 1114
    invoke-virtual {p2}, Lcom/visualon/OSMPUtils/voBluetoothManager;->init()V

    .line 1116
    :cond_1
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAudioRender:Lcom/visualon/OSMPRender/voAudioRender;

    if-nez p2, :cond_2

    .line 1117
    new-instance p2, Lcom/visualon/OSMPRender/voAudioRender;

    invoke-direct {p2, p0}, Lcom/visualon/OSMPRender/voAudioRender;-><init>(Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;)V

    iput-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAudioRender:Lcom/visualon/OSMPRender/voAudioRender;

    .line 1119
    :cond_2
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAudioRender:Lcom/visualon/OSMPRender/voAudioRender;

    invoke-virtual {p2}, Lcom/visualon/OSMPRender/voAudioRender;->init()V

    .line 1121
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mVideoViewCtrl:Lcom/visualon/OSMPUtils/voVideoViewController;

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/visualon/OSMPUtils/voVideoViewController;->withContext(Landroid/content/Context;)Lcom/visualon/OSMPUtils/voVideoViewController;

    .line 1122
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mUnifyDecoderManager:Lcom/visualon/OSMPUtils/voUnifyDecoderManager;

    sget-object v0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;->VARSKEY_CONTEXT:Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;

    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0, v3}, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->setParam(Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;Ljava/lang/Object;)I

    .line 1123
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mUnifyDecoderManager:Lcom/visualon/OSMPUtils/voUnifyDecoderManager;

    sget-object v0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;->VARSKEY_VIEW_CONTROL:Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;

    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mVideoViewCtrl:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-virtual {p2, v0, v3}, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->setParam(Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;Ljava/lang/Object;)I

    .line 1124
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mSubtitleRender:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    if-nez p2, :cond_3

    .line 1125
    new-instance p2, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-direct {p2}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;-><init>()V

    iput-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mSubtitleRender:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    :cond_3
    const p2, 0x11004

    .line 1126
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mSubtitleRender:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-virtual {p0, p2, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setParameter(ILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 1128
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mVideoViewCtrl:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-virtual {p2}, Lcom/visualon/OSMPUtils/voVideoViewController;->reset()V

    .line 1129
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mVideoViewCtrl:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-virtual {p2, p0}, Lcom/visualon/OSMPUtils/voVideoViewController;->setViewChangeListener(Lcom/visualon/OSMPUtils/voVideoViewController$onViewChangeListener;)V

    .line 1130
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mVideoViewCtrl:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-virtual {p2, v2}, Lcom/visualon/OSMPUtils/voVideoViewController;->withEnforceSWVideoScaling(Z)Lcom/visualon/OSMPUtils/voVideoViewController;

    .line 1132
    sget-object p2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;->VO_OSMP_RENDER_TYPE_NATIVE_WINDOW:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    invoke-virtual {p0, p2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setRenderType(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 1134
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    invoke-static {p2, p0}, Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase;->createController(Landroid/media/AudioManager;Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase$audioOutputControllerListener;)Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase;

    move-result-object p2

    iput-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAudioCtrl:Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase;

    .line 1137
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt p2, v0, :cond_4

    .line 1138
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/visualon/OSMPRender/voVSyncHelper;->newVSyncHelper(Landroid/content/Context;)Lcom/visualon/OSMPRender/voVSyncHelper;

    move-result-object p2

    iput-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mVSyncHelper:Lcom/visualon/OSMPRender/voVSyncHelper;

    if-eqz p2, :cond_4

    .line 1140
    invoke-virtual {p2}, Lcom/visualon/OSMPRender/voVSyncHelper;->init()Z

    const p2, 0x11010

    .line 1141
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mVSyncHelper:Lcom/visualon/OSMPRender/voVSyncHelper;

    invoke-virtual {v0}, Lcom/visualon/OSMPRender/voVSyncHelper;->getContext()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setParameter(ILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 1147
    :cond_4
    sget-boolean p2, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->IS_DNA_TV:Z

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz p2, :cond_5

    sget-boolean p2, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-eqz p2, :cond_5

    .line 1148
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    const-string v0, "{\"disableBackBuf\": \"true\"}"

    invoke-virtual {p2, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeAddConfiguration(Ljava/lang/String;)I

    .line 1152
    :cond_5
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mHdmiMgr:Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;

    if-nez p2, :cond_6

    .line 1153
    new-instance p2, Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0, p0}, Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;-><init>(Landroid/content/Context;Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener$Listener;)V

    iput-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mHdmiMgr:Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;

    .line 1154
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "new VOHdmiCapableChangeListener object "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mHdmiMgr:Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, p2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1155
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mHdmiMgr:Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;

    invoke-virtual {p2}, Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;->register()V

    .line 1158
    :cond_6
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1
.end method

.method public isSupportMaxResolution()Z
    .locals 1

    .line 2756
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mCheckInfo:Lcom/visualon/OSMPUtils/voCheckMediaCodecInfo;

    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voCheckMediaCodecInfo;->getSupportMaxWidth()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mCheckInfo:Lcom/visualon/OSMPUtils/voCheckMediaCodecInfo;

    .line 2757
    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voCheckMediaCodecInfo;->getSupportMaxHeight()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public limitBAbyViewSize(Landroid/view/View;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 1201
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    const p1, 0x301000a

    .line 1202
    invoke-virtual {p0, p1, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setParameter(ILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 1203
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method

.method public loadAdCall(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 1611
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;

    invoke-direct {v0}, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;-><init>()V

    .line 1612
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_VIDEO_SW:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    .line 1613
    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v1

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_AUDIO_SW:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    .line 1614
    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v2

    or-int/2addr v1, v2

    .line 1612
    invoke-virtual {v0, v1}, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->setDecoderType(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 1615
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FLAG;->VO_OSMP_FLAG_SRC_OPEN_ASYNC:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FLAG;

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->VO_OSMP_SRC_AUTO_DETECT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->open(Ljava/lang/String;Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FLAG;Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 1617
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method

.method public loadVideoByUrl(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 1621
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;

    invoke-direct {v0}, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;-><init>()V

    .line 1622
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_VIDEO_SW:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    .line 1623
    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v1

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_AUDIO_SW:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    .line 1624
    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v2

    or-int/2addr v1, v2

    .line 1622
    invoke-virtual {v0, v1}, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->setDecoderType(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 1625
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FLAG;->VO_OSMP_FLAG_SRC_OPEN_ASYNC:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FLAG;

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->VO_OSMP_SRC_AUTO_DETECT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->open(Ljava/lang/String;Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FLAG;Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 1627
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method

.method public onAudioRenderEvent(IIILjava/lang/Object;)I
    .locals 2

    .line 1762
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->handleAudioRenderListener(IIILjava/lang/Object;)I

    move-result v0

    .line 1764
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1765
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1766
    iput p1, v1, Landroid/os/Message;->what:I

    .line 1767
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 1768
    iput p3, v1, Landroid/os/Message;->arg2:I

    .line 1769
    iput-object p4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1770
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;

    invoke-virtual {p1, v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return v0
.end method

.method public onGetAudioFormat()Lcom/visualon/OSMPUtils/voOSAudioFormat;
    .locals 5

    .line 1737
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "@@@VOCommonPlayerJavaImpl"

    const-string v3, "Fail to load JNI library"

    .line 1738
    invoke-static {v1, v3, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    .line 1742
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    const-wide/16 v3, 0x14

    invoke-virtual {v0, v3, v4, v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeGetParam(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    if-nez v0, :cond_1

    return-object v2

    .line 1750
    :cond_1
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAudioFormat:Lcom/visualon/OSMPUtils/voOSAudioFormatImpl;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v2, :cond_2

    .line 1751
    new-instance v2, Lcom/visualon/OSMPUtils/voOSAudioFormatImpl;

    aget v1, v0, v1

    aget v4, v0, v4

    aget v0, v0, v3

    invoke-direct {v2, v1, v4, v0}, Lcom/visualon/OSMPUtils/voOSAudioFormatImpl;-><init>(III)V

    iput-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAudioFormat:Lcom/visualon/OSMPUtils/voOSAudioFormatImpl;

    goto :goto_0

    .line 1753
    :cond_2
    aget v1, v0, v1

    invoke-virtual {v2, v1}, Lcom/visualon/OSMPUtils/voOSAudioFormatImpl;->setSampleRate(I)I

    .line 1754
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAudioFormat:Lcom/visualon/OSMPUtils/voOSAudioFormatImpl;

    aget v2, v0, v4

    invoke-virtual {v1, v2}, Lcom/visualon/OSMPUtils/voOSAudioFormatImpl;->setChannels(I)I

    .line 1755
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAudioFormat:Lcom/visualon/OSMPUtils/voOSAudioFormatImpl;

    aget v0, v0, v3

    invoke-virtual {v1, v0}, Lcom/visualon/OSMPUtils/voOSAudioFormatImpl;->setSampleBits(I)I

    .line 1758
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAudioFormat:Lcom/visualon/OSMPUtils/voOSAudioFormatImpl;

    return-object v0
.end method

.method public onGetAudioParam(J)Ljava/lang/Object;
    .locals 2

    .line 1817
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "@@@VOCommonPlayerJavaImpl"

    const-string v0, "Fail to load JNI library"

    .line 1818
    invoke-static {p2, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 1822
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1, p2, v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeGetParam(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public onGetFormatID()I
    .locals 4

    .line 1729
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    .line 1730
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_JNI:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v0

    return v0

    .line 1732
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    const-wide/16 v1, 0x58

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeGetParam(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public onGetPos()J
    .locals 4

    .line 1884
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    .line 1885
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_JNI:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 1887
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mPlayer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    return-wide v1

    :cond_1
    const v0, 0x11009

    const/4 v3, 0x0

    .line 1890
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v3, v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->getParameter2WithDefaultValue(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public onHdmiConnectChanged(Lcom/visualon/OSMPUtils/VOSupportEncoding;)V
    .locals 7

    .line 290
    monitor-enter p0

    .line 291
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->currentEncoding:Lcom/visualon/OSMPUtils/VOSupportEncoding;

    invoke-virtual {p1, v0}, Lcom/visualon/OSMPUtils/VOSupportEncoding;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 292
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->currentEncoding:Lcom/visualon/OSMPUtils/VOSupportEncoding;

    .line 295
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mPlayer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->getPlayerState()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATE;

    move-result-object v0

    .line 296
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, 0x123

    .line 298
    :try_start_1
    invoke-virtual {p0, v3, v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->getParameter2(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v1, "@@@VOCommonPlayerJavaImpl"

    const-string v3, "Get VOOSMP_PID_ENABLE_PAUSE_FOR_HDMI_OFF failed"

    new-array v4, v2, [Ljava/lang/Object;

    .line 302
    invoke-static {v1, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    .line 305
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 306
    invoke-virtual {p1}, Lcom/visualon/OSMPUtils/VOSupportEncoding;->getIsPlugged()I

    move-result v1

    if-nez v1, :cond_1

    .line 307
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATE;->VO_OSMP_STATE_PLAYING:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATE;

    if-ne v0, p1, :cond_0

    const-string p1, "@@@VOCommonPlayerJavaImpl"

    const-string v0, "will pause player."

    new-array v1, v2, [Ljava/lang/Object;

    .line 309
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mPlayer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->pause()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 312
    :cond_0
    monitor-exit p0

    return-void

    .line 323
    :cond_1
    invoke-virtual {p1}, Lcom/visualon/OSMPUtils/VOSupportEncoding;->getIsPlugged()I

    move-result v0

    if-nez v0, :cond_2

    .line 324
    monitor-exit p0

    return-void

    .line 326
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->getPhysicalDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    const v1, 0x301000a

    .line 327
    invoke-virtual {p0, v1, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setParameter(ILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 329
    invoke-virtual {p1}, Lcom/visualon/OSMPUtils/VOSupportEncoding;->getCapableEncodings()Ljava/util/HashMap;

    move-result-object p1

    .line 330
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v3, 0x5

    .line 331
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/high16 v5, 0x200000

    if-ne v3, v4, :cond_4

    .line 333
    sget v3, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->RENDER_FORMAT_AC3:I

    or-int v4, v3, v5

    const-string v6, "NULL"

    invoke-virtual {p0, v4, v6}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setParameter(ILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    or-int/2addr v3, v5

    .line 337
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 336
    invoke-virtual {p0, v3, v4}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setParameter(ILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    const-string v3, "@@@VOCommonPlayerJavaImpl"

    .line 338
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "support ENCODING_AC3, select.get: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v6}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    const/4 v3, 0x6

    .line 340
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 341
    sget v3, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->RENDER_FORMAT_EAC3:I

    or-int v4, v3, v5

    const-string v6, "NULL"

    invoke-virtual {p0, v4, v6}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setParameter(ILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    or-int/2addr v3, v5

    .line 344
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 343
    invoke-virtual {p0, v3, v4}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setParameter(ILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    const-string v3, "@@@VOCommonPlayerJavaImpl"

    .line 345
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "support ENCODING_E_AC3, select.get: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v1, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 348
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public onHdmiDisconnect()V
    .locals 1

    .line 2669
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAudioRender:Lcom/visualon/OSMPRender/voAudioRender;

    if-eqz v0, :cond_0

    .line 2670
    invoke-virtual {v0}, Lcom/visualon/OSMPRender/voAudioRender;->hdmiDisConnect()V

    :cond_0
    return-void
.end method

.method public onSendID3Event(IIILjava/lang/Object;)I
    .locals 3

    .line 1852
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEventListener:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "@@@VOCommonPlayerJavaImpl"

    const-string p3, "mRequestListener is null"

    .line 1853
    invoke-static {p2, p3, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1854
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result p1

    return p1

    :cond_0
    const v0, 0x2000020

    if-ne p1, v0, :cond_5

    .line 1857
    check-cast p4, Lcom/visualon/OSMPUtils/voOSTimedTag;

    if-eqz p4, :cond_4

    .line 1859
    sget-object p1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;->VO_OSMP_SRC_CUSTOMERTAGID_MAX:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;->getValue()I

    move-result p1

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/16 v0, 0x63

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 1866
    sget-object p1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;->VO_OSMP_SRC_CUSTOMERTAG_DASH_EMSG_BOX:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;->getValue()I

    move-result p1

    .line 1867
    new-instance p3, Ljava/lang/String;

    invoke-interface {p4}, Lcom/visualon/OSMPUtils/voOSTimedTag;->Data()[B

    move-result-object p2

    invoke-direct {p3, p2}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    .line 1863
    :cond_2
    :goto_0
    sget-object p1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;->VO_OSMP_SRC_CUSTOMERTAGID_TIMEDTAG:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;->getValue()I

    move-result p1

    .line 1864
    invoke-interface {p4}, Lcom/visualon/OSMPUtils/voOSTimedTag;->Data()[B

    move-result-object p3

    .line 1870
    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;

    const v0, -0xf0ffffe

    .line 1872
    invoke-interface {p4}, Lcom/visualon/OSMPUtils/voOSTimedTag;->TimeStamp()J

    move-result-wide v1

    long-to-int p4, v1

    .line 1871
    invoke-static {p2, v0, p1, p4, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1873
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;

    invoke-virtual {p2, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1875
    :cond_4
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result p1

    return p1

    .line 1877
    :cond_5
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1878
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;

    invoke-virtual {p2, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1879
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result p1

    return p1
.end method

.method public onSetAudioParam(ILjava/lang/Object;)J
    .locals 4

    .line 1789
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetAudioParam nID:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "@@@VOCommonPlayerJavaImpl"

    invoke-static {v3, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1792
    :cond_0
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_1

    .line 1793
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_JNI:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result p1

    :goto_0
    int-to-long p1, p1

    return-wide p1

    :cond_1
    const/16 v0, 0x5c

    if-ne p1, v0, :cond_3

    .line 1796
    check-cast p2, Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 1797
    invoke-virtual {p2}, Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;->getSampleRate()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 1798
    invoke-virtual {p2}, Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;->getChannels()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 1799
    invoke-virtual {p2}, Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;->getSampleBits()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 1800
    invoke-virtual {p2}, Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;->getBufferSize()I

    move-result v2

    aput v2, v0, v1

    .line 1801
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAudioRenderListener:Lcom/visualon/OSMPPlayer/VOOSMPAudioRenderListener;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEnableAudioRenderExport:Z

    if-eqz v1, :cond_2

    .line 1803
    new-instance v1, Lcom/visualon/OSMPPlayer/VOOSMPAudioFormat;

    invoke-direct {v1}, Lcom/visualon/OSMPPlayer/VOOSMPAudioFormat;-><init>()V

    .line 1804
    invoke-virtual {p2}, Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;->getFormat()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/visualon/OSMPPlayer/VOOSMPAudioFormat;->setAudioFormat(I)Lcom/visualon/OSMPPlayer/VOOSMPAudioFormat;

    move-result-object v2

    .line 1805
    invoke-virtual {p2}, Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;->getChannels()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPAudioFormat;->setChannels(I)Lcom/visualon/OSMPPlayer/VOOSMPAudioFormat;

    move-result-object v2

    .line 1806
    invoke-virtual {p2}, Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;->getSampleRate()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPAudioFormat;->setSampleRate(I)Lcom/visualon/OSMPPlayer/VOOSMPAudioFormat;

    move-result-object v2

    .line 1807
    invoke-virtual {p2}, Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;->getSampleBits()I

    move-result p2

    invoke-virtual {v2, p2}, Lcom/visualon/OSMPPlayer/VOOSMPAudioFormat;->setSampleBits(I)Lcom/visualon/OSMPPlayer/VOOSMPAudioFormat;

    .line 1808
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAudioRenderListener:Lcom/visualon/OSMPPlayer/VOOSMPAudioRenderListener;

    invoke-interface {p2, v1}, Lcom/visualon/OSMPPlayer/VOOSMPAudioRenderListener;->onAudioFormatChanged(Lcom/visualon/OSMPPlayer/VOOSMPAudioFormat;)V

    .line 1810
    :cond_2
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    int-to-long v1, p1

    invoke-virtual {p2, v1, v2, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetParam(JLjava/lang/Object;)I

    move-result p1

    goto :goto_0

    .line 1813
    :cond_3
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2, p2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetParam(JLjava/lang/Object;)I

    move-result p1

    goto :goto_0
.end method

.method public onSetParam(JLjava/lang/Object;)I
    .locals 1

    .line 2661
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    .line 2662
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_JNI:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result p1

    return p1

    .line 2664
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1, p2, p3}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetParam(JLjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public onUnifyDecoderEvent(IIILjava/lang/Object;)V
    .locals 1

    .line 2704
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2705
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;

    invoke-virtual {p2, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onUnifyDecoderSetParam(JLjava/lang/Object;)I
    .locals 1

    .line 2676
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    .line 2677
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_JNI:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result p1

    return p1

    .line 2698
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1, p2, p3}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetParam(JLjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public onVOEventInternal(IJJLjava/lang/Object;)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    .line 1898
    invoke-static/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->valueOf(I)Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    move-result-object v0

    .line 1900
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v7

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x1

    const/4 v11, 0x2

    const-string v12, "@@@VOCommonPlayerJavaImpl"

    const/4 v13, 0x0

    if-eqz v7, :cond_0

    new-array v7, v8, [Ljava/lang/Object;

    .line 1902
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v7, v13

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v10

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v11

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v9

    const-string v0, "osmpCallBack nID is 0x%X, name is %s, param1 is 0x%X, param2 is 0x%X."

    .line 1901
    invoke-static {v12, v0, v7}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1905
    :cond_0
    invoke-direct/range {p0 .. p6}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->CheckCallBackParam(IJJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v7, v0

    goto :goto_0

    :cond_1
    move-object/from16 v7, p6

    :goto_0
    const/16 v0, 0x19

    if-ne v2, v0, :cond_3

    if-eqz v7, :cond_f

    .line 1912
    :try_start_0
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;->VOOSMP_FLAG_SEI_EVENT_PIC_TIMING:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;

    .line 1913
    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;->getValue()I

    move-result v0

    int-to-long v14, v0

    cmp-long v0, v3, v14

    if-nez v0, :cond_2

    .line 1914
    move-object v0, v7

    check-cast v0, [I

    check-cast v0, [I

    .line 1915
    invoke-static {v0}, Lcom/visualon/OSMPUtils/voOSSEIPicTimingImpl;->parse([I)Lcom/visualon/OSMPUtils/voOSSEIPicTimingImpl;

    move-result-object v7

    const-string v0, "osmpCallBack, VOOSMP_CB_SEI_INFO, VOOSMP_FLAG_SEI_EVENT_PIC_TIMING ok"

    new-array v8, v13, [Ljava/lang/Object;

    .line 1917
    invoke-static {v12, v0, v8}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1920
    :cond_2
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;->VOOSMP_FLAG_SEI_USER_DATA_UNREGISTERED:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;

    .line 1921
    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;->getValue()I

    move-result v0

    int-to-long v14, v0

    cmp-long v0, v3, v14

    if-nez v0, :cond_f

    .line 1922
    new-instance v0, Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;

    invoke-direct {v0}, Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;-><init>()V

    .line 1923
    move-object v8, v7

    check-cast v8, Landroid/os/Parcel;

    invoke-virtual {v0, v8}, Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;->parse(Landroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v7, "osmpCallBack, VOOSMP_CB_SEI_INFO, VOOSMP_FLAG_SEI_USER_DATA_UNREGISTERED ok"

    new-array v8, v13, [Ljava/lang/Object;

    .line 1925
    invoke-static {v12, v7, v8}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v7, v0

    goto/16 :goto_5

    :catch_0
    move-object v7, v0

    :catch_1
    new-array v0, v13, [Ljava/lang/Object;

    const-string v8, "osmpCallBack, VOOSMP_CB_SEI_INFO arg0 is not Parcel object"

    .line 1929
    invoke-static {v12, v8, v0}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_3
    const/16 v0, 0x1c

    if-ne v2, v0, :cond_5

    .line 1934
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "osmpCallBack, VOOSMP_CB_PCM_OUTPUT   "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v8, v13, [Ljava/lang/Object;

    invoke-static {v12, v0, v8}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    if-eqz v7, :cond_f

    .line 1939
    :try_start_2
    move-object v0, v7

    check-cast v0, Landroid/os/Parcel;

    .line 1940
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1941
    new-instance v8, Lcom/visualon/OSMPUtils/voOSPCMBufferImpl;

    invoke-direct {v8}, Lcom/visualon/OSMPUtils/voOSPCMBufferImpl;-><init>()V

    .line 1942
    invoke-virtual {v8, v0}, Lcom/visualon/OSMPUtils/voOSPCMBufferImpl;->parse(Landroid/os/Parcel;)Z

    .line 1943
    invoke-virtual {v8}, Lcom/visualon/OSMPUtils/voOSPCMBufferImpl;->getTimestamp()J

    move-result-wide v3

    long-to-int v0, v3

    int-to-long v3, v0

    .line 1944
    invoke-virtual {v8}, Lcom/visualon/OSMPUtils/voOSPCMBufferImpl;->getBufferSize()I

    move-result v0

    int-to-long v5, v0

    .line 1945
    invoke-virtual {v8}, Lcom/visualon/OSMPUtils/voOSPCMBufferImpl;->getBuffer()[B

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v7, v0

    goto :goto_1

    :catch_2
    move-exception v0

    .line 1948
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-array v0, v13, [Ljava/lang/Object;

    const-string v8, "osmpCallBack, VOOSMP_CB_PCM_OUTPUT arg0 is not Parcel object"

    .line 1949
    invoke-static {v12, v8, v0}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    new-array v0, v13, [Ljava/lang/Object;

    const-string v8, "osmpCallBack, VOOSMP_CB_PCM_OUTPUT ok"

    .line 1952
    invoke-static {v12, v8, v0}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_5
    const/16 v0, 0x34

    if-ne v2, v0, :cond_6

    if-eqz v7, :cond_f

    .line 1959
    :try_start_3
    move-object v0, v7

    check-cast v0, Landroid/os/Parcel;

    .line 1960
    new-instance v8, Lcom/visualon/OSMPPlayerImpl/VOOSMPThumbnailImpl;

    invoke-direct {v8}, Lcom/visualon/OSMPPlayerImpl/VOOSMPThumbnailImpl;-><init>()V

    .line 1961
    invoke-virtual {v8, v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPThumbnailImpl;->parse(Landroid/os/Parcel;)Z

    .line 1962
    invoke-virtual {v8}, Lcom/visualon/OSMPPlayerImpl/VOOSMPThumbnailImpl;->getTimestamp()I

    move-result v0

    int-to-long v3, v0

    .line 1963
    invoke-virtual {v8}, Lcom/visualon/OSMPPlayerImpl/VOOSMPThumbnailImpl;->getDataSize()I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    int-to-long v5, v0

    move-object v7, v8

    goto :goto_2

    :catch_3
    move-exception v0

    .line 1966
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-array v0, v13, [Ljava/lang/Object;

    const-string v8, "osmpCallBack, VOOSMP_CB_THUMBNAILS_REQUEST_UPDATE arg0 is not Parcel object"

    .line 1967
    invoke-static {v12, v8, v0}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    new-array v0, v13, [Ljava/lang/Object;

    const-string v8, "osmpCallBack, VOOSMP_CB_THUMBNAILS_REQUEST_UPDATE ok"

    .line 1970
    invoke-static {v12, v8, v0}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_6
    const/16 v0, 0x40

    if-ne v2, v0, :cond_7

    if-eqz v7, :cond_f

    .line 1977
    :try_start_4
    move-object v0, v7

    check-cast v0, Landroid/os/Parcel;

    .line 1978
    new-instance v8, Lcom/visualon/OSMPPlayerImpl/VOOSMPThumbnailURIImpl;

    invoke-direct {v8, v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPThumbnailURIImpl;-><init>(Landroid/os/Parcel;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-object v7, v8

    goto :goto_3

    :catch_4
    move-exception v0

    .line 1981
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-array v0, v13, [Ljava/lang/Object;

    const-string v8, "osmpCallBack, VOOSMP_CB_THUMBNAILS_REQUEST_URI_UPDATE arg0 is not Parcel object"

    .line 1982
    invoke-static {v12, v8, v0}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    new-array v0, v13, [Ljava/lang/Object;

    const-string v8, "osmpCallBack, VOOSMP_CB_THUMBNAILS_REQUEST_URI_UPDATE ok"

    .line 1985
    invoke-static {v12, v8, v0}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_7
    const/16 v0, 0xf

    if-ne v2, v0, :cond_8

    long-to-int v0, v3

    .line 1990
    iput v0, v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mWidthVideo:I

    long-to-int v8, v5

    .line 1991
    iput v8, v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mHeightVideo:I

    .line 1992
    iget-object v14, v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mVideoViewCtrl:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-virtual {v14, v0, v8}, Lcom/visualon/OSMPUtils/voVideoViewController;->setVideoSize(II)V

    goto/16 :goto_5

    :cond_8
    const v0, 0x500000a

    if-ne v2, v0, :cond_b

    if-eqz v7, :cond_a

    .line 1998
    :try_start_5
    check-cast v7, Landroid/os/Parcel;

    invoke-static {v7}, Lcom/visualon/OSMPUtils/voOSRectImpl;->parse(Landroid/os/Parcel;)Lcom/visualon/OSMPUtils/voOSRectImpl;

    move-result-object v0

    .line 2000
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "Rect is l:%d, r:%d, t:%d, b:%d"

    new-array v3, v8, [Ljava/lang/Object;

    .line 2001
    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSRect;->Left()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v13

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSRect;->Right()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSRect;->Top()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSRect;->Bottom()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v12, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2003
    :cond_9
    iget-object v2, v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mVideoViewCtrl:Lcom/visualon/OSMPUtils/voVideoViewController;

    long-to-int v3, v5

    invoke-virtual {v2, v0, v3}, Lcom/visualon/OSMPUtils/voVideoViewController;->setVideoDestBox(Lcom/visualon/OSMPUtils/voOSRect;I)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_4

    :catch_5
    move-exception v0

    .line 2006
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-array v0, v13, [Ljava/lang/Object;

    const-string v2, "osmpCallBack, VOOSMP_CB_VIDEO_DEST_BOX arg0 is not a Parcel object"

    .line 2007
    invoke-static {v12, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    :goto_4
    return-void

    :cond_b
    const v8, 0x2000020

    if-ne v8, v2, :cond_c

    .line 2013
    iget-object v0, v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mID3Container:Lcom/visualon/OSMPUtils/voID3Container;

    long-to-int v4, v3

    long-to-int v3, v5

    invoke-interface {v0, v2, v4, v3, v7}, Lcom/visualon/OSMPUtils/voID3Container;->onRequest(IIILjava/lang/Object;)I

    return-void

    :cond_c
    const/16 v0, 0x44

    if-ne v2, v0, :cond_d

    .line 2017
    iget-object v0, v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;

    sget-object v2, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_CB_MEDIACODEC_CRYPTOEXCEPTION:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    .line 2019
    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->getValue()I

    move-result v2

    long-to-int v4, v3

    long-to-int v3, v5

    .line 2017
    invoke-virtual {v0, v2, v4, v3, v7}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2020
    iget-object v2, v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;

    invoke-virtual {v2, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_d
    const v0, 0x2000084

    if-ne v2, v0, :cond_e

    .line 2025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VOOSMP_SRC_CB_SERVER_TIMEOFFSET: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v7

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v13, [Ljava/lang/Object;

    invoke-static {v12, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2026
    iget-object v0, v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;

    sget-object v2, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_SERVER_TIMEOFFSET:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    .line 2028
    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->getValue()I

    move-result v2

    long-to-int v4, v3

    long-to-int v3, v5

    .line 2026
    invoke-virtual {v0, v2, v4, v3, v7}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2029
    iget-object v2, v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;

    invoke-virtual {v2, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_e
    const v0, 0x2000086

    if-ne v2, v0, :cond_f

    .line 2034
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eventMsg VOOSMP_SRC_CB_DASH_EVENT_DATA: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v13, [Ljava/lang/Object;

    invoke-static {v12, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2035
    iget-object v0, v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;

    sget-object v2, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_DASH_EVENT_DATA:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    .line 2037
    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->getValue()I

    move-result v2

    long-to-int v4, v3

    long-to-int v3, v5

    .line 2035
    invoke-virtual {v0, v2, v4, v3, v7}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2038
    iget-object v2, v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;

    invoke-virtual {v2, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_f
    :goto_5
    const v8, 0x2000020

    if-ne v2, v8, :cond_11

    .line 2044
    check-cast v7, Lcom/visualon/OSMPUtils/voOSTimedTag;

    if-eqz v7, :cond_10

    .line 2046
    iget-object v0, v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;

    const v2, -0xf0ffffe

    sget-object v3, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;->VO_OSMP_SRC_CUSTOMERTAGID_TIMEDTAG:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;

    .line 2050
    invoke-virtual {v3}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;->getValue()I

    move-result v3

    invoke-interface {v7}, Lcom/visualon/OSMPUtils/voOSTimedTag;->TimeStamp()J

    move-result-wide v4

    long-to-int v5, v4

    .line 2051
    invoke-interface {v7}, Lcom/visualon/OSMPUtils/voOSTimedTag;->Data()[B

    move-result-object v4

    .line 2047
    invoke-static {v0, v2, v3, v5, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2052
    iget-object v2, v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;

    invoke-virtual {v2, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_10
    return-void

    :cond_11
    const v0, 0x3000001

    if-ne v2, v0, :cond_12

    return-void

    :cond_12
    const v0, 0x3000002

    if-ne v2, v0, :cond_13

    .line 2065
    iget-object v0, v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;

    sget-object v2, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_IO_HTTP_START_DOWNLOAD:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    .line 2067
    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->getValue()I

    move-result v2

    long-to-int v4, v3

    long-to-int v3, v5

    .line 2065
    invoke-virtual {v0, v2, v4, v3, v7}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2068
    iget-object v2, v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;

    invoke-virtual {v2, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_13
    const v0, 0x3000003

    if-ne v2, v0, :cond_16

    .line 2078
    instance-of v0, v7, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;

    if-eqz v0, :cond_15

    .line 2079
    check-cast v7, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;

    .line 2080
    invoke-virtual {v7}, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;->getReason()Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;->getValue()I

    move-result v0

    .line 2082
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;

    move-result-object v2

    if-ne v0, v11, :cond_14

    .line 2084
    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;->VO_OSMP_HTTP_CLIENT_ERROR:Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;

    .line 2087
    :cond_14
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPHTTPDownloadFailureImpl;

    .line 2088
    invoke-virtual {v7}, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;->getResponse()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;->getURL()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;->getResponsePayload()[B

    move-result-object v7

    invoke-direct {v0, v2, v8, v9, v7}, Lcom/visualon/OSMPPlayerImpl/VOOSMPHTTPDownloadFailureImpl;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 2089
    iget-object v2, v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;

    sget-object v7, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_IO_HTTP_DOWNLOAD_FAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    .line 2090
    invoke-virtual {v7}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->getValue()I

    move-result v7

    long-to-int v4, v3

    long-to-int v3, v5

    .line 2089
    invoke-virtual {v2, v7, v4, v3, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    goto :goto_6

    .line 2093
    :cond_15
    iget-object v0, v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;

    sget-object v2, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_IO_HTTP_DOWNLOAD_FAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    .line 2094
    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->getValue()I

    move-result v2

    long-to-int v4, v3

    long-to-int v3, v5

    .line 2093
    invoke-virtual {v0, v2, v4, v3, v7}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2099
    :goto_6
    iget-object v2, v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;

    invoke-virtual {v2, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_16
    const v0, 0x3000006

    if-ne v2, v0, :cond_18

    .line 2105
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_17

    new-array v0, v11, [Ljava/lang/Object;

    .line 2106
    sget-object v2, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_IO_HTTP_SSL_VERIFY:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    .line 2107
    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->getValue()I

    move-result v2

    .line 2106
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v13

    long-to-int v2, v3

    .line 2107
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v10

    const-string v2, "VOOSMP_SRC_CB_IO_HTTP_ssl_verify ID:%x error:%d"

    .line 2106
    invoke-static {v12, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2109
    :cond_17
    iget-object v0, v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;

    sget-object v2, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_IO_HTTP_SSL_VERIFY:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    .line 2111
    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->getValue()I

    move-result v2

    long-to-int v4, v3

    long-to-int v3, v5

    .line 2109
    invoke-virtual {v0, v2, v4, v3, v7}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2112
    iget-object v2, v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;

    invoke-virtual {v2, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_18
    const v0, 0x3000004

    if-ne v2, v0, :cond_19

    return-void

    .line 2129
    :cond_19
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_1a

    new-array v0, v9, [Ljava/lang/Object;

    .line 2132
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v13

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v0, v10

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v0, v11

    const-string v8, "osmpCallBack, nID is 0x%X, param1 is 0x%X, param2 is 0x%X,"

    .line 2130
    invoke-static {v12, v8, v0}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2136
    :cond_1a
    iget-object v0, v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;

    long-to-int v4, v3

    long-to-int v3, v5

    invoke-virtual {v0, v2, v4, v3, v7}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2137
    iget-object v2, v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;

    invoke-virtual {v2, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public open(Ljava/lang/String;Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FLAG;Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 9

    .line 1289
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    .line 1290
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_JNI:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1

    .line 1292
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mPlayer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    const/4 v1, 0x0

    const-string v2, "@@@VOCommonPlayerJavaImpl"

    if-nez v0, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "mPlayer cannot be null"

    .line 1293
    invoke-static {v2, p2, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1294
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1

    :cond_1
    if-eqz p1, :cond_c

    if-nez p3, :cond_2

    goto/16 :goto_1

    .line 1299
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_3

    new-array v0, v1, [Ljava/lang/Object;

    const-string v3, "@@@Surface VOCommonPlayerImpl::open surface is inValid -----------"

    .line 1300
    invoke-static {v2, v3, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1302
    :cond_3
    invoke-virtual {p4}, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->getDecoderType()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mCodeType:I

    .line 1303
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mPlayerType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PLAYER_ENGINE;

    sget-object v3, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PLAYER_ENGINE;->VO_OSMP_VOME2_PLAYER:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PLAYER_ENGINE;

    if-ne v0, v3, :cond_4

    .line 1304
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mCodeType:I

    invoke-direct {p0, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setCodeType(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    sget-object v3, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    if-eq v0, v3, :cond_4

    .line 1305
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1

    .line 1309
    :cond_4
    invoke-virtual {p3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->getValue()I

    move-result v6

    .line 1310
    invoke-virtual {p4}, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->getDrmLicenseManager()Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;

    move-result-object p3

    iput-object p3, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mUnifiedDrmLicMgr:Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;

    if-eqz p3, :cond_8

    .line 1312
    instance-of v0, p3, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    const v3, 0x3010004

    if-eqz v0, :cond_6

    .line 1313
    iget-object p3, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mLibPath:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->newLicenseManager(Landroid/content/Context;Ljava/lang/String;)Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    move-result-object p3

    iput-object p3, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mUnifiedDrmLicMgr:Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;

    if-eqz p3, :cond_5

    .line 1315
    check-cast p3, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mPlayer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    invoke-virtual {p3, v0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->setPlayer(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;)V

    .line 1316
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DRM license manager enable persistentDrmLcs: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEnablePersistentDrmLcs:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, p3, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1317
    iget-object p3, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mUnifiedDrmLicMgr:Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;

    check-cast p3, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    iget-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEnablePersistentDrmLcs:Z

    invoke-virtual {p3, v0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->enablePersistentLcs(Z)V

    .line 1319
    iget-object p3, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mUnifiedDrmLicMgr:Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;

    check-cast p3, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    invoke-virtual {p3}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->open()V

    .line 1320
    iget-object p3, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mUnifiedDrmLicMgr:Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;

    check-cast p3, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEventListener:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

    iget-object v4, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;

    invoke-virtual {p3, v0, v4}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->setOnEventListener(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;Landroid/os/Handler;)V

    .line 1321
    iget-object p3, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mUnifiedDrmLicMgr:Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;

    invoke-interface {p3}, Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;->getContext()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p0, v3, p3}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setParameter(ILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_0

    :cond_5
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "DRM license manager initialize failed"

    .line 1323
    invoke-static {v2, p2, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1324
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1

    .line 1328
    :cond_6
    invoke-interface {p3}, Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;->getVenderID()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mUnifiedDrmLicMgr:Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;

    .line 1329
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;->getPreference()Ljava/util/LinkedList;

    move-result-object v0

    const-string v4, "DRM_TYPE"

    .line 1328
    invoke-static {p3, v4, v0}, Lcom/visualon/OSMPUtils/voDRMHelper;->getDRMData(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedList;)Lorg/json/JSONObject;

    move-result-object p3

    if-eqz p3, :cond_7

    const v0, 0x3010006

    .line 1331
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, v0, p3}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setParameter(ILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 1333
    :cond_7
    iget-object p3, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mUnifiedDrmLicMgr:Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;

    invoke-interface {p3}, Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;->getContext()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p0, v3, p3}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setParameter(ILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 1340
    :cond_8
    :goto_0
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xe

    if-lt p3, v0, :cond_a

    iget-object p3, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mView:Landroid/view/View;

    instance-of p3, p3, Landroid/view/TextureView;

    if-eqz p3, :cond_a

    .line 1341
    iget-object p3, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mSurface:Landroid/view/Surface;

    if-eqz p3, :cond_9

    .line 1342
    invoke-virtual {p3}, Landroid/view/Surface;->release()V

    .line 1343
    :cond_9
    iget-object p3, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mView:Landroid/view/View;

    check-cast p3, Landroid/view/TextureView;

    invoke-virtual {p3}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p3

    .line 1344
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mSurface:Landroid/view/Surface;

    .line 1347
    :cond_a
    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    .line 1348
    invoke-virtual {p2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FLAG;->getValue()I

    move-result p2

    or-int/lit8 v5, p2, 0x1

    iget-object v8, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mSurface:Landroid/view/Surface;

    move-object v4, p1

    move-object v7, p4

    .line 1347
    invoke-virtual/range {v3 .. v8}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeOpen(Ljava/lang/String;IILjava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    .line 1352
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 1353
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "VOCommonPlayerImpl open, return "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1354
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Object;

    .line 1353
    invoke-static {v2, p2, p3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1357
    :cond_b
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1

    .line 1297
    :cond_c
    :goto_1
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_PARAMID:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method

.method public pause()I
    .locals 1

    .line 1440
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAudioRender:Lcom/visualon/OSMPRender/voAudioRender;

    if-eqz v0, :cond_0

    .line 1441
    invoke-virtual {v0}, Lcom/visualon/OSMPRender/voAudioRender;->pause()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public prepare(Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 5

    .line 1362
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 1364
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mUnifiedDrmLicMgr:Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;

    if-eqz v1, :cond_1

    .line 1365
    instance-of v2, v1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    const/4 v3, 0x0

    const-string v4, "@@@VOCommonPlayerJavaImpl"

    if-eqz v2, :cond_0

    .line 1366
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->getDrmLicenseManager()Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;

    move-result-object p1

    if-eq v1, p1, :cond_1

    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "Currently doesn\'t support switching DRM type when prepare function."

    .line 1367
    invoke-static {v4, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1368
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1

    :cond_0
    new-array p1, v3, [Ljava/lang/Object;

    const-string v1, "Reuse DRM information."

    .line 1371
    invoke-static {v4, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public refreshSubtitle()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public resetAudioRender()V
    .locals 3

    .line 1494
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAudioRender:Lcom/visualon/OSMPRender/voAudioRender;

    if-eqz v0, :cond_0

    .line 1495
    invoke-virtual {v0}, Lcom/visualon/OSMPRender/voAudioRender;->flush()V

    .line 1496
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAudioRender:Lcom/visualon/OSMPRender/voAudioRender;

    sget-object v1, Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;->SEEK:Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPRender/voAudioRender;->notifyReconfigAudioTrack(Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;)V

    .line 1498
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAudioRenderListener:Lcom/visualon/OSMPPlayer/VOOSMPAudioRenderListener;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEnableAudioRenderExport:Z

    if-eqz v1, :cond_1

    .line 1500
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAudioRenderListener;->flush()V

    .line 1503
    :cond_1
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOCommonPlayerJavaImpl"

    const-string v2, "resetAudioRender"

    .line 1504
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public resetID3()V
    .locals 1

    .line 1277
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mID3Container:Lcom/visualon/OSMPUtils/voID3Container;

    if-eqz v0, :cond_0

    .line 1278
    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voID3Container;->reset()V

    :cond_0
    return-void
.end method

.method public resetSubtitleParameter()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .line 2743
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mSubtitleRender:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    invoke-virtual {v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->reset()V

    .line 2744
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method

.method public resume(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_RESUME_MODE;J)I
    .locals 0

    .line 2445
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result p1

    return p1
.end method

.method public resume(Ljava/lang/Object;)I
    .locals 4

    .line 2426
    instance-of v0, p1, Landroid/view/SurfaceView;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/view/Surface;

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_0

    instance-of v0, p1, Landroid/view/TextureView;

    if-nez v0, :cond_1

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "@@@VOCommonPlayerJavaImpl"

    const-string v1, "parameter should be SurfaceView or Surface"

    .line 2427
    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2428
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_ARGUMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result p1

    return p1

    .line 2430
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mPlayer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    if-nez v0, :cond_2

    .line 2431
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result p1

    return p1

    .line 2432
    :cond_2
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_3

    .line 2433
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setView(Landroid/view/View;)I

    goto :goto_0

    .line 2434
    :cond_3
    instance-of v0, p1, Landroid/view/Surface;

    if-eqz v0, :cond_4

    .line 2435
    move-object v0, p1

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setSurface(Landroid/view/Surface;)I

    .line 2438
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mVideoViewCtrl:Lcom/visualon/OSMPUtils/voVideoViewController;

    const-wide/16 v2, 0x3b

    invoke-virtual {v0, v2, v3, p1}, Lcom/visualon/OSMPUtils/voVideoViewController;->SetParam(JLjava/lang/Object;)I

    .line 2439
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeResume()I

    return v1
.end method

.method public seek(I)I
    .locals 3

    .line 1509
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mPlayer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    if-nez v0, :cond_0

    .line 1510
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result p1

    return p1

    .line 1517
    :cond_0
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->resetAudioRender()V

    .line 1519
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1520
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "@@@VOCommonPlayerJavaImpl"

    const-string v2, "seek :%d "

    invoke-static {p1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1523
    :cond_1
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->resetID3()V

    return v1
.end method

.method public setAnalyticsExportListener(Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsExportListener;)I
    .locals 1

    .line 2629
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    .line 2630
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_JNI:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result p1

    return p1

    .line 2632
    :cond_0
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAnalyticsExportListener:Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsExportListener;

    .line 2633
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeEnableAnalyticsExportEvent()I

    move-result p1

    return p1
.end method

.method public setAnalyticsVoExportListener(Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsExportListener;)I
    .locals 1

    .line 2652
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    .line 2653
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_JNI:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result p1

    return p1

    .line 2655
    :cond_0
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAnalyticsVoExportListener:Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsExportListener;

    .line 2656
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeEnableAnalyticsVoExportEvent()I

    move-result p1

    return p1
.end method

.method public setAudioRenderListener(Lcom/visualon/OSMPPlayer/VOOSMPAudioRenderListener;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .line 2644
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    .line 2645
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_JNI:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1

    .line 2647
    :cond_0
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAudioRenderListener:Lcom/visualon/OSMPPlayer/VOOSMPAudioRenderListener;

    .line 2648
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method

.method public setColorType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setDRMAdapter(Ljava/lang/Object;Z)I
    .locals 4

    const v0, 0x300001f

    if-eqz p2, :cond_3

    .line 2343
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mDRMWrap:Lcom/visualon/OSMPUtils/voOSMPDRM;

    const/4 v1, 0x0

    const-string v2, "@@@VOCommonPlayerJavaImpl"

    if-nez p2, :cond_2

    new-array p2, v1, [Ljava/lang/Object;

    const-string v3, "Initlize DRM Wrap setDRMAdapter "

    .line 2344
    invoke-static {v2, v3, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2345
    new-instance p2, Lcom/visualon/OSMPUtils/voOSMPDRM;

    invoke-direct {p2}, Lcom/visualon/OSMPUtils/voOSMPDRM;-><init>()V

    iput-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mDRMWrap:Lcom/visualon/OSMPUtils/voOSMPDRM;

    .line 2351
    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mLibPath:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, v3, p1}, Lcom/visualon/OSMPUtils/voOSMPDRM;->creatDRM(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 2352
    sget-object p2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {p2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result p2

    if-eq p1, p2, :cond_0

    return p1

    :cond_0
    const/4 p1, 0x1

    .line 2355
    iput-boolean p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->m_bCreateDRMSuccess:Z

    .line 2357
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p2

    if-eqz p2, :cond_1

    new-array p1, p1, [Ljava/lang/Object;

    .line 2358
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mDRMWrap:Lcom/visualon/OSMPUtils/voOSMPDRM;

    .line 2359
    invoke-virtual {p2}, Lcom/visualon/OSMPUtils/voOSMPDRM;->getmDrmHandle()Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "Initlize DRM Wrap setDRMAdapter , handle is %d"

    .line 2358
    invoke-static {v2, p2, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2361
    :cond_1
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mDRMWrap:Lcom/visualon/OSMPUtils/voOSMPDRM;

    .line 2362
    invoke-virtual {p1}, Lcom/visualon/OSMPUtils/voOSMPDRM;->getmDrmHandle()Ljava/lang/Long;

    move-result-object p1

    .line 2361
    invoke-virtual {p0, v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setParameter(ILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    .line 2363
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result p1

    return p1

    :cond_2
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "ERROR! Call setDRMAdapter twice."

    .line 2347
    invoke-static {v2, p2, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2348
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNKNOWN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result p1

    return p1

    .line 2365
    :cond_3
    invoke-virtual {p0, v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setParameter(ILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    .line 2366
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result p1

    return p1
.end method

.method public setDRMInitData(Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;)I
    .locals 6

    .line 2370
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_PARAMID:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v0

    .line 2371
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;->getThirdPartyFunctionSet()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const v0, 0x3000006

    .line 2375
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 2373
    invoke-virtual {p0, v0, v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setParameter(ILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    .line 2375
    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v0

    .line 2377
    :cond_0
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;->getDRMInitData()[B

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2378
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;->getDRMInitDataHandle()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    goto :goto_0

    .line 2381
    :cond_1
    new-instance v0, Lcom/visualon/OSMPUtils/voOSDRMInit;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;->getDRMInitDataHandle()J

    move-result-wide v1

    .line 2382
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;->getDRMInitData()[B

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/visualon/OSMPUtils/voOSDRMInit;-><init>(J[B)V

    const p1, 0x3000023

    .line 2383
    invoke-virtual {p0, p1, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setParameter(ILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    .line 2384
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public setDefaultAudioLanguage(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2389
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setPreferredAudioLanguage([Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setDefaultSubtitleLanguage(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2393
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setPreferredSubtitleLanguage([Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setLowBacklightEnhanceLevel([F)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 2735
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mView:Landroid/view/View;

    instance-of v1, v0, Lcom/visualon/OSMPUtils/voGLSurfaceView;

    if-eqz v1, :cond_0

    .line 2736
    check-cast v0, Lcom/visualon/OSMPUtils/voGLSurfaceView;

    iget-object v0, v0, Lcom/visualon/OSMPUtils/voGLSurfaceView;->mRenderer:Lcom/visualon/OSMPRender/EPlayerRenderer;

    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPRender/EPlayerRenderer;->setEnhancementLevel(F)V

    .line 2738
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    .line 2739
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetLowBacklightEnhanceLevel([F)I

    move-result p1

    .line 2738
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1
.end method

.method public setOnEventListener(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 1540
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEventListener:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "@@@VOCommonPlayerJavaImpl"

    const-string v1, "VOCommonPlayerImpl setOnEventListener "

    .line 1541
    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1542
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method

.method public setParameter(ILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 800
    sget-boolean v3, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v3, :cond_0

    .line 801
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_JNI:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v1

    :cond_0
    const/16 v5, 0x1a

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v1, v5, :cond_29

    const v11, 0x300000d

    if-ne v1, v11, :cond_1

    goto/16 :goto_5

    :cond_1
    const v12, 0x300001a

    if-ne v1, v12, :cond_2

    new-array v3, v8, [Ljava/lang/String;

    .line 819
    check-cast v2, Lcom/visualon/OSMPUtils/voOSHTTPHeader;

    .line 820
    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSHTTPHeader;->getHeaderName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    .line 821
    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSHTTPHeader;->getHeaderValue()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v9

    .line 822
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5, v3}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetParam(JLjava/lang/Object;)I

    move-result v1

    .line 823
    invoke-static {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v1

    return-object v1

    :cond_2
    const-string v13, "SetParam VOOSMP_SRC_PID_RTSP_CONNECTION_PORT, audio is %d video is %d "

    const v14, 0x300001b

    const-string v15, "@@@VOCommonPlayerJavaImpl"

    if-ne v1, v14, :cond_4

    new-array v3, v8, [I

    .line 828
    check-cast v2, Lcom/visualon/OSMPUtils/voOSConnectPortInfoImpl;

    .line 829
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v4

    if-eqz v4, :cond_3

    new-array v4, v8, [Ljava/lang/Object;

    .line 832
    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSConnectPortInfoImpl;->AudioConnectPort()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSConnectPortInfoImpl;->VideoConnectPort()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    .line 830
    invoke-static {v15, v13, v4}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 834
    :cond_3
    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSConnectPortInfoImpl;->AudioConnectPort()I

    move-result v4

    aput v4, v3, v10

    .line 835
    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSConnectPortInfoImpl;->VideoConnectPort()I

    move-result v2

    aput v2, v3, v9

    .line 836
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5, v3}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetParam(JLjava/lang/Object;)I

    move-result v1

    .line 837
    invoke-static {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v1

    return-object v1

    :cond_4
    const v3, 0x3000026

    if-ne v1, v3, :cond_5

    new-array v3, v8, [I

    .line 842
    check-cast v2, Lcom/visualon/OSMPUtils/voOSSrcBAThreshold;

    .line 843
    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSSrcBAThreshold;->getUpper()I

    move-result v4

    aput v4, v3, v10

    .line 844
    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSSrcBAThreshold;->getLower()I

    move-result v2

    aput v2, v3, v9

    .line 845
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5, v3}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetParam(JLjava/lang/Object;)I

    move-result v1

    .line 846
    invoke-static {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v1

    return-object v1

    :cond_5
    const v4, 0x3000036

    if-ne v1, v4, :cond_8

    .line 850
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_6

    .line 851
    iget-object v3, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    int-to-long v4, v1

    move-object v1, v2

    check-cast v1, Ljava/lang/Integer;

    .line 852
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 851
    invoke-virtual {v3, v4, v5, v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetParam(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v1

    return-object v1

    .line 853
    :cond_6
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_7

    .line 854
    iget-object v3, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5, v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetParam(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v1

    return-object v1

    :cond_7
    const/4 v1, -0x1

    .line 857
    invoke-static {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v1

    return-object v1

    :cond_8
    if-eq v1, v5, :cond_28

    if-ne v1, v11, :cond_9

    goto/16 :goto_4

    :cond_9
    if-ne v1, v12, :cond_a

    new-array v3, v8, [Ljava/lang/String;

    .line 875
    check-cast v2, Lcom/visualon/OSMPUtils/voOSHTTPHeader;

    .line 876
    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSHTTPHeader;->getHeaderName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    .line 877
    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSHTTPHeader;->getHeaderValue()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v9

    .line 878
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5, v3}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetParam(JLjava/lang/Object;)I

    move-result v1

    .line 879
    invoke-static {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v1

    return-object v1

    :cond_a
    if-ne v1, v14, :cond_c

    new-array v3, v8, [I

    .line 884
    check-cast v2, Lcom/visualon/OSMPUtils/voOSConnectPortInfoImpl;

    .line 885
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v4

    if-eqz v4, :cond_b

    new-array v4, v8, [Ljava/lang/Object;

    .line 888
    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSConnectPortInfoImpl;->AudioConnectPort()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSConnectPortInfoImpl;->VideoConnectPort()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    .line 886
    invoke-static {v15, v13, v4}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 890
    :cond_b
    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSConnectPortInfoImpl;->AudioConnectPort()I

    move-result v4

    aput v4, v3, v10

    .line 891
    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSConnectPortInfoImpl;->VideoConnectPort()I

    move-result v2

    aput v2, v3, v9

    .line 892
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5, v3}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetParam(JLjava/lang/Object;)I

    move-result v1

    .line 893
    invoke-static {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v1

    return-object v1

    :cond_c
    if-ne v1, v3, :cond_d

    new-array v3, v8, [I

    .line 898
    check-cast v2, Lcom/visualon/OSMPUtils/voOSSrcBAThreshold;

    .line 899
    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSSrcBAThreshold;->getUpper()I

    move-result v4

    aput v4, v3, v10

    .line 900
    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSSrcBAThreshold;->getLower()I

    move-result v2

    aput v2, v3, v9

    .line 901
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5, v3}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetParam(JLjava/lang/Object;)I

    move-result v1

    .line 902
    invoke-static {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v1

    return-object v1

    :cond_d
    const/16 v3, 0xf

    const/4 v4, 0x0

    const/16 v5, 0x3a

    if-eq v1, v3, :cond_26

    const/16 v3, 0x2902

    if-eq v1, v3, :cond_26

    const/16 v3, 0x1027

    if-eq v1, v3, :cond_26

    if-ne v1, v5, :cond_e

    goto/16 :goto_3

    :cond_e
    const/16 v3, 0x45

    if-ne v1, v3, :cond_13

    .line 920
    instance-of v3, v2, Landroid/view/SurfaceView;

    if-nez v3, :cond_f

    .line 921
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_ARGUMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v1

    .line 923
    :cond_f
    check-cast v2, Landroid/view/SurfaceView;

    iput-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mView:Landroid/view/View;

    .line 924
    check-cast v2, Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    iput-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v2, :cond_10

    .line 926
    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    iput-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mSurface:Landroid/view/Surface;

    goto :goto_0

    .line 928
    :cond_10
    iput-object v4, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mSurface:Landroid/view/Surface;

    .line 929
    :goto_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 930
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set VOOSMP_PID_IOMX_PROBE suface is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , mSurface is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v15, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 935
    :cond_11
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    int-to-long v3, v1

    iget-object v1, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, v3, v4, v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetParam(JLjava/lang/Object;)I

    move-result v1

    .line 936
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v2

    if-eqz v2, :cond_12

    new-array v2, v9, [Ljava/lang/Object;

    .line 937
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    const-string v3, "set VOOSMP_PID_IOMX_PROBE result is %d "

    invoke-static {v15, v3, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 939
    :cond_12
    invoke-static {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v1

    return-object v1

    :cond_13
    const/16 v3, 0x35

    if-ne v1, v3, :cond_15

    if-nez v2, :cond_14

    new-array v1, v10, [Ljava/lang/Object;

    const-string v2, "Param data is NULL!"

    .line 942
    invoke-static {v15, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 943
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNKNOWN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v1

    :cond_14
    const/16 v3, 0x1e

    new-array v3, v3, [I

    .line 947
    check-cast v2, Lcom/visualon/OSMPUtils/voOSVideoPerformance;

    .line 949
    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSVideoPerformance;->LastTime()I

    move-result v4

    aput v4, v3, v10

    const/4 v4, 0x6

    .line 950
    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSVideoPerformance;->SourceTimeNum()I

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x7

    .line 951
    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSVideoPerformance;->CodecTimeNum()I

    move-result v5

    aput v5, v3, v4

    const/16 v4, 0x8

    .line 952
    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSVideoPerformance;->RenderTimeNum()I

    move-result v5

    aput v5, v3, v4

    const/16 v4, 0x9

    .line 953
    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSVideoPerformance;->JitterNum()I

    move-result v5

    aput v5, v3, v4

    const/16 v4, 0xc

    .line 954
    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSVideoPerformance;->CPULoad()I

    move-result v2

    aput v2, v3, v4

    .line 956
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5, v3}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetParam(JLjava/lang/Object;)I

    move-result v1

    .line 957
    invoke-static {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v1

    return-object v1

    :cond_15
    const/16 v3, 0x102a

    if-ne v1, v3, :cond_16

    goto/16 :goto_2

    :cond_16
    const/16 v3, 0x5c

    if-ne v1, v3, :cond_17

    new-array v3, v6, [I

    .line 961
    check-cast v2, Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;

    .line 962
    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;->getSampleRate()I

    move-result v4

    aput v4, v3, v10

    .line 963
    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;->getChannels()I

    move-result v4

    aput v4, v3, v9

    .line 964
    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;->getSampleBits()I

    move-result v4

    aput v4, v3, v8

    .line 965
    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;->getBufferSize()I

    move-result v2

    aput v2, v3, v7

    .line 966
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5, v3}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetParam(JLjava/lang/Object;)I

    move-result v1

    .line 967
    invoke-static {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v1

    return-object v1

    :cond_17
    const/16 v3, 0x66

    if-ne v1, v3, :cond_18

    new-array v3, v10, [Ljava/lang/Object;

    const-string v4, "VOOSMP_PID_SECOND_SURFACE"

    .line 969
    invoke-static {v15, v4, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 970
    iget-object v3, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5, v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetParam(JLjava/lang/Object;)I

    move-result v1

    .line 971
    invoke-static {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v1

    return-object v1

    :cond_18
    const/16 v3, 0x67

    if-ne v1, v3, :cond_1a

    .line 973
    check-cast v2, Lcom/visualon/OSMPUtils/voOSLoadAudioCodec;

    new-array v3, v8, [I

    .line 975
    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSLoadAudioCodec;->getCodec()Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->getValue()I

    move-result v4

    aput v4, v3, v10

    .line 976
    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSLoadAudioCodec;->isEnable()Z

    move-result v4

    aput v4, v3, v9

    .line 977
    iget-object v4, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    int-to-long v5, v1

    invoke-virtual {v4, v5, v6, v3}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetParam(JLjava/lang/Object;)I

    move-result v1

    .line 978
    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSLoadAudioCodec;->getCodec()Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    move-result-object v2

    sget-object v4, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingDOLBY:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    if-ne v2, v4, :cond_19

    .line 979
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    const-wide/16 v4, 0x27

    aget v3, v3, v9

    .line 980
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 979
    invoke-virtual {v2, v4, v5, v3}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetParam(JLjava/lang/Object;)I

    .line 982
    :cond_19
    invoke-static {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v1

    return-object v1

    :cond_1a
    const/16 v3, 0x60

    if-ne v1, v3, :cond_1c

    .line 984
    iget-object v3, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5, v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetParam(JLjava/lang/Object;)I

    move-result v1

    .line 985
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mOutputControlServer:Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;

    if-eqz v2, :cond_1b

    .line 986
    invoke-virtual {v2}, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;->startDisplayListener()V

    .line 988
    :cond_1b
    invoke-static {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v1

    return-object v1

    :cond_1c
    const/high16 v3, 0x200000

    .line 989
    sget-object v4, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingAC3:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    .line 990
    invoke-virtual {v4}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->ordinal()I

    move-result v4

    or-int/2addr v3, v4

    if-ne v1, v3, :cond_1d

    .line 991
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    const-string v4, "NULL"

    .line 992
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    new-array v3, v10, [Ljava/lang/Object;

    const-string v4, "[RECONFIG] notifyReconfigAudioTrack"

    .line 994
    invoke-static {v15, v4, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1d
    const v3, 0x1000a

    if-ne v1, v3, :cond_1e

    .line 997
    move-object v3, v2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 998
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_25

    .line 999
    iget-object v4, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mVSyncHelper:Lcom/visualon/OSMPRender/voVSyncHelper;

    if-eqz v4, :cond_25

    if-ltz v3, :cond_25

    if-gt v3, v7, :cond_25

    .line 1001
    invoke-virtual {v4, v3}, Lcom/visualon/OSMPRender/voVSyncHelper;->setVSyncScheme(I)V

    goto/16 :goto_2

    :cond_1e
    const v3, -0x7fffffeb

    if-ne v1, v3, :cond_21

    .line 1005
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1f

    const-string v2, "force_pure_video"

    .line 1006
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1007
    iput-boolean v9, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->m_bForcePureVideo:Z

    .line 1008
    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnAudioRenderFailed force_pure_video : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->m_bForcePureVideo:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v15, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1009
    iget-object v1, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAudioRender:Lcom/visualon/OSMPRender/voAudioRender;

    if-eqz v1, :cond_20

    .line 1010
    iget-boolean v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->m_bForcePureVideo:Z

    invoke-virtual {v1, v2}, Lcom/visualon/OSMPRender/voAudioRender;->setForcePureVideo(Z)V

    .line 1012
    :cond_20
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v1

    :cond_21
    const v3, 0x301000a

    if-ne v1, v3, :cond_22

    new-array v3, v8, [I

    .line 1015
    check-cast v2, Landroid/graphics/Point;

    iget v4, v2, Landroid/graphics/Point;->x:I

    aput v4, v3, v10

    .line 1016
    iget v2, v2, Landroid/graphics/Point;->y:I

    aput v2, v3, v9

    .line 1017
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5, v3}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetParam(JLjava/lang/Object;)I

    move-result v1

    .line 1018
    invoke-static {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v1

    return-object v1

    :cond_22
    const/16 v3, 0x124

    if-ne v1, v3, :cond_25

    if-eqz v2, :cond_24

    .line 1022
    iget-object v1, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mUnifyDecoderManager:Lcom/visualon/OSMPUtils/voUnifyDecoderManager;

    sget-object v3, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;->VARSKEY_DISABLE_FORCE_OPENGL:Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v9, :cond_23

    goto :goto_1

    :cond_23
    const/4 v9, 0x0

    :goto_1
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->setParam(Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;Ljava/lang/Object;)I

    move-result v10

    .line 1024
    :cond_24
    invoke-static {v10}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v1

    return-object v1

    .line 1027
    :cond_25
    :goto_2
    iget-object v3, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5, v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetParam(JLjava/lang/Object;)I

    move-result v1

    .line 1028
    invoke-static {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v1

    return-object v1

    :cond_26
    :goto_3
    if-ne v1, v5, :cond_27

    .line 912
    iget-object v3, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mSubtitleRender:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    if-eqz v3, :cond_27

    .line 913
    invoke-virtual {v3, v4}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->setSurfaceView(Landroid/view/View;)V

    .line 917
    :cond_27
    iget-object v3, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mVideoViewCtrl:Lcom/visualon/OSMPUtils/voVideoViewController;

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5, v2}, Lcom/visualon/OSMPUtils/voVideoViewController;->SetParam(JLjava/lang/Object;)I

    .line 918
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v1

    :cond_28
    :goto_4
    const/16 v3, 0xa

    new-array v3, v3, [I

    .line 862
    check-cast v2, Lcom/visualon/OSMPUtils/voOSPerformanceData;

    .line 863
    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSPerformanceData;->CodecType()I

    move-result v4

    aput v4, v3, v10

    .line 864
    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSPerformanceData;->BitRate()I

    move-result v4

    aput v4, v3, v9

    .line 865
    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSPerformanceData;->VideoWidth()I

    move-result v4

    aput v4, v3, v8

    .line 866
    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSPerformanceData;->VideoHeight()I

    move-result v4

    aput v4, v3, v7

    .line 867
    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSPerformanceData;->ProfileLevel()I

    move-result v4

    aput v4, v3, v6

    .line 868
    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSPerformanceData;->FPS()I

    move-result v2

    const/4 v4, 0x5

    aput v2, v3, v4

    .line 869
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5, v3}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetParam(JLjava/lang/Object;)I

    move-result v1

    .line 870
    invoke-static {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v1

    return-object v1

    :cond_29
    :goto_5
    const/16 v3, 0xa

    new-array v3, v3, [I

    .line 806
    check-cast v2, Lcom/visualon/OSMPUtils/voOSPerformanceData;

    .line 807
    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSPerformanceData;->CodecType()I

    move-result v4

    aput v4, v3, v10

    .line 808
    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSPerformanceData;->BitRate()I

    move-result v4

    aput v4, v3, v9

    .line 809
    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSPerformanceData;->VideoWidth()I

    move-result v4

    aput v4, v3, v8

    .line 810
    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSPerformanceData;->VideoHeight()I

    move-result v4

    aput v4, v3, v7

    .line 811
    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSPerformanceData;->ProfileLevel()I

    move-result v4

    aput v4, v3, v6

    .line 812
    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSPerformanceData;->FPS()I

    move-result v2

    const/4 v4, 0x5

    aput v2, v3, v4

    .line 813
    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5, v3}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetParam(JLjava/lang/Object;)I

    move-result v1

    .line 814
    invoke-static {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v1

    return-object v1
.end method

.method public setPreferredAudioLanguage([Ljava/lang/String;)I
    .locals 1

    const v0, 0x3000031

    .line 2397
    invoke-virtual {p0, v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setParameter(ILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    .line 2398
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result p1

    return p1
.end method

.method public setPreferredSubtitleLanguage([Ljava/lang/String;)I
    .locals 1

    const v0, 0x3000032

    .line 2402
    invoke-virtual {p0, v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setParameter(ILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    .line 2404
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result p1

    return p1
.end method

.method public setRenderType(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 1555
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VOCommonPlayerImpl setRenderType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "@@@VOCommonPlayerJavaImpl"

    invoke-static {v2, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1558
    :cond_0
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->m_RenderType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    .line 1559
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mUnifyDecoderManager:Lcom/visualon/OSMPUtils/voUnifyDecoderManager;

    sget-object v1, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;->VARSKEY_RENDER_TYPE:Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->setParam(Lcom/visualon/OSMPUtils/voUnifyDecoderManager$VARSKEY;Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1
.end method

.method public setScreenBrightness(I)I
    .locals 6

    .line 2312
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    check-cast v0, Landroid/app/Activity;

    .line 2313
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 2314
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    int-to-double v2, p1

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    mul-double v2, v2, v4

    double-to-float p1, v2

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    const p1, 0x3dcccccd    # 0.1f

    .line 2319
    :cond_0
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 2321
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 p1, 0x0

    return p1
.end method

.method public setScreenBrightnessMode(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SCREEN_BRIGHTNESS_MODE;)I
    .locals 3

    .line 2291
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->isFroyoOrAbove()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2292
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result p1

    return p1

    .line 2296
    :cond_0
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SCREEN_BRIGHTNESS_MODE;->VO_OSMP_SCREEN_BRIGHTNESS_MODE_MANUAL:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SCREEN_BRIGHTNESS_MODE;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 2297
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SCREEN_BRIGHTNESS_MODE;->getValue()I

    move-result p1

    goto :goto_0

    .line 2298
    :cond_1
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SCREEN_BRIGHTNESS_MODE;->VO_OSMP_SCREEN_BRIGHTNESS_MODE_AUTOMATIC:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SCREEN_BRIGHTNESS_MODE;

    if-ne p1, v0, :cond_2

    .line 2299
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SCREEN_BRIGHTNESS_MODE;->getValue()I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 2302
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "screen_brightness_mode"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    const p1, -0x7ffffff2

    return p1
.end method

.method public setSmoothBAWhiteListFile(Ljava/lang/String;)I
    .locals 1

    .line 1631
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mUnifyDecoderManager:Lcom/visualon/OSMPUtils/voUnifyDecoderManager;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPUtils/voUnifyDecoderManager;->setSmoothBAWhiteListFile(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setSphericalVideoView(FFF)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .line 1673
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mVideoViewCtrl:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/visualon/OSMPUtils/voVideoViewController;->setSphericalVideoView(FFF)I

    move-result p1

    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1
.end method

.method public setSphericalVideoView(Lcom/visualon/OSMPPlayer/VOOSMPSphericalVideoView;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .line 1677
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mVideoViewCtrl:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPUtils/voVideoViewController;->setSphericalVideoView(Lcom/visualon/OSMPSensor/voSphericalVideoView;)I

    move-result p1

    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1
.end method

.method public setSubtitleTrim(Ljava/lang/String;)I
    .locals 1

    .line 2412
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mSubtitleRender:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    if-eqz v0, :cond_0

    .line 2413
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->setSubtitleTrim(Ljava/lang/String;)V

    .line 2415
    :cond_0
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result p1

    return p1
.end method

.method public setSubtitleTypeface(Landroid/graphics/Typeface;)I
    .locals 1

    .line 2418
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mSubtitleRender:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    if-eqz v0, :cond_0

    .line 2419
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2421
    :cond_0
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result p1

    return p1
.end method

.method public setSurface(Landroid/view/Surface;)I
    .locals 4

    .line 2449
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    .line 2450
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_JNI:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    const-string v1, "@@@VOCommonPlayerJavaImpl"

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 2452
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-nez v3, :cond_1

    new-array p1, v0, [Ljava/lang/Object;

    const-string v3, "@@@Surface voOnStreamSDK::SetSurface surface is inValid"

    .line 2453
    invoke-static {v1, v3, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p1, v2

    .line 2458
    :cond_1
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mSurface:Landroid/view/Surface;

    .line 2459
    iput-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mView:Landroid/view/View;

    .line 2460
    iput-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 2461
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2462
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@@setDisplay surface is "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2464
    :cond_2
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetView(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public setSurfaceChangeFinished()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 4

    .line 1534
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mVideoViewCtrl:Lcom/visualon/OSMPUtils/voVideoViewController;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-wide/16 v2, 0x1027

    invoke-virtual {v0, v2, v3, v1}, Lcom/visualon/OSMPUtils/voVideoViewController;->SetParam(JLjava/lang/Object;)I

    .line 1535
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method

.method public setVideoAspectRatio(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ASPECT_RATIO;)I
    .locals 1

    .line 2286
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ASPECT_RATIO;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0x30

    invoke-virtual {p0, v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setParameter(ILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 2287
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result p1

    return p1
.end method

.method public setView(Landroid/view/View;)I
    .locals 6

    .line 1162
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    .line 1163
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_JNI:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    const-string v1, "@@@VOCommonPlayerJavaImpl"

    const/16 v2, 0xe

    if-eqz p1, :cond_4

    .line 1167
    instance-of v3, p1, Landroid/view/SurfaceView;

    .line 1170
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v5, 0x1

    if-lt v4, v2, :cond_2

    .line 1171
    instance-of v4, p1, Landroid/view/TextureView;

    if-eqz v4, :cond_1

    :goto_0
    const/4 v3, 0x1

    goto :goto_1

    .line 1173
    :cond_1
    instance-of v4, p1, Lcom/visualon/OSMPUtils/voGLSurfaceView;

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v3, :cond_3

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "SetView parameter should be SurfaceView or TextureView or voSurfaceView or voTextureView."

    .line 1179
    invoke-static {v1, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1181
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_PARAMID:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result p1

    return p1

    .line 1184
    :cond_3
    invoke-virtual {p0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->limitBAbyViewSize(Landroid/view/View;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 1187
    :cond_4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_5

    instance-of v2, p1, Landroid/view/TextureView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mView:Landroid/view/View;

    if-ne p1, v2, :cond_5

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "No need to set TextureView again."

    .line 1188
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 1190
    :cond_5
    invoke-direct {p0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setViewInSubThread(Landroid/view/View;)V

    .line 1192
    :goto_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_6

    .line 1193
    invoke-direct {p0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setViewInMainThread(Landroid/view/View;)V

    goto :goto_3

    .line 1195
    :cond_6
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;

    const v1, -0xf0ffff7

    invoke-virtual {v0, v1, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1197
    :goto_3
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result p1

    return p1
.end method

.method public setViewSize(II)I
    .locals 1

    .line 1283
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mVideoViewCtrl:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-virtual {v0, p1, p2}, Lcom/visualon/OSMPUtils/voVideoViewController;->setViewSize(II)V

    .line 1284
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result p1

    return p1
.end method

.method public setVolume(FF)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .line 1529
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAudioRender:Lcom/visualon/OSMPRender/voAudioRender;

    invoke-virtual {v0, p1, p2}, Lcom/visualon/OSMPRender/voAudioRender;->arsetVolume(FF)V

    .line 1530
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method

.method public setZoomMode(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;Landroid/graphics/Rect;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 7

    .line 1563
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    .line 1564
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_JNI:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1

    .line 1565
    :cond_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 1569
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v4

    iget v6, p2, Landroid/graphics/Rect;->left:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    iget v6, p2, Landroid/graphics/Rect;->top:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v2

    iget v6, p2, Landroid/graphics/Rect;->right:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v1

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    .line 1570
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v3

    const-string v6, "mode: %s, rect: left: %d - top: %d - right: %d - bottom: %d"

    .line 1567
    invoke-static {v6, v0}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-array v0, v5, [Ljava/lang/Object;

    .line 1573
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v4

    const-string v6, "mode: %s"

    invoke-static {v6, v0}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1577
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mPlayer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    if-nez v0, :cond_3

    .line 1578
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1

    .line 1581
    :cond_3
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mVideoViewCtrl:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;->getValue()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/visualon/OSMPUtils/voVideoViewController;->setZoomMode(I)V

    if-nez p2, :cond_4

    .line 1583
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;->getValue()I

    move-result p1

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    invoke-virtual {p2, p1, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetZoomMode(I[I)I

    move-result p1

    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1

    .line 1586
    :cond_4
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;->getValue()I

    move-result p1

    new-array v3, v3, [I

    iget v6, p2, Landroid/graphics/Rect;->left:I

    aput v6, v3, v4

    iget v4, p2, Landroid/graphics/Rect;->top:I

    aput v4, v3, v5

    iget v4, p2, Landroid/graphics/Rect;->right:I

    aput v4, v3, v2

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    aput p2, v3, v1

    invoke-virtual {v0, p1, v3}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetZoomMode(I[I)I

    move-result p1

    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public start()I
    .locals 4

    .line 1401
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "@@@VOCommonPlayerJavaImpl"

    const-string v2, "SurfaceView/Surface should be set before open function"

    .line 1402
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1403
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v0

    return v0

    .line 1406
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAudioRender:Lcom/visualon/OSMPRender/voAudioRender;

    invoke-virtual {v0}, Lcom/visualon/OSMPRender/voAudioRender;->run()V

    .line 1408
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAudioCtrl:Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase;

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->audioFocusManagement:Z

    if-eqz v2, :cond_1

    .line 1409
    invoke-virtual {v0}, Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase;->startPlayback()I

    .line 1412
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAnalytics:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;

    if-eqz v0, :cond_2

    .line 1413
    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->start()I

    .line 1417
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mVSyncHelper:Lcom/visualon/OSMPRender/voVSyncHelper;

    if-eqz v0, :cond_3

    .line 1418
    invoke-virtual {v0}, Lcom/visualon/OSMPRender/voVSyncHelper;->enable()V

    const v0, 0x11010

    .line 1419
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mVSyncHelper:Lcom/visualon/OSMPRender/voVSyncHelper;

    invoke-virtual {v2}, Lcom/visualon/OSMPRender/voVSyncHelper;->getContext()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setParameter(ILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 1423
    :cond_3
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->startSynchronousPlayback()V

    return v1
.end method

.method public startSynchronousPlayback()V
    .locals 7

    .line 2817
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->stopSynchronousPlayback()V

    .line 2818
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 2819
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 2820
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$1;->$SwitchMap$com$visualon$OSMPPlayerImpl$OSMPSync$VOSynchronousType:[I

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->voSynchronousType:Lcom/visualon/OSMPPlayerImpl/OSMPSync/VOSynchronousType;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayerImpl/OSMPSync/VOSynchronousType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2829
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->stopSynchronousPlayback()V

    goto :goto_0

    .line 2825
    :cond_0
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;

    const/16 v2, 0xbb8

    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->syncServerIP:Ljava/lang/String;

    const/16 v4, 0xbb8

    iget-object v5, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mPlayer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;-><init>(ILjava/lang/String;ILcom/visualon/OSMPPlayer/VOCommonPlayer;Landroid/net/ConnectivityManager;)V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->syncUDPHandler:Lcom/visualon/OSMPPlayerImpl/OSMPSync/UDPHandler;

    goto :goto_0

    .line 2822
    :cond_1
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ServerUDPHandler;

    const/16 v1, 0xbb8

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mPlayer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    invoke-direct {v0, v1, v2, v6}, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ServerUDPHandler;-><init>(ILcom/visualon/OSMPPlayer/VOCommonPlayer;Landroid/net/ConnectivityManager;)V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->syncUDPHandler:Lcom/visualon/OSMPPlayerImpl/OSMPSync/UDPHandler;

    .line 2831
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->syncUDPHandler:Lcom/visualon/OSMPPlayerImpl/OSMPSync/UDPHandler;

    if-eqz v0, :cond_2

    .line 2832
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->syncUDPHandler:Lcom/visualon/OSMPPlayerImpl/OSMPSync/UDPHandler;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2833
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->syncUDPHandler:Lcom/visualon/OSMPPlayerImpl/OSMPSync/UDPHandler;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/OSMPSync/UDPHandler;->initRequest()V

    :cond_2
    return-void
.end method

.method public stop()I
    .locals 4

    .line 1452
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mPlayer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    if-nez v0, :cond_0

    .line 1453
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v0

    return v0

    .line 1455
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAnalytics:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;

    if-eqz v0, :cond_1

    .line 1456
    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->stop()I

    .line 1459
    :cond_1
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->stopRender()I

    move-result v0

    .line 1461
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mVideoViewCtrl:Lcom/visualon/OSMPUtils/voVideoViewController;

    if-eqz v1, :cond_2

    .line 1462
    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voVideoViewController;->stop()V

    .line 1465
    :cond_2
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAudioCtrl:Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase;

    if-eqz v1, :cond_3

    iget-boolean v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->audioFocusManagement:Z

    if-eqz v2, :cond_3

    .line 1466
    invoke-virtual {v1}, Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase;->endPlayback()I

    .line 1469
    :cond_3
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop, return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "@@@VOCommonPlayerJavaImpl"

    invoke-static {v3, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1474
    :cond_4
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mVSyncHelper:Lcom/visualon/OSMPRender/voVSyncHelper;

    if-eqz v1, :cond_5

    const v1, 0x11010

    const-wide/16 v2, 0x0

    .line 1475
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setParameter(ILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 1476
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mVSyncHelper:Lcom/visualon/OSMPRender/voVSyncHelper;

    invoke-virtual {v1}, Lcom/visualon/OSMPRender/voVSyncHelper;->disable()V

    .line 1479
    :cond_5
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->resetID3()V

    return v0
.end method

.method public stopRender()I
    .locals 1

    .line 1446
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mAudioRender:Lcom/visualon/OSMPRender/voAudioRender;

    if-eqz v0, :cond_0

    .line 1447
    invoke-virtual {v0}, Lcom/visualon/OSMPRender/voAudioRender;->stop()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public stopSynchronousPlayback()V
    .locals 1

    .line 2838
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->syncUDPHandler:Lcom/visualon/OSMPPlayerImpl/OSMPSync/UDPHandler;

    if-eqz v0, :cond_0

    .line 2839
    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/OSMPSync/UDPHandler;->close()V

    :cond_0
    return-void
.end method

.method public suspend()I
    .locals 1

    .line 1487
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1488
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setView(Landroid/view/View;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
