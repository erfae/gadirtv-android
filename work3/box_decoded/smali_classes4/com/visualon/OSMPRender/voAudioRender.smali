.class public Lcom/visualon/OSMPRender/voAudioRender;
.super Ljava/lang/Object;
.source "voAudioRender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPRender/voAudioRender$runPlayback;,
        Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;,
        Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;,
        Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;
    }
.end annotation


# static fields
.field private static final AC3_BUFFER_MULTIPLICATION_FACTOR:I = 0x2

.field private static final ISAMAZONFAMILY:Z

.field private static final IS_TIVO_DEVICE:Z

.field private static final MAX_BUFFER_DURATION_US:J = 0xb71b0L

.field private static final MIN_BUFFER_DURATION_US:J = 0x3d090L

.field private static final MSG_CREATE_AUDIO_TRACK:I = 0x94

.field private static final PASSTHROUGH_BUFFER_DURATION_US:J = 0x3d090L

.field public static final RENDER_FORMAT_AC3:I

.field public static final RENDER_FORMAT_EAC3:I

.field public static final RENDER_FORMAT_PCM:I

.field private static final RESET_THRESHOLD:I = 0x9c4

.field private static TAG:Ljava/lang/String; = "@@@voAudioRender"

.field private static final TRY_LOCK_TIME_OUT:I = 0x5dc

.field static maxSampleRates:I


# instance fields
.field private ENCODING_AC3:I

.field private ENCODING_EAC3:I

.field private OPEN_TRACK:Z

.field private bDSPSetOnce:Z

.field private callback:Landroid/os/Handler$Callback;

.field private final handler:Landroid/os/Handler;

.field private handlerAudioTrack:Landroid/os/Handler;

.field private handlerThread:Landroid/os/HandlerThread;

.field private hdmiDisconnectStartTime:J

.field private isForcePureVideo:Z

.field private mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

.field private mAudioSessionID:I

.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mAudioWriteErrorCnt:I

.field private mByteBuffer:Ljava/nio/ByteBuffer;

.field private mChannels:I

.field private mCompensateLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mEnableAudioRenderExport:Z

.field private mEnableDSPClock:Z

.field private mFormat:I

.field private mGetLatencyMethod:Ljava/lang/reflect/Method;

.field private mIsForceDisableDSP:Z

.field private mLastAudioWriteFailedTime:J

.field private mLeftVolume:F

.field private mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mNativeContext:J

.field private mNotifyAudioFailed:Z

.field private mPlayer:Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;

.field private mRecalcTime:J

.field private mReconfigAudioTrack:Z

.field private mRenderFormat:I

.field private mResetAudioDSPClockCount:I

.field private mRightVolume:F

.field private mSampleBit:I

.field private mSampleRate:I

.field private mSendRenderStart:Z

.field private mStatus:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

.field mThreadPlayback:Ljava/lang/Thread;

.field private mTransientTime:J

.field private mTriggerReason:Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;

.field private m_bHdmiDisconnect:Z

.field public m_bluetoothEnabled:Z

.field private mbSeeking:Z

.field private mbWrite:Z

.field mrunPlayback:Lcom/visualon/OSMPRender/voAudioRender$runPlayback;

.field private onPlaybackHeadPosErrorListener:Lcom/visualon/OSMPRender/voAudioDSPClock$OnPlaybackHeadPosErrorListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 70
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingPCM:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->ordinal()I

    move-result v0

    sput v0, Lcom/visualon/OSMPRender/voAudioRender;->RENDER_FORMAT_PCM:I

    .line 71
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingAC3:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->ordinal()I

    move-result v0

    sput v0, Lcom/visualon/OSMPRender/voAudioRender;->RENDER_FORMAT_AC3:I

    .line 72
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingEAC3:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->ordinal()I

    move-result v0

    sput v0, Lcom/visualon/OSMPRender/voAudioRender;->RENDER_FORMAT_EAC3:I

    .line 142
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "IPA-1104HDH-01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/visualon/OSMPRender/voAudioRender;->IS_TIVO_DEVICE:Z

    .line 144
    new-instance v0, Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v1, "Amazon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v2, "AFT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "SM-G9200"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/visualon/OSMPRender/voAudioRender;->ISAMAZONFAMILY:Z

    .line 301
    sput v1, Lcom/visualon/OSMPRender/voAudioRender;->maxSampleRates:I

    return-void
.end method

.method public constructor <init>(Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;)V
    .locals 7

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->bDSPSetOnce:Z

    .line 91
    iput-boolean v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->OPEN_TRACK:Z

    const/4 v1, 0x0

    .line 94
    iput-object v1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    .line 95
    iput-object v1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    const/4 v2, -0x1

    .line 96
    iput v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->ENCODING_AC3:I

    .line 97
    iput v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->ENCODING_EAC3:I

    const/high16 v2, -0x40800000    # -1.0f

    .line 114
    iput v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLeftVolume:F

    .line 115
    iput v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mRightVolume:F

    .line 119
    iput-boolean v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->m_bluetoothEnabled:Z

    .line 120
    iput-boolean v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mEnableDSPClock:Z

    .line 122
    iput-boolean v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mEnableAudioRenderExport:Z

    .line 124
    iput-boolean v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->m_bHdmiDisconnect:Z

    const-wide/16 v2, 0x0

    .line 125
    iput-wide v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->hdmiDisconnectStartTime:J

    .line 126
    iput-boolean v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mReconfigAudioTrack:Z

    .line 127
    iput-boolean v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mbSeeking:Z

    .line 128
    iput v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioSessionID:I

    .line 130
    sget-object v4, Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;->NONE:Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;

    iput-object v4, p0, Lcom/visualon/OSMPRender/voAudioRender;->mTriggerReason:Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/visualon/OSMPRender/voAudioRender;->mTransientTime:J

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/visualon/OSMPRender/voAudioRender;->mRecalcTime:J

    .line 136
    iput v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mResetAudioDSPClockCount:I

    .line 140
    iput-wide v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLastAudioWriteFailedTime:J

    .line 141
    iput v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioWriteErrorCnt:I

    .line 145
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "KFTHWI"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_1

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "KFAPWI"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, p0, Lcom/visualon/OSMPRender/voAudioRender;->mIsForceDisableDSP:Z

    .line 146
    iput-object v1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mGetLatencyMethod:Ljava/lang/reflect/Method;

    .line 154
    new-instance v4, Lcom/visualon/OSMPRender/voAudioRender$1;

    invoke-direct {v4, p0}, Lcom/visualon/OSMPRender/voAudioRender$1;-><init>(Lcom/visualon/OSMPRender/voAudioRender;)V

    iput-object v4, p0, Lcom/visualon/OSMPRender/voAudioRender;->onPlaybackHeadPosErrorListener:Lcom/visualon/OSMPRender/voAudioDSPClock$OnPlaybackHeadPosErrorListener;

    .line 164
    iput-boolean v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->isForcePureVideo:Z

    .line 170
    new-instance v4, Lcom/visualon/OSMPRender/voAudioRender$2;

    invoke-direct {v4, p0}, Lcom/visualon/OSMPRender/voAudioRender$2;-><init>(Lcom/visualon/OSMPRender/voAudioRender;)V

    iput-object v4, p0, Lcom/visualon/OSMPRender/voAudioRender;->callback:Landroid/os/Handler$Callback;

    .line 1293
    iput-wide v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mNativeContext:J

    .line 245
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 246
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/visualon/OSMPRender/voAudioRender;->handler:Landroid/os/Handler;

    .line 247
    sget-object v2, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "Looper.myLooper()"

    invoke-static {v2, v4, v3}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 248
    :cond_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 249
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/visualon/OSMPRender/voAudioRender;->handler:Landroid/os/Handler;

    .line 250
    sget-object v2, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "getMainLooper()"

    invoke-static {v2, v4, v3}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 252
    :cond_3
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 253
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->handler:Landroid/os/Handler;

    .line 256
    :goto_2
    iput-object p1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mPlayer:Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;

    .line 257
    iput-object v1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    .line 259
    iput v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mSampleRate:I

    .line 260
    iput v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mChannels:I

    .line 261
    iput v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mRenderFormat:I

    .line 262
    iput v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mSampleBit:I

    .line 264
    iput-object v1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 265
    sget-object p1, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;->STOP:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    iput-object p1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mStatus:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    .line 266
    iput-boolean v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mbWrite:Z

    .line 267
    iput-boolean v5, p0, Lcom/visualon/OSMPRender/voAudioRender;->mSendRenderStart:Z

    .line 268
    iput-boolean v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mNotifyAudioFailed:Z

    .line 270
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 271
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mCompensateLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 272
    sget-boolean p1, Lcom/visualon/OSMPRender/voAudioRender;->ISAMAZONFAMILY:Z

    if-nez p1, :cond_4

    invoke-static {}, Lcom/visualon/OSMPUtils/voBluetoothManager;->isBluetoothConnected()Z

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mEnableDSPClock:Z

    if-eqz p1, :cond_5

    :cond_4
    iget-object p1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    if-nez p1, :cond_5

    .line 274
    iget-boolean p1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mIsForceDisableDSP:Z

    if-nez p1, :cond_5

    .line 275
    new-instance p1, Lcom/visualon/OSMPRender/voAudioDSPClock;

    invoke-direct {p1}, Lcom/visualon/OSMPRender/voAudioDSPClock;-><init>()V

    iput-object p1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    .line 276
    iget-object v1, p0, Lcom/visualon/OSMPRender/voAudioRender;->onPlaybackHeadPosErrorListener:Lcom/visualon/OSMPRender/voAudioDSPClock$OnPlaybackHeadPosErrorListener;

    invoke-virtual {p1, v1}, Lcom/visualon/OSMPRender/voAudioDSPClock;->setOnPlaybackHeadPosErrorListener(Lcom/visualon/OSMPRender/voAudioDSPClock$OnPlaybackHeadPosErrorListener;)V

    .line 279
    :cond_5
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 280
    sget-object p1, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "voAudioRender Construct"

    invoke-static {p1, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method private WriteTunneledData(Ljava/nio/ByteBuffer;I)I
    .locals 7

    .line 825
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mPlayer:Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-wide/32 v2, 0x10045

    .line 829
    invoke-interface {v0, v2, v3}, Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;->onGetAudioParam(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    const/16 v0, 0x10

    .line 832
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 833
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const v5, 0x55550001

    .line 834
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 835
    invoke-virtual {v4, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const-wide/32 v5, 0xf4240

    mul-long v2, v2, v5

    .line 836
    invoke-virtual {v4, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 837
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 839
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 840
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 842
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 843
    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2, v4, v0, v1}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    .line 844
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v1

    :cond_1
    return v1
.end method

.method static synthetic access$000(Lcom/visualon/OSMPRender/voAudioRender;)Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mPlayer:Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 52
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/visualon/OSMPRender/voAudioRender;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/visualon/OSMPRender/voAudioRender;->isForcePureVideo:Z

    return p1
.end method

.method static synthetic access$302(Lcom/visualon/OSMPRender/voAudioRender;Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;)Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mStatus:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    return-object p1
.end method

.method static synthetic access$400(Lcom/visualon/OSMPRender/voAudioRender;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/visualon/OSMPRender/voAudioRender;->playback()V

    return-void
.end method

.method static synthetic access$502(Lcom/visualon/OSMPRender/voAudioRender;I)I
    .locals 0

    .line 52
    iput p1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mResetAudioDSPClockCount:I

    return p1
.end method

.method private closeTrack()V
    .locals 4

    .line 1125
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_2

    .line 1127
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1128
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "closeTrack"

    invoke-static {v0, v3, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1130
    :cond_0
    iget-wide v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mNativeContext:J

    const/4 v0, 0x0

    invoke-direct {p0, v2, v3, v0}, Lcom/visualon/OSMPRender/voAudioRender;->nativeSetAudioTrack(JLandroid/media/AudioTrack;)Z

    .line 1131
    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->release()V

    .line 1132
    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    if-eqz v2, :cond_1

    .line 1133
    invoke-virtual {v2}, Lcom/visualon/OSMPRender/voAudioDSPClock;->flush()V

    .line 1134
    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    invoke-virtual {v2}, Lcom/visualon/OSMPRender/voAudioDSPClock;->stopAudioDSPClockTimer()V

    .line 1136
    :cond_1
    iput-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    .line 1137
    iput v1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mSampleRate:I

    .line 1138
    iput v1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mChannels:I

    .line 1139
    iput-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mByteBuffer:Ljava/nio/ByteBuffer;

    const-wide/16 v0, 0x64

    .line 1141
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1143
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method private getAudioTrackLatency()I
    .locals 6

    .line 185
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mGetLatencyMethod:Ljava/lang/reflect/Method;

    const-string v1, "Cannot get audio latency from audio system !"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    .line 187
    :try_start_0
    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 188
    :try_start_1
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    sget-object v3, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get audio latency succeed latency buffer time "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_0

    :catch_1
    const/4 v0, 0x0

    .line 192
    :goto_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 193
    sget-object v3, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_1
    move v2, v0

    goto :goto_2

    .line 198
    :cond_1
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 199
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_2
    return v2
.end method

.method private getChannelConfig(I)I
    .locals 3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    return v0

    .line 886
    :pswitch_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/16 v2, 0x18fc

    if-lt p1, v1, :cond_0

    return v2

    .line 888
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p1, v1, :cond_1

    return v2

    :cond_1
    return v0

    :pswitch_1
    const/16 p1, 0x4fc

    return p1

    :pswitch_2
    const/16 p1, 0xfc

    return p1

    :pswitch_3
    const/16 p1, 0xdc

    return p1

    :pswitch_4
    const/16 p1, 0xcc

    return p1

    :pswitch_5
    const/16 p1, 0x1c

    return p1

    :pswitch_6
    const/16 p1, 0xc

    return p1

    :pswitch_7
    const/4 p1, 0x4

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getChannelConfig(IZ)I
    .locals 2

    .line 850
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_2

    if-eqz p2, :cond_2

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 p1, 0x6

    .line 862
    :cond_2
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-gt v0, v1, :cond_3

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "fugu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    const/4 p1, 0x2

    .line 866
    :cond_3
    invoke-direct {p0, p1}, Lcom/visualon/OSMPRender/voAudioRender;->getChannelConfig(I)I

    move-result p1

    return p1
.end method

.method private getDSPTimeStamp()J
    .locals 3

    .line 286
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mCompensateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 288
    :try_start_0
    iget-boolean v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->OPEN_TRACK:Z

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mbSeeking:Z

    if-nez v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    if-eqz v1, :cond_0

    .line 290
    invoke-virtual {v1}, Lcom/visualon/OSMPRender/voAudioDSPClock;->getDSPTimeStamp()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    :goto_0
    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mCompensateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-wide v0

    .line 293
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mbSeeking:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 294
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDSPTimeStamp: mbSeeking :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mbSeeking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  OPEN_TRACK:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->OPEN_TRACK:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 297
    iget-object v1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mCompensateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private static getMaxSampleRate()I
    .locals 5

    .line 303
    sget v0, Lcom/visualon/OSMPRender/voAudioRender;->maxSampleRates:I

    if-nez v0, :cond_1

    const/16 v0, 0x13

    new-array v0, v0, [I

    .line 304
    fill-array-data v0, :array_0

    const/16 v1, 0x12

    :goto_0
    if-ltz v1, :cond_1

    .line 308
    aget v2, v0, v1

    const/4 v3, 0x4

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, -0x2

    if-eq v2, v3, :cond_0

    if-lez v2, :cond_0

    .line 314
    aget v0, v0, v1

    sput v0, Lcom/visualon/OSMPRender/voAudioRender;->maxSampleRates:I

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 319
    :cond_1
    :goto_1
    sget v0, Lcom/visualon/OSMPRender/voAudioRender;->maxSampleRates:I

    return v0

    :array_0
    .array-data 4
        0x1f40
        0x2b11
        0x3e80
        0x5622
        0x7d00
        0x93a8
        0xac18
        0xac44
        0xb892
        0x12c0
        0xc350
        0xc4e0
        0x15888
        0x17700
        0x2b110
        0x2ee00
        0x56220
        0x2b1100
        0x562200
    .end array-data
.end method

.method private isAC3(I)Z
    .locals 1

    .line 574
    iget v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->ENCODING_AC3:I

    if-eq v0, p1, :cond_1

    iget v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->ENCODING_EAC3:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private native nativeGetAudioFormat(JII)I
.end method

.method private native nativeInit()V
.end method

.method private native nativeSetAudioTrack(JLandroid/media/AudioTrack;)Z
.end method

.method private native nativeUninit()V
.end method

.method private openTrack(IIII)I
    .locals 23

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    .line 941
    iget-object v2, v1, Lcom/visualon/OSMPRender/voAudioRender;->mCompensateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v12, 0x1

    .line 943
    :try_start_0
    iput-boolean v12, v1, Lcom/visualon/OSMPRender/voAudioRender;->OPEN_TRACK:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 945
    iget-object v2, v1, Lcom/visualon/OSMPRender/voAudioRender;->mCompensateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v13, 0x0

    .line 949
    :try_start_1
    iget-object v2, v1, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v3, 0x5dc

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v2, :cond_19

    .line 951
    :try_start_2
    iget-boolean v2, v1, Lcom/visualon/OSMPRender/voAudioRender;->isForcePureVideo:Z

    const/16 v14, 0x94

    if-eqz v2, :cond_0

    .line 952
    iget-object v2, v1, Lcom/visualon/OSMPRender/voAudioRender;->handlerAudioTrack:Landroid/os/Handler;

    invoke-virtual {v2, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 954
    :cond_0
    iget-object v2, v1, Lcom/visualon/OSMPRender/voAudioRender;->handlerAudioTrack:Landroid/os/Handler;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v14, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 956
    :goto_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 957
    sget-object v2, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const-string v3, "openTrack: sendMessages MSG_CREATE_AUDIO_TRACK!"

    new-array v4, v13, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 960
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/visualon/OSMPRender/voAudioRender;->closeTrack()V

    .line 962
    iget-wide v2, v1, Lcom/visualon/OSMPRender/voAudioRender;->mNativeContext:J

    invoke-direct {v1, v2, v3, v10, v11}, Lcom/visualon/OSMPRender/voAudioRender;->nativeGetAudioFormat(JII)I

    move-result v2

    .line 963
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 964
    sget-object v3, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const-string v4, "XXX AudioFormat: %d"

    new-array v5, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v13

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const/4 v15, 0x2

    const/4 v8, -0x1

    if-ne v2, v8, :cond_3

    const/4 v7, 0x2

    goto :goto_1

    :cond_3
    move v7, v2

    .line 970
    :goto_1
    invoke-direct {v1, v7}, Lcom/visualon/OSMPRender/voAudioRender;->isAC3(I)Z

    move-result v2

    invoke-direct {v1, v9, v2}, Lcom/visualon/OSMPRender/voAudioRender;->getChannelConfig(IZ)I

    move-result v6

    if-eqz v6, :cond_17

    .line 975
    invoke-static {v0, v6, v7}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v2

    const/4 v3, -0x2

    if-eq v2, v3, :cond_16

    if-ne v2, v8, :cond_4

    goto/16 :goto_7

    :cond_4
    mul-int/lit8 v2, v2, 0x2

    const/16 v3, 0x800

    if-ge v2, v3, :cond_5

    const/16 v5, 0x800

    goto :goto_2

    :cond_5
    move v5, v2

    .line 983
    :goto_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    const/4 v4, 0x3

    if-lt v2, v3, :cond_7

    iget v2, v1, Lcom/visualon/OSMPRender/voAudioRender;->mAudioSessionID:I

    if-eqz v2, :cond_7

    .line 985
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 986
    invoke-virtual {v2, v4}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    const/16 v3, 0x10

    .line 987
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 988
    invoke-virtual {v2, v12}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 989
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v17

    .line 990
    new-instance v2, Landroid/media/AudioFormat$Builder;

    invoke-direct {v2}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 991
    invoke-virtual {v2, v6}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    .line 992
    invoke-virtual {v2, v7}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    .line 993
    invoke-virtual {v2, v0}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    .line 994
    invoke-virtual {v2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v18

    .line 996
    iget-boolean v2, v1, Lcom/visualon/OSMPRender/voAudioRender;->isForcePureVideo:Z

    if-nez v2, :cond_6

    .line 997
    new-instance v2, Landroid/media/AudioTrack;

    const/16 v20, 0x1

    iget v3, v1, Lcom/visualon/OSMPRender/voAudioRender;->mAudioSessionID:I

    move-object/from16 v16, v2

    move/from16 v19, v5

    move/from16 v21, v3

    invoke-direct/range {v16 .. v21}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    iput-object v2, v1, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    .line 1005
    :cond_6
    iget-object v2, v1, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v2, :cond_7

    .line 1006
    sget-object v2, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioTrack sampleRate : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "   channelCount : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v13, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1007
    sget-object v2, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioTrack state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v13, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1011
    :cond_7
    iget-object v2, v1, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v2, :cond_8

    iget-boolean v2, v1, Lcom/visualon/OSMPRender/voAudioRender;->isForcePureVideo:Z

    if-nez v2, :cond_8

    .line 1013
    new-instance v4, Landroid/media/AudioTrack;

    const/4 v3, 0x3

    const/16 v17, 0x1

    move-object v2, v4

    move-object v15, v4

    const/16 v16, 0x3

    move/from16 v4, p1

    move/from16 v19, v5

    move v5, v6

    move v14, v6

    move v6, v7

    move/from16 v22, v7

    move/from16 v7, v19

    const/16 v21, -0x1

    move/from16 v8, v17

    invoke-direct/range {v2 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v15, v1, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    goto :goto_3

    :cond_8
    move/from16 v19, v5

    move v14, v6

    move/from16 v22, v7

    const/16 v16, 0x3

    const/16 v21, -0x1

    .line 1021
    :goto_3
    sget-boolean v2, Lcom/visualon/OSMPRender/voAudioRender;->ISAMAZONFAMILY:Z

    if-nez v2, :cond_9

    iget-boolean v2, v1, Lcom/visualon/OSMPRender/voAudioRender;->m_bluetoothEnabled:Z

    if-nez v2, :cond_9

    iget-boolean v2, v1, Lcom/visualon/OSMPRender/voAudioRender;->mEnableDSPClock:Z

    if-eqz v2, :cond_b

    :cond_9
    iget-object v2, v1, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    if-nez v2, :cond_b

    .line 1022
    iget-boolean v2, v1, Lcom/visualon/OSMPRender/voAudioRender;->mIsForceDisableDSP:Z

    if-nez v2, :cond_b

    .line 1023
    new-instance v2, Lcom/visualon/OSMPRender/voAudioDSPClock;

    invoke-direct {v2}, Lcom/visualon/OSMPRender/voAudioDSPClock;-><init>()V

    iput-object v2, v1, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    .line 1024
    iget-object v3, v1, Lcom/visualon/OSMPRender/voAudioRender;->onPlaybackHeadPosErrorListener:Lcom/visualon/OSMPRender/voAudioDSPClock$OnPlaybackHeadPosErrorListener;

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPRender/voAudioDSPClock;->setOnPlaybackHeadPosErrorListener(Lcom/visualon/OSMPRender/voAudioDSPClock$OnPlaybackHeadPosErrorListener;)V

    .line 1025
    iget-boolean v2, v1, Lcom/visualon/OSMPRender/voAudioRender;->bDSPSetOnce:Z

    if-nez v2, :cond_a

    .line 1026
    iget-object v2, v1, Lcom/visualon/OSMPRender/voAudioRender;->mPlayer:Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;

    const/16 v3, 0x59

    iget-wide v4, v1, Lcom/visualon/OSMPRender/voAudioRender;->mNativeContext:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;->onSetAudioParam(ILjava/lang/Object;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_a

    .line 1028
    iput-boolean v12, v1, Lcom/visualon/OSMPRender/voAudioRender;->bDSPSetOnce:Z

    .line 1032
    :cond_a
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1033
    sget-object v2, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const-string v3, "Create DSP_CLOCK  voAudioDSPClock"

    new-array v4, v13, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1038
    :cond_b
    iget-object v2, v1, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    if-eqz v2, :cond_c

    .line 1039
    iget-object v3, v1, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPRender/voAudioDSPClock;->setAudioTrack(Landroid/media/AudioTrack;)Lcom/visualon/OSMPRender/voAudioDSPClock;

    move-result-object v2

    move/from16 v15, v22

    invoke-direct {v1, v15}, Lcom/visualon/OSMPRender/voAudioRender;->isAC3(I)Z

    move-result v3

    move/from16 v7, v19

    invoke-virtual {v2, v0, v3, v7, v9}, Lcom/visualon/OSMPRender/voAudioDSPClock;->reconfig(IZII)Lcom/visualon/OSMPRender/voAudioDSPClock;

    goto :goto_4

    :cond_c
    move/from16 v7, v19

    move/from16 v15, v22

    .line 1041
    :goto_4
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1042
    sget-object v2, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Create AudioTrack, SampleRate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ,ChannelCount "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ,nMinBufSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ,audio per sample is = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , nChannelConfig = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v13, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1049
    :cond_d
    iget-object v2, v1, Lcom/visualon/OSMPRender/voAudioRender;->handlerAudioTrack:Landroid/os/Handler;

    const/16 v3, 0x94

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1050
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1051
    sget-object v2, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const-string v3, "openTrack: removeMessages MSG_CREATE_AUDIO_TRACK!"

    new-array v4, v13, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1053
    :cond_e
    iget-boolean v2, v1, Lcom/visualon/OSMPRender/voAudioRender;->isForcePureVideo:Z

    if-nez v2, :cond_15

    .line 1054
    new-instance v8, Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;

    move-object v2, v8

    move v3, v15

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;-><init>(IIIII)V

    .line 1055
    iget-object v2, v1, Lcom/visualon/OSMPRender/voAudioRender;->mPlayer:Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;

    if-eqz v2, :cond_f

    const/16 v3, 0x5c

    .line 1056
    invoke-interface {v2, v3, v8}, Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;->onSetAudioParam(ILjava/lang/Object;)J

    .line 1057
    invoke-virtual/range {p0 .. p0}, Lcom/visualon/OSMPRender/voAudioRender;->RecalculateLatencyTime()V

    .line 1058
    iget-object v2, v1, Lcom/visualon/OSMPRender/voAudioRender;->mPlayer:Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;

    const/16 v3, 0x1c

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;->onSetAudioParam(ILjava/lang/Object;)J

    .line 1059
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1060
    sget-object v2, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const-string v3, "SetParam VOOSMP_PID_AUDIO_STEP_BUFFTIME is 10"

    new-array v4, v13, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1064
    :cond_f
    iget v2, v1, Lcom/visualon/OSMPRender/voAudioRender;->mLeftVolume:F

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_10

    .line 1065
    iget v3, v1, Lcom/visualon/OSMPRender/voAudioRender;->mRightVolume:F

    invoke-virtual {v1, v2, v3}, Lcom/visualon/OSMPRender/voAudioRender;->arsetVolume(FF)V

    .line 1067
    :cond_10
    iput v0, v1, Lcom/visualon/OSMPRender/voAudioRender;->mSampleRate:I

    .line 1068
    iput v9, v1, Lcom/visualon/OSMPRender/voAudioRender;->mChannels:I

    .line 1069
    iput v10, v1, Lcom/visualon/OSMPRender/voAudioRender;->mRenderFormat:I

    .line 1070
    iput v11, v1, Lcom/visualon/OSMPRender/voAudioRender;->mSampleBit:I

    .line 1071
    iput v15, v1, Lcom/visualon/OSMPRender/voAudioRender;->mFormat:I

    .line 1073
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1074
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const-string v2, "Open AudioTrack before allocate buffer, mSampleRate is %d, mChannels is %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, v1, Lcom/visualon/OSMPRender/voAudioRender;->mSampleRate:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v13

    iget v4, v1, Lcom/visualon/OSMPRender/voAudioRender;->mChannels:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v12

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1077
    :cond_11
    :try_start_3
    iget v0, v1, Lcom/visualon/OSMPRender/voAudioRender;->mSampleRate:I

    iget v2, v1, Lcom/visualon/OSMPRender/voAudioRender;->mChannels:I

    mul-int v0, v0, v2

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v1, Lcom/visualon/OSMPRender/voAudioRender;->mByteBuffer:Ljava/nio/ByteBuffer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 1079
    :try_start_4
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1080
    sget-object v2, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const-string v3, "ByteBuffer.allocate error, message is %s"

    new-array v4, v12, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v13

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_12
    const/4 v0, 0x0

    .line 1082
    iput-object v0, v1, Lcom/visualon/OSMPRender/voAudioRender;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 1084
    :goto_5
    iget-object v0, v1, Lcom/visualon/OSMPRender/voAudioRender;->mByteBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_14

    .line 1086
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1087
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const-string v2, "Failed to allocate buffer"

    new-array v3, v13, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1104
    :cond_13
    :try_start_5
    iget-object v0, v1, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2

    return v21

    .line 1091
    :cond_14
    :try_start_6
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1092
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const-string v2, "Open AudioTrack before allocate end"

    new-array v3, v13, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1096
    :cond_15
    iput-boolean v13, v1, Lcom/visualon/OSMPRender/voAudioRender;->mbSeeking:Z

    .line 1097
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const-string v2, "mbSeeking = false"

    new-array v3, v13, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1104
    :try_start_7
    iget-object v0, v1, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    :goto_6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_9

    :cond_16
    :goto_7
    const/16 v21, -0x1

    iget-object v0, v1, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2

    return v21

    .line 972
    :cond_17
    :try_start_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported channel count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    .line 1100
    :try_start_9
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1101
    sget-object v2, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const-string v3, "AudioTrack stop or close exception , %s"

    new-array v4, v12, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v13

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1104
    :cond_18
    :try_start_a
    iget-object v0, v1, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    goto :goto_6

    :goto_8
    iget-object v2, v1, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_2

    :catch_2
    move-exception v0

    .line 1108
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1112
    :cond_19
    :goto_9
    iget-object v0, v1, Lcom/visualon/OSMPRender/voAudioRender;->mCompensateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1114
    :try_start_b
    iput-boolean v13, v1, Lcom/visualon/OSMPRender/voAudioRender;->OPEN_TRACK:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1116
    iget-object v0, v1, Lcom/visualon/OSMPRender/voAudioRender;->mCompensateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v13

    :catchall_1
    move-exception v0

    move-object v2, v0

    iget-object v0, v1, Lcom/visualon/OSMPRender/voAudioRender;->mCompensateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    :catchall_2
    move-exception v0

    move-object v2, v0

    .line 945
    iget-object v0, v1, Lcom/visualon/OSMPRender/voAudioRender;->mCompensateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method private optimizeHdmiDisconnectPoint(J)V
    .locals 9

    const-wide/16 v0, 0x8

    mul-long v0, v0, p1

    .line 579
    iget v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mSampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iget v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mChannels:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    iget v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mSampleBit:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    .line 581
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/visualon/OSMPRender/voAudioRender;->hdmiDisconnectStartTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    const-wide/16 v6, 0x5dc

    cmp-long v8, v2, v6

    if-gez v8, :cond_0

    .line 583
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 584
    iget-object v6, p0, Lcom/visualon/OSMPRender/voAudioRender;->mByteBuffer:Ljava/nio/ByteBuffer;

    long-to-int p2, p1

    invoke-direct {p0, v6, p2}, Lcom/visualon/OSMPRender/voAudioRender;->writeData(Ljava/nio/ByteBuffer;I)J

    .line 585
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    sub-long/2addr p1, v2

    div-long/2addr p1, v4

    const-wide/16 v2, 0x3

    .line 586
    div-long v2, v0, v2

    cmp-long v4, p1, v2

    if-gez v4, :cond_1

    sub-long/2addr v0, p1

    .line 589
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 591
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mByteBuffer:Ljava/nio/ByteBuffer;

    long-to-int p2, p1

    invoke-direct {p0, v0, p2}, Lcom/visualon/OSMPRender/voAudioRender;->writeData(Ljava/nio/ByteBuffer;I)J

    const/4 p1, 0x0

    .line 598
    iput-boolean p1, p0, Lcom/visualon/OSMPRender/voAudioRender;->m_bHdmiDisconnect:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private playback()V
    .locals 12

    .line 613
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 614
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const-string v2, "playback started!"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mThreadPlayback:Ljava/lang/Thread;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 620
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mStatus:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    sget-object v2, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;->PLAY:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    const-wide/16 v3, 0x5dc

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v0, v2, :cond_7

    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mStatus:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    sget-object v2, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;->PAUSE:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    if-ne v0, v2, :cond_2

    goto :goto_4

    .line 740
    :cond_2
    iput-object v6, p0, Lcom/visualon/OSMPRender/voAudioRender;->mThreadPlayback:Ljava/lang/Thread;

    .line 741
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const-string v2, "playback thread can stop now"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v6}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 743
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v2}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_5

    .line 745
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    if-eq v0, v5, :cond_3

    .line 747
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 748
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    if-eqz v0, :cond_3

    .line 749
    invoke-virtual {v0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->flush()V

    .line 751
    :cond_3
    invoke-direct {p0}, Lcom/visualon/OSMPRender/voAudioRender;->closeTrack()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 757
    :try_start_2
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 753
    :try_start_3
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 754
    sget-object v2, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const-string v3, "AudioTracker stop or close exception , %s"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 757
    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    goto :goto_1

    :goto_2
    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    .line 761
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 764
    :cond_5
    :goto_3
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 765
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const-string v2, "playbackaudio stopped!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    return-void

    .line 622
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mStatus:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    sget-object v2, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;->PLAY:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    if-ne v0, v2, :cond_1a

    .line 624
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/visualon/OSMPRender/voAudioRender;->mTransientTime:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x1388

    cmp-long v0, v7, v9

    if-gez v0, :cond_8

    .line 625
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/visualon/OSMPRender/voAudioRender;->mRecalcTime:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x384

    cmp-long v0, v7, v9

    if-lez v0, :cond_9

    .line 626
    invoke-virtual {p0}, Lcom/visualon/OSMPRender/voAudioRender;->RecalculateLatencyTime()V

    goto :goto_5

    .line 629
    :cond_8
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;->NONE:Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;

    iput-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mTriggerReason:Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;

    .line 632
    :cond_9
    :goto_5
    iput-boolean v5, p0, Lcom/visualon/OSMPRender/voAudioRender;->mbWrite:Z

    .line 633
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mByteBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_a

    .line 634
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mPlayer:Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;

    invoke-interface {v0, v6}, Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;->GetAudioData([B)J

    move-result-wide v7

    goto :goto_6

    .line 636
    :cond_a
    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mPlayer:Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;->GetAudioData([B)J

    move-result-wide v7

    :goto_6
    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-eqz v0, :cond_b

    .line 638
    iget-boolean v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mReconfigAudioTrack:Z

    if-eqz v2, :cond_17

    .line 640
    :cond_b
    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mPlayer:Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;

    invoke-interface {v2}, Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;->onGetAudioFormat()Lcom/visualon/OSMPUtils/voOSAudioFormat;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 641
    iget-boolean v9, p0, Lcom/visualon/OSMPRender/voAudioRender;->mReconfigAudioTrack:Z

    if-nez v9, :cond_c

    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSAudioFormat;->SampleRate()I

    move-result v9

    iget v10, p0, Lcom/visualon/OSMPRender/voAudioRender;->mSampleRate:I

    if-ne v9, v10, :cond_c

    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSAudioFormat;->Channels()I

    move-result v9

    iget v10, p0, Lcom/visualon/OSMPRender/voAudioRender;->mChannels:I

    if-ne v9, v10, :cond_c

    iget-object v9, p0, Lcom/visualon/OSMPRender/voAudioRender;->mPlayer:Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;

    invoke-interface {v9}, Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;->onGetFormatID()I

    move-result v9

    iget v10, p0, Lcom/visualon/OSMPRender/voAudioRender;->mRenderFormat:I

    if-ne v9, v10, :cond_c

    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSAudioFormat;->SampleBits()I

    move-result v9

    iget v10, p0, Lcom/visualon/OSMPRender/voAudioRender;->mSampleBit:I

    if-eq v9, v10, :cond_17

    .line 643
    :cond_c
    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSAudioFormat;->SampleRate()I

    move-result v9

    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSAudioFormat;->Channels()I

    move-result v10

    iget-object v11, p0, Lcom/visualon/OSMPRender/voAudioRender;->mPlayer:Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;

    invoke-interface {v11}, Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;->onGetFormatID()I

    move-result v11

    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSAudioFormat;->SampleBits()I

    move-result v2

    invoke-direct {p0, v9, v10, v11, v2}, Lcom/visualon/OSMPRender/voAudioRender;->openTrack(IIII)I

    .line 644
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 645
    sget-object v2, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "openTrack finished. mAudioTrack : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "state : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v10, :cond_d

    invoke-virtual {v10}, Landroid/media/AudioTrack;->getState()I

    move-result v10

    goto :goto_7

    :cond_d
    const/4 v10, 0x0

    :goto_7
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v1, [Ljava/lang/Object;

    invoke-static {v2, v9, v10}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 648
    :cond_e
    iget-boolean v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->isForcePureVideo:Z

    if-nez v2, :cond_17

    .line 649
    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getState()I

    move-result v2

    if-nez v2, :cond_13

    .line 652
    :cond_f
    :try_start_5
    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v9}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2

    if-eqz v2, :cond_10

    .line 654
    :try_start_6
    iput-object v6, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 656
    :try_start_7
    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_8

    :catchall_1
    move-exception v2

    iget-object v3, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    move-exception v2

    .line 660
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 663
    :cond_10
    :goto_8
    iget-boolean v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mNotifyAudioFailed:Z

    if-nez v2, :cond_12

    .line 664
    iget v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mFormat:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_11

    const/4 v3, 0x3

    if-eq v2, v3, :cond_11

    const/4 v3, 0x4

    if-eq v2, v3, :cond_11

    .line 668
    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mPlayer:Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;

    const v3, -0x7ffffff0

    invoke-interface {v2, v3, v1, v1, v6}, Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;->onAudioRenderEvent(IIILjava/lang/Object;)I

    goto :goto_9

    .line 671
    :cond_11
    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mPlayer:Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;

    const v3, -0x7fffffe6

    invoke-interface {v2, v3, v1, v1, v6}, Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;->onAudioRenderEvent(IIILjava/lang/Object;)I

    .line 673
    :goto_9
    iput-boolean v5, p0, Lcom/visualon/OSMPRender/voAudioRender;->mNotifyAudioFailed:Z

    :cond_12
    const-wide/16 v2, 0x5

    .line 676
    :try_start_8
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_a

    :catch_3
    move-exception v2

    .line 678
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 681
    :goto_a
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 682
    sget-object v2, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const-string v3, "VOOSMP_CB_Audio_Render_Failed"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 685
    :cond_13
    iget-wide v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mNativeContext:J

    iget-object v4, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-direct {p0, v2, v3, v4}, Lcom/visualon/OSMPRender/voAudioRender;->nativeSetAudioTrack(JLandroid/media/AudioTrack;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 686
    sget-object v2, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const-string v3, "nativeSetAudioTrack returns true"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 687
    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    if-eqz v2, :cond_16

    .line 688
    invoke-virtual {v2}, Lcom/visualon/OSMPRender/voAudioDSPClock;->startAudioDSPClockTimer()V

    goto :goto_b

    .line 692
    :cond_14
    sget-object v2, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const-string v3, "nativeSetAudioTrack returns false"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 693
    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    if-eqz v2, :cond_15

    .line 694
    invoke-virtual {v2}, Lcom/visualon/OSMPRender/voAudioDSPClock;->stopAudioDSPClockTimer()V

    .line 698
    :cond_15
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 699
    sget-object v2, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const-string v3, "DSP_CLOCK VOOSMP_PID_AUDIO_DSP_CLOCK = NULL"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 702
    :cond_16
    :goto_b
    iput-boolean v1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mReconfigAudioTrack:Z

    .line 703
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 704
    sget-object v2, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const-string v3, "Ready to write."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_17
    if-lez v0, :cond_19

    .line 712
    iget-boolean v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->m_bHdmiDisconnect:Z

    if-eqz v0, :cond_18

    .line 714
    invoke-direct {p0, v7, v8}, Lcom/visualon/OSMPRender/voAudioRender;->optimizeHdmiDisconnectPoint(J)V

    .line 715
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    if-eqz v0, :cond_19

    .line 716
    invoke-virtual {v0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->stopAudioDSPClockTimer()V

    goto :goto_c

    .line 720
    :cond_18
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mByteBuffer:Ljava/nio/ByteBuffer;

    long-to-int v2, v7

    invoke-direct {p0, v0, v2}, Lcom/visualon/OSMPRender/voAudioRender;->writeData(Ljava/nio/ByteBuffer;I)J

    .line 724
    :cond_19
    :goto_c
    iput-boolean v1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mbWrite:Z

    .line 726
    :cond_1a
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mStatus:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    sget-object v2, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;->PAUSE:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    if-ne v0, v2, :cond_1

    .line 729
    :try_start_9
    monitor-enter p0
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_4

    .line 730
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 731
    monitor-exit p0

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v0
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_4

    :catch_4
    move-exception v0

    .line 734
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private setAC3Value(II)V
    .locals 4

    .line 566
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "setAC3Value %d %d"

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 569
    :cond_0
    iput p2, p0, Lcom/visualon/OSMPRender/voAudioRender;->ENCODING_AC3:I

    .line 570
    iput p1, p0, Lcom/visualon/OSMPRender/voAudioRender;->ENCODING_EAC3:I

    return-void
.end method

.method private declared-synchronized setStatus(Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;)V
    .locals 4

    monitor-enter p0

    .line 1173
    :try_start_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1174
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setStatus - , status is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1176
    :cond_0
    iput-object p1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mStatus:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    .line 1177
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;->PLAY:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;->STOP:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    if-ne p1, v0, :cond_2

    .line 1178
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 1179
    :cond_2
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1180
    sget-object p1, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStatus + , mStatus is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mStatus:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1182
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private writeData(Ljava/nio/ByteBuffer;I)J
    .locals 8

    .line 771
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_6

    if-lez p2, :cond_6

    iget-boolean v1, p0, Lcom/visualon/OSMPRender/voAudioRender;->isForcePureVideo:Z

    if-nez v1, :cond_6

    .line 773
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    .line 775
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    if-eqz v0, :cond_0

    .line 777
    invoke-virtual {v0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->playAudioTrack()V

    goto :goto_0

    .line 781
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 783
    :goto_0
    iget-boolean v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mSendRenderStart:Z

    if-eqz v0, :cond_2

    .line 785
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mPlayer:Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;

    const/16 v1, 0x21

    invoke-interface {v0, v1, v3, v3, v2}, Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;->onAudioRenderEvent(IIILjava/lang/Object;)I

    .line 786
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 787
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v4, "VOOSMP_CB_AudioRenderStart event sent."

    invoke-static {v0, v4, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 789
    :cond_1
    iput-boolean v3, p0, Lcom/visualon/OSMPRender/voAudioRender;->mSendRenderStart:Z

    .line 794
    :cond_2
    iget v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioSessionID:I

    if-nez v0, :cond_4

    .line 795
    iget-boolean v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mEnableAudioRenderExport:Z

    if-eqz v0, :cond_3

    .line 796
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mPlayer:Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;

    const v1, -0x7fffffdf

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-interface {v0, v1, v3, p2, p1}, Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;->onAudioRenderEvent(IIILjava/lang/Object;)I

    const/4 p1, 0x0

    goto :goto_1

    .line 799
    :cond_3
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {v0, p1, v3, p2}, Landroid/media/AudioTrack;->write([BII)I

    move-result p1

    goto :goto_1

    .line 802
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/visualon/OSMPRender/voAudioRender;->WriteTunneledData(Ljava/nio/ByteBuffer;I)I

    move-result p1

    .line 804
    :goto_1
    sget-boolean p2, Lcom/visualon/OSMPRender/voAudioRender;->IS_TIVO_DEVICE:Z

    if-eqz p2, :cond_6

    if-gez p1, :cond_6

    .line 805
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 806
    iget-wide v4, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLastAudioWriteFailedTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0xc8

    cmp-long p2, v4, v6

    if-lez p2, :cond_6

    .line 807
    iput-wide v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLastAudioWriteFailedTime:J

    .line 808
    iget p2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioWriteErrorCnt:I

    const/4 v0, 0x2

    if-ge p2, v0, :cond_5

    add-int/lit8 p2, p2, 0x1

    .line 809
    iput p2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioWriteErrorCnt:I

    const/4 p1, 0x0

    goto :goto_2

    .line 813
    :cond_5
    iput v3, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioWriteErrorCnt:I

    .line 815
    :goto_2
    iget-object p2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mPlayer:Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;

    const/16 v0, 0x2003

    invoke-interface {p2, v0, p1, v3, v2}, Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;->onAudioRenderEvent(IIILjava/lang/Object;)I

    :cond_6
    const-wide/16 p1, 0x0

    return-wide p1
.end method


# virtual methods
.method public DSPClockEnable()Z
    .locals 3

    .line 218
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-ge v0, v2, :cond_0

    return v1

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public RecalculateLatencyTime()V
    .locals 7

    .line 1235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mRecalcTime:J

    .line 1238
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mPlayer:Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;

    if-eqz v0, :cond_a

    .line 1240
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "6.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1241
    invoke-direct {p0}, Lcom/visualon/OSMPRender/voAudioRender;->getAudioTrackLatency()I

    move-result v0

    goto :goto_1

    .line 1243
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mPlayer:Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;

    const-wide/16 v3, 0x5b

    invoke-interface {v0, v3, v4}, Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;->onGetAudioParam(J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mPlayer:Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;

    invoke-interface {v0, v3, v4}, Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;->onGetAudioParam(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1244
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v1, v3, :cond_2

    iget-object v1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    if-eqz v1, :cond_2

    .line 1245
    sget-object v1, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BT] renderBufferTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1246
    iget-object v1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    int-to-long v3, v0

    invoke-virtual {v1, v3, v4}, Lcom/visualon/OSMPRender/voAudioDSPClock;->getLatency(J)J

    .line 1250
    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mEnableAudioRenderExport:Z

    if-eqz v1, :cond_3

    .line 1251
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mPlayer:Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;

    const v1, -0x7fffffdd

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v2, v3}, Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;->onAudioRenderEvent(IIILjava/lang/Object;)I

    move-result v0

    .line 1254
    :cond_3
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1255
    sget-object v1, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "renderBufferTime "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1259
    :cond_4
    sget-boolean v1, Lcom/visualon/OSMPRender/voAudioRender;->ISAMAZONFAMILY:Z

    if-eqz v1, :cond_7

    .line 1261
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1262
    sget-object v3, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "It\'s Amazon family"

    invoke-static {v3, v5, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1264
    :cond_5
    iget-object v3, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    const-string v4, "AFTM"

    if-eqz v3, :cond_6

    int-to-long v5, v0

    .line 1266
    invoke-virtual {v3, v5, v6}, Lcom/visualon/OSMPRender/voAudioDSPClock;->getLatency(J)J

    move-result-wide v5

    long-to-int v0, v5

    div-int/lit16 v0, v0, 0x3e8

    .line 1268
    new-instance v3, Ljava/lang/String;

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 v0, 0x96

    goto :goto_2

    .line 1272
    :cond_6
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-ne v3, v5, :cond_7

    new-instance v3, Ljava/lang/String;

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 v0, 0x12c

    :cond_7
    :goto_2
    const/16 v3, 0x12

    if-eqz v1, :cond_8

    .line 1283
    iget v1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mFormat:I

    invoke-direct {p0, v1}, Lcom/visualon/OSMPRender/voAudioRender;->isAC3(I)Z

    move-result v1

    if-nez v1, :cond_8

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_8

    const/4 v0, 0x0

    .line 1286
    :cond_8
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1287
    sget-object v1, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v2, "VOOSMP_PID_AUDIO_RENDER_LATENCY VOOSMP_PID_AUDIO_REND_BUFFER_TIME is %d"

    invoke-static {v1, v2, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1289
    :cond_9
    iget-object v1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mPlayer:Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;->onSetAudioParam(ILjava/lang/Object;)J

    :cond_a
    return-void
.end method

.method public SetAudioSessionID(I)V
    .locals 0

    .line 213
    iput p1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioSessionID:I

    return-void
.end method

.method public arsetVolume(FF)V
    .locals 4

    .line 1150
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1151
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "arsetVolume left%.3f; right:%.3f ."

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1155
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v1, 0x5dc

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    .line 1157
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    .line 1158
    invoke-virtual {v0, p1, p2}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 1159
    :cond_1
    iput p1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLeftVolume:F

    .line 1160
    iput p2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mRightVolume:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1162
    :try_start_2
    iget-object p1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 1166
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public enableAudioRenderExport(Z)V
    .locals 4

    .line 1192
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1193
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEnableAudioRenderExport : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1195
    :cond_0
    iput-boolean p1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mEnableAudioRenderExport:Z

    if-eqz p1, :cond_1

    .line 1197
    sget-object p1, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Force disable DSP Clock due to audio render export!"

    invoke-static {p1, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 1198
    iput-boolean p1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mIsForceDisableDSP:Z

    :cond_1
    return-void
.end method

.method public flush()V
    .locals 5

    .line 539
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 540
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "flush"

    invoke-static {v0, v3, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 544
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v2, 0x5dc

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    .line 546
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    .line 548
    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 549
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    if-eqz v0, :cond_1

    .line 550
    invoke-virtual {v0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 553
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 557
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 561
    iput-boolean v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mSendRenderStart:Z

    .line 562
    iput-boolean v1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mNotifyAudioFailed:Z

    return-void
.end method

.method public hdmiDisConnect()V
    .locals 2

    .line 207
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->hdmiDisconnectStartTime:J

    const/4 v0, 0x1

    .line 208
    iput-boolean v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->m_bHdmiDisconnect:Z

    return-void
.end method

.method public init()V
    .locals 4

    .line 1203
    invoke-direct {p0}, Lcom/visualon/OSMPRender/voAudioRender;->nativeInit()V

    .line 1204
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mPlayer:Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;

    invoke-static {}, Lcom/visualon/OSMPRender/voAudioRender;->getMaxSampleRate()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x73

    invoke-interface {v0, v2, v1}, Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;->onSetAudioParam(ILjava/lang/Object;)J

    const/4 v0, 0x0

    .line 1205
    iput-boolean v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->bDSPSetOnce:Z

    .line 1206
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 1208
    :try_start_0
    const-class v1, Landroid/media/AudioTrack;

    const-string v2, "getLatency"

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mGetLatencyMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 1211
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1212
    sget-object v1, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Cannot get audio latency from audio system !"

    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1216
    :cond_0
    :goto_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AudioTrack: initialization tracker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->handlerThread:Landroid/os/HandlerThread;

    .line 1217
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1218
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/visualon/OSMPRender/voAudioRender;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->callback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->handlerAudioTrack:Landroid/os/Handler;

    return-void
.end method

.method public notifyReconfigAudioTrack()V
    .locals 1

    .line 904
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;->NONE:Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPRender/voAudioRender;->notifyReconfigAudioTrack(Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;)V

    return-void
.end method

.method public notifyReconfigAudioTrack(Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;)V
    .locals 2

    .line 908
    iput-object p1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mTriggerReason:Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;

    .line 909
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;->NONE:Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;

    if-ne p1, v0, :cond_0

    .line 910
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mTransientTime:J

    .line 911
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mRecalcTime:J

    .line 914
    :cond_0
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;->SEEK:Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_1

    .line 915
    iput-boolean v1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mReconfigAudioTrack:Z

    .line 916
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mCompensateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 918
    :try_start_0
    iput-boolean v1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mbSeeking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 920
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mCompensateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mCompensateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    .line 925
    :cond_1
    :goto_0
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;->CONNECTION_STATE_CHANGE:Lcom/visualon/OSMPRender/voAudioRender$UNSTABLE_REASON;

    if-eq v0, p1, :cond_2

    iget-object p1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    if-nez p1, :cond_3

    .line 926
    :cond_2
    iput-boolean v1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mReconfigAudioTrack:Z

    :cond_3
    return-void
.end method

.method public pause()V
    .locals 5

    .line 364
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 365
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pause-  mStatus is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/visualon/OSMPRender/voAudioRender;->mStatus:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    :cond_0
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;->PAUSE:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    invoke-direct {p0, v0}, Lcom/visualon/OSMPRender/voAudioRender;->setStatus(Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;)V

    .line 369
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mbWrite:Z

    if-eqz v0, :cond_2

    const-wide/16 v2, 0x2

    .line 372
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 373
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const-string v2, "Audio Pause wait for write completed."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 378
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 383
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v2, 0x5dc

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_5

    .line 385
    :try_start_2
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    .line 387
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    if-eqz v0, :cond_3

    .line 389
    invoke-virtual {v0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->resetWhenPause()V

    .line 391
    :cond_3
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 394
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v0

    .line 398
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_5
    :goto_1
    const/4 v0, 0x1

    .line 402
    iput-boolean v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mSendRenderStart:Z

    .line 403
    iput-boolean v1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mNotifyAudioFailed:Z

    .line 405
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 406
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pause+  mStatus is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/visualon/OSMPRender/voAudioRender;->mStatus:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public resetAudioDSPClock()V
    .locals 6

    .line 411
    iget v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mResetAudioDSPClockCount:I

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 412
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "resetAudioDSPClock"

    invoke-static {v0, v4, v3}, Lcom/visualon/OSMPUtils/voLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 413
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {v0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->resetWhenPause()V

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 418
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    .line 419
    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 422
    :try_start_1
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 423
    sget-object v3, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const-string v4, "AudioTracker pause exception , %s"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 428
    :goto_1
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/visualon/OSMPRender/voAudioRender$3;

    invoke-direct {v2, p0}, Lcom/visualon/OSMPRender/voAudioRender$3;-><init>(Lcom/visualon/OSMPRender/voAudioRender;)V

    const-wide/16 v3, 0x9c4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 426
    :goto_2
    iget-object v1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 435
    :cond_2
    :goto_3
    iget v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mResetAudioDSPClockCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mResetAudioDSPClockCount:I

    return-void
.end method

.method public resetWhenPause()V
    .locals 3

    .line 439
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "resetWhenPause"

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 440
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {v0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->resetWhenPause()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 5

    .line 324
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 325
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run-  mStatus is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/visualon/OSMPRender/voAudioRender;->mStatus:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mStatus:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    sget-object v2, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;->PLAY:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    if-ne v0, v2, :cond_1

    return-void

    .line 333
    :cond_1
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;->PLAY:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    invoke-direct {p0, v0}, Lcom/visualon/OSMPRender/voAudioRender;->setStatus(Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;)V

    .line 334
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mrunPlayback:Lcom/visualon/OSMPRender/voAudioRender$runPlayback;

    if-nez v0, :cond_2

    .line 335
    new-instance v0, Lcom/visualon/OSMPRender/voAudioRender$runPlayback;

    invoke-direct {v0, p0, p0}, Lcom/visualon/OSMPRender/voAudioRender$runPlayback;-><init>(Lcom/visualon/OSMPRender/voAudioRender;Lcom/visualon/OSMPRender/voAudioRender;)V

    iput-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mrunPlayback:Lcom/visualon/OSMPRender/voAudioRender$runPlayback;

    .line 337
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mThreadPlayback:Ljava/lang/Thread;

    if-nez v0, :cond_3

    .line 339
    new-instance v0, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mrunPlayback:Lcom/visualon/OSMPRender/voAudioRender$runPlayback;

    const-string v3, "vomeAudio Playback"

    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mThreadPlayback:Ljava/lang/Thread;

    const/16 v2, 0x9

    .line 340
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 341
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mThreadPlayback:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 344
    :cond_3
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 345
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run+  mStatus is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/visualon/OSMPRender/voAudioRender;->mStatus:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 348
    :cond_4
    sget-boolean v0, Lcom/visualon/OSMPRender/voAudioRender;->ISAMAZONFAMILY:Z

    if-nez v0, :cond_5

    invoke-static {}, Lcom/visualon/OSMPUtils/voBluetoothManager;->isBluetoothConnected()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mEnableDSPClock:Z

    if-eqz v0, :cond_7

    .line 349
    :cond_5
    invoke-static {}, Lcom/visualon/OSMPUtils/voBluetoothManager;->isBluetoothConnected()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    .line 350
    iput-boolean v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->m_bluetoothEnabled:Z

    goto :goto_0

    .line 352
    :cond_6
    iput-boolean v1, p0, Lcom/visualon/OSMPRender/voAudioRender;->m_bluetoothEnabled:Z

    .line 355
    :goto_0
    iget-boolean v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->bDSPSetOnce:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mIsForceDisableDSP:Z

    if-nez v0, :cond_7

    .line 356
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mPlayer:Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;

    const/16 v1, 0x59

    iget-wide v3, p0, Lcom/visualon/OSMPRender/voAudioRender;->mNativeContext:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;->onSetAudioParam(ILjava/lang/Object;)J

    .line 357
    iput-boolean v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->bDSPSetOnce:Z

    :cond_7
    return-void
.end method

.method public setBluetoothStatus(Z)V
    .locals 4

    .line 604
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "BlueToothStatus  : %d "

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 607
    :cond_0
    iput-boolean p1, p0, Lcom/visualon/OSMPRender/voAudioRender;->m_bluetoothEnabled:Z

    return-void
.end method

.method public setEnableDSPClock(Z)V
    .locals 3

    .line 1185
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1186
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EnableDSPClock : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1188
    :cond_0
    iput-boolean p1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mEnableDSPClock:Z

    return-void
.end method

.method public setForcePureVideo(Z)V
    .locals 0

    .line 167
    iput-boolean p1, p0, Lcom/visualon/OSMPRender/voAudioRender;->isForcePureVideo:Z

    return-void
.end method

.method public setSeekComplete()V
    .locals 3

    .line 930
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mCompensateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    .line 932
    :try_start_0
    iput-boolean v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mbSeeking:Z

    .line 933
    sget-object v1, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const-string v2, "setSeekComplete mbSeeking = false"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 935
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mCompensateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mCompensateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public startBuffering()V
    .locals 3

    .line 445
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "startBuffering"

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 446
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    if-eqz v0, :cond_0

    .line 447
    invoke-virtual {v0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->startBuffering()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 9

    const-string v0, "AudioTracker stop exception , %s"

    .line 460
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 461
    sget-object v1, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop-  mStatus is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/visualon/OSMPRender/voAudioRender;->mStatus:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const-wide/16 v3, 0x5dc

    const/4 v1, 0x1

    .line 465
    :try_start_0
    iget-object v5, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v3, v4, v6}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v5, :cond_3

    .line 467
    :try_start_1
    iget-object v5, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v5, :cond_1

    .line 469
    invoke-virtual {v5}, Landroid/media/AudioTrack;->stop()V

    .line 470
    iget-object v5, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    if-eqz v5, :cond_1

    .line 471
    invoke-virtual {v5}, Lcom/visualon/OSMPRender/voAudioDSPClock;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 478
    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    :goto_0
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catchall_0
    move-exception v5

    goto :goto_1

    :catch_0
    move-exception v5

    .line 474
    :try_start_3
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 475
    sget-object v6, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v2

    invoke-static {v6, v0, v7}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 478
    :cond_2
    :try_start_4
    iget-object v5, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    goto :goto_0

    :goto_1
    iget-object v6, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5

    .line 481
    :cond_3
    :goto_2
    sget-object v5, Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;->STOP:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    invoke-direct {p0, v5}, Lcom/visualon/OSMPRender/voAudioRender;->setStatus(Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v5

    .line 484
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 488
    :goto_3
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 489
    sget-object v5, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "stop  call audio track stop"

    invoke-static {v5, v7, v6}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 491
    :cond_4
    :goto_4
    iget-object v5, p0, Lcom/visualon/OSMPRender/voAudioRender;->mThreadPlayback:Ljava/lang/Thread;

    if-eqz v5, :cond_5

    const-wide/16 v5, 0x2

    .line 494
    :try_start_5
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 495
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 496
    sget-object v5, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Stop, waiting for audio thread quit. sleep 2ms status is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/visualon/OSMPRender/voAudioRender;->mStatus:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_2
    move-exception v5

    .line 499
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    .line 502
    :cond_5
    iput-boolean v1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mSendRenderStart:Z

    .line 503
    iput-boolean v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->mNotifyAudioFailed:Z

    .line 504
    iput-boolean v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->isForcePureVideo:Z

    .line 505
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 506
    sget-object v5, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "stop+  mStatus is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/visualon/OSMPRender/voAudioRender;->mStatus:Lcom/visualon/OSMPRender/voAudioRender$RenderStatus;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 510
    :cond_6
    iget-boolean v5, p0, Lcom/visualon/OSMPRender/voAudioRender;->bDSPSetOnce:Z

    if-eqz v5, :cond_9

    .line 511
    iget-object v5, p0, Lcom/visualon/OSMPRender/voAudioRender;->mPlayer:Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;

    const/16 v6, 0x59

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;->onSetAudioParam(ILjava/lang/Object;)J

    .line 514
    :try_start_6
    iget-object v5, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v3, v4, v6}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_4

    if-eqz v3, :cond_9

    .line 516
    :try_start_7
    iget-object v3, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    if-eqz v3, :cond_7

    .line 517
    invoke-virtual {v3}, Lcom/visualon/OSMPRender/voAudioDSPClock;->flush()V

    .line 518
    iget-object v3, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    invoke-virtual {v3}, Lcom/visualon/OSMPRender/voAudioDSPClock;->stopAudioDSPClockTimer()V

    const/4 v3, 0x0

    .line 519
    iput-object v3, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 526
    :cond_7
    :try_start_8
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    :goto_5
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v3

    .line 522
    :try_start_9
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 523
    sget-object v4, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v4, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 526
    :cond_8
    :try_start_a
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    goto :goto_5

    :goto_6
    iget-object v1, p0, Lcom/visualon/OSMPRender/voAudioRender;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_4

    :catch_4
    move-exception v0

    .line 530
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 534
    :cond_9
    :goto_7
    iput-boolean v2, p0, Lcom/visualon/OSMPRender/voAudioRender;->bDSPSetOnce:Z

    return-void
.end method

.method public stopBuffering()V
    .locals 3

    .line 452
    sget-object v0, Lcom/visualon/OSMPRender/voAudioRender;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "stopBuffering"

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 453
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    if-eqz v0, :cond_0

    .line 454
    invoke-virtual {v0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->stopBuffering()V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 2

    .line 1222
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mAudioDSPClock:Lcom/visualon/OSMPRender/voAudioDSPClock;

    if-eqz v0, :cond_0

    .line 1223
    invoke-virtual {v0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->stopAudioDSPClockTimer()V

    :cond_0
    const/4 v0, 0x0

    .line 1225
    iput-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mrunPlayback:Lcom/visualon/OSMPRender/voAudioRender$runPlayback;

    .line 1226
    iput-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->mPlayer:Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;

    .line 1227
    invoke-direct {p0}, Lcom/visualon/OSMPRender/voAudioRender;->nativeUninit()V

    .line 1228
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 1229
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioRender;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_1
    return-void
.end method
