.class public Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;
.super Ljava/lang/Object;
.source "VOOSMPLicenseManager.java"

# interfaces
.implements Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;,
        Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$AsyncLicenseAcquisition;
    }
.end annotation


# static fields
.field private static final BUSY:J = 0x10L

.field private static final CLIENT_ERROR:J = 0x400L

.field private static final CLOSED:J = 0x0L

.field private static final CONNECT_ERROR:J = 0x1000L

.field private static final DEVICE_ERROR:J = 0x200L

.field private static final FAILED:J = 0x8L

.field private static final INIT:J = 0x1L

.field private static final INIT_ERROR:J = 0x100L

.field public static final KEY_TYPE_OFFLINE:Ljava/lang/String; = "KEY_TYPE_OFFLINE"

.field private static final KID_LENGTH:I = 0x10

.field private static final LIB_NAME:Ljava/lang/String; = "voDRMMediaCrypto"

.field private static final LICENSE_EXPIRED:J = 0x4000L

.field private static final LICENSE_INVALID:J = 0x8000L

.field private static final OPEN:J = 0x2L

.field private static final PLAYREADY_UUID:Ljava/util/UUID;

.field private static final READY:J = 0x20L

.field private static final RETRY_NEXT:J = 0x80L

.field private static final SERVER_ERROR:J = 0x800L

.field private static final SUCCESS:J = 0x4L

.field private static final UNKNOWN_ERROR:J = 0x2000L

.field private static final USER_ABORT:J = 0x40L

.field private static final WIDEVINE_DEFAULT_LA_URL:Ljava/lang/String; = ""

.field private static final WIDEVINE_UUID:Ljava/util/UUID;

.field private static isJniLoaded:Z

.field private static mIsAmzn:Z

.field private static final mIsAmznOldDevice:Z

.field private static mLicenseManager:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

.field private static nativeLibPath:Ljava/lang/String;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurntSchemeUUID:Ljava/util/UUID;

.field private mCustomData:Ljava/lang/String;

.field private mDeviceApiLevel:I

.field private mDrmAdapter:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;

.field private mDrmInitData:[B

.field private mDrmManagerClientSessionID:I

.field private mEnablePersistentLcs:Z

.field private mEventHandler:Landroid/os/Handler;

.field private mEventListener:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

.field private mHeader:Ljava/lang/String;

.field private mISSUE_INIT_ERROR:Z

.field private mIsUseMediaDrm:Z

.field private mKeyTypeStream:Z

.field private mLA_URL:Ljava/lang/String;

.field private mLA_request_properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLicenseInfo:Ljava/lang/String;

.field private mLicenseList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLicenseRetriever:Lcom/visualon/OSMPPlayer/VOOSMPLicenseRetriever;

.field private mLicenseTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$AsyncLicenseAcquisition;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaDrmSessionID:[B

.field private mMutex:Ljava/util/concurrent/locks/ReentrantLock;

.field private mOverdueSoonDrmSessionID:[B

.field private mPlayer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

.field private mPrefList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/util/HashMap;",
            ">;"
        }
    .end annotation
.end field

.field private mProtectionHeader:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;

.field private mState:J

.field private mSwappedKid:[B

.field private nativeContext:J

.field private useDrmScheme:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 100
    new-instance v0, Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v1, "Amazon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mIsAmzn:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 101
    new-instance v0, Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v2, "AFTB"

    .line 102
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v2, "AFTM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mIsAmznOldDevice:Z

    .line 107
    sput-boolean v1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->isJniLoaded:Z

    const/4 v0, 0x0

    .line 108
    sput-object v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseManager:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    .line 139
    sput-object v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->nativeLibPath:Ljava/lang/String;

    .line 140
    new-instance v0, Ljava/util/UUID;

    const-wide v1, -0x65fb0f8667bfbd7aL

    const-wide v3, -0x546d19a41f77a06bL    # -8.640911267670052E-99

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->PLAYREADY_UUID:Ljava/util/UUID;

    .line 141
    new-instance v0, Ljava/util/UUID;

    const-wide v1, -0x121074568629b532L    # -3.563403477674908E221

    const-wide v3, -0x5c37d8232ae2de13L

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->WIDEVINE_UUID:Ljava/util/UUID;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mMediaDrmSessionID:[B

    .line 89
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mOverdueSoonDrmSessionID:[B

    .line 93
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mSwappedKid:[B

    .line 94
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mCustomData:Ljava/lang/String;

    .line 95
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mEventListener:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

    .line 96
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mEventHandler:Landroid/os/Handler;

    .line 97
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mPlayer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    .line 99
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mDrmAdapter:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;

    const/4 v1, 0x0

    .line 103
    iput-boolean v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mIsUseMediaDrm:Z

    const-string v2, "@@@VOOSMPLicenseManger"

    .line 105
    iput-object v2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->TAG:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 132
    iput-wide v2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mState:J

    .line 133
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLA_URL:Ljava/lang/String;

    .line 134
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLA_request_properties:Ljava/util/Map;

    .line 135
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mContext:Landroid/content/Context;

    .line 136
    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mDrmManagerClientSessionID:I

    .line 137
    new-instance v4, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v4}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v4, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    .line 138
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mDrmInitData:[B

    .line 142
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mCurntSchemeUUID:Ljava/util/UUID;

    .line 145
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mPrefList:Ljava/util/LinkedList;

    .line 146
    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->useDrmScheme:I

    .line 147
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseTasks:Ljava/util/ArrayList;

    .line 148
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseList:Ljava/util/Set;

    .line 149
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v4, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mDeviceApiLevel:I

    .line 150
    iput-boolean v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mISSUE_INIT_ERROR:Z

    const/4 v4, 0x1

    .line 153
    iput-boolean v4, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mKeyTypeStream:Z

    .line 154
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseInfo:Ljava/lang/String;

    .line 155
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mHeader:Ljava/lang/String;

    .line 156
    iput-boolean v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mEnablePersistentLcs:Z

    .line 1047
    iput-wide v2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->nativeContext:J

    return-void
.end method

.method private InitStoredLicense([B)J
    .locals 3

    .line 981
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 982
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mHeader:Ljava/lang/String;

    .line 984
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mDrmAdapter:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;

    if-nez p1, :cond_0

    const-wide/16 v0, 0x100

    return-wide v0

    .line 985
    :cond_0
    invoke-virtual {p1, v0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->checkRightStatus(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    const-wide/16 v0, 0x4

    return-wide v0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const-wide/16 v0, 0x4000

    return-wide v0

    :cond_2
    const/4 v0, 0x1

    const-wide/32 v1, 0x8000

    if-ne p1, v0, :cond_3

    :cond_3
    return-wide v1
.end method

.method static synthetic access$000(Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;J)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->updateState(J)V

    return-void
.end method

.method static synthetic access$100(Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;)Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mDrmAdapter:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;[BZ)I
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->doLicenseAcquisition([BZ)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;)Ljava/lang/String;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->propergateError()V

    return-void
.end method

.method static synthetic access$500(Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->setDrmInitData()V

    return-void
.end method

.method private acquireLicense([B)Ljava/lang/String;
    .locals 6

    .line 732
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->getState()J

    move-result-wide v0

    const-wide/16 v2, 0x40

    and-long/2addr v0, v2

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    return-object v2

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseRetriever:Lcom/visualon/OSMPPlayer/VOOSMPLicenseRetriever;

    const-string v1, ""

    if-nez v0, :cond_5

    .line 736
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;

    invoke-direct {v0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;-><init>()V

    .line 737
    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mProtectionHeader:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;

    if-eqz v3, :cond_1

    .line 738
    invoke-virtual {v3}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->getKEYLEN()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->setKEYLEN(I)V

    .line 739
    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mProtectionHeader:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;

    invoke-virtual {v3}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->getKID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->setKID(Ljava/lang/String;)V

    .line 740
    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mProtectionHeader:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;

    invoke-virtual {v3}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->getLA_URL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->setLA_URL(Ljava/lang/String;)V

    .line 741
    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mProtectionHeader:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;

    invoke-virtual {v3}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->getLUI_URL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->setLUI_URL(Ljava/lang/String;)V

    .line 742
    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mProtectionHeader:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;

    invoke-virtual {v3}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->getDS_ID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->setDS_ID(Ljava/lang/String;)V

    .line 744
    :cond_1
    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLA_URL:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 745
    invoke-virtual {v0, v3}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->setLA_URL(Ljava/lang/String;)V

    goto :goto_0

    .line 746
    :cond_2
    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mProtectionHeader:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;

    if-nez v3, :cond_3

    .line 747
    invoke-virtual {v0, v1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->setLA_URL(Ljava/lang/String;)V

    .line 749
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLA_request_properties:Ljava/util/Map;

    if-eqz v3, :cond_4

    .line 750
    invoke-virtual {v0, v3}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->setLA_COOKIE(Ljava/util/Map;)V

    .line 751
    :cond_4
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseRetriever:Lcom/visualon/OSMPPlayer/VOOSMPLicenseRetriever;

    .line 755
    :cond_5
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->useDrmScheme:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_6

    .line 756
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseRetriever:Lcom/visualon/OSMPPlayer/VOOSMPLicenseRetriever;

    iget-object v4, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mProtectionHeader:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;

    invoke-virtual {v4}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->getProtectionHeader()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, p1}, Lcom/visualon/OSMPPlayer/VOOSMPLicenseRetriever;->acquireLicense(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 757
    :cond_6
    iget-object v4, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseRetriever:Lcom/visualon/OSMPPlayer/VOOSMPLicenseRetriever;

    instance-of v5, v4, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;

    if-eqz v5, :cond_7

    .line 758
    check-cast v4, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;

    invoke-static {v4, p1, v0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;->access$700(Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$VOLicRetrieverImpl;[BI)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 760
    :cond_7
    invoke-interface {v4, v2, p1}, Lcom/visualon/OSMPPlayer/VOOSMPLicenseRetriever;->acquireLicense(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    .line 763
    :goto_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseRetriever:Lcom/visualon/OSMPPlayer/VOOSMPLicenseRetriever;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPLicenseRetriever;->getErrorCode()I

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_c

    const-string v0, "DRMKR License acquisition failed\n"

    .line 765
    iget-object v5, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseRetriever:Lcom/visualon/OSMPPlayer/VOOSMPLicenseRetriever;

    invoke-interface {v5}, Lcom/visualon/OSMPPlayer/VOOSMPLicenseRetriever;->getErrorCode()I

    move-result v5

    if-eq v5, v3, :cond_a

    const/4 v3, 0x2

    if-eq v5, v3, :cond_9

    const/4 v3, 0x3

    if-eq v5, v3, :cond_8

    .line 777
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "UNKNOWN ERROR : "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 773
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "CLIENT ERROR : "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 770
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "SERVER ERROR : "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 767
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "HTTP CONNECTION ERROR : "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 780
    :goto_2
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 781
    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 783
    :cond_b
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_d

    .line 784
    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_DRM_FAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->getValue()I

    move-result v1

    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseRetriever:Lcom/visualon/OSMPPlayer/VOOSMPLicenseRetriever;

    invoke-interface {v3}, Lcom/visualon/OSMPPlayer/VOOSMPLicenseRetriever;->getErrorCode()I

    move-result v3

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 785
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 791
    :cond_c
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->TAG:Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "DRMKR post req sucessful"

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    :goto_3
    return-object p1
.end method

.method private acquire_rights(Ljava/lang/String;Z)I
    .locals 3

    .line 695
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mDrmAdapter:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;

    .line 697
    iget-boolean v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mIsUseMediaDrm:Z

    if-eqz v1, :cond_0

    .line 698
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mCustomData:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->generateLicenseChallenge(Ljava/lang/String;Ljava/lang/String;Z)[B

    move-result-object p1

    goto :goto_0

    .line 701
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mProtectionHeader:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->getBase64ByteHeader()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 702
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mDrmAdapter:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mCustomData:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->generateLicenseChallenge(Ljava/lang/String;Ljava/lang/String;Z)[B

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 707
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "DRMKR seed challenge to LA_url"

    invoke-static {p2, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 708
    invoke-direct {p0, p1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->acquireLicense([B)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 710
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->TAG:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "DRMKR get response from LA_url"

    invoke-static {p2, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 711
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mDrmAdapter:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;

    invoke-virtual {p2, p1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->processLicenseResponse(Ljava/lang/String;)I

    move-result p1

    .line 712
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->TAG:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "DRMKR processLicenseResponse finished"

    invoke-static {p2, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 713
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mOverdueSoonDrmSessionID:[B

    if-eqz p2, :cond_2

    .line 715
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mDrmAdapter:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;

    invoke-virtual {v1, p2}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->closeSessionByID([B)V

    const/4 p2, 0x0

    .line 716
    iput-object p2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mOverdueSoonDrmSessionID:[B

    .line 717
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->TAG:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DRMKR delete old session"

    invoke-static {p2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 718
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseTasks:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 719
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseList:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->clear()V

    const-wide/16 v0, 0x20

    .line 720
    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->updateState(J)V

    goto :goto_1

    :cond_1
    const/16 p1, -0x7d0

    :cond_2
    :goto_1
    return p1
.end method

.method private asyncDoLicenseAcquisition([BZJZ)I
    .locals 4

    .line 611
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DRMKR  asyncDoLicenseAcquisition ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mMediaDrmSessionID:[B

    invoke-direct {p0, v2}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " key_rotation? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 612
    invoke-static {p1, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    .line 613
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 614
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DRMKR [ASYNC] LicenseSize: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseList:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " should_store:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " execute: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1, v1, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 616
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseList:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 618
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "DRMKR "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " Do not need add to tasklist"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v2, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 622
    :cond_0
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mDrmAdapter:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;

    if-eqz p1, :cond_1

    if-eqz p5, :cond_1

    .line 623
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mMediaDrmSessionID:[B

    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mOverdueSoonDrmSessionID:[B

    .line 627
    :try_start_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mCurntSchemeUUID:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->initDrmStack(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mMediaDrmSessionID:[B

    .line 629
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DRMKR Create a new session ID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mMediaDrmSessionID:[B

    invoke-direct {p0, v3}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1, v1, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 631
    invoke-virtual {p1}, Landroid/media/UnsupportedSchemeException;->printStackTrace()V

    .line 635
    :cond_1
    :goto_0
    new-instance p1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$AsyncLicenseAcquisition;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$AsyncLicenseAcquisition;-><init>(Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$1;)V

    .line 636
    iput-boolean p2, p1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$AsyncLicenseAcquisition;->should_store_license:Z

    .line 637
    iput-wide p3, p1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$AsyncLicenseAcquisition;->id:J

    .line 638
    iput-boolean p5, p1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$AsyncLicenseAcquisition;->key_rotation:Z

    .line 639
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseTasks:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_2

    .line 642
    iget-object p3, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseTasks:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 644
    :cond_2
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseTasks:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 646
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseTasks:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "DRMKR execute task length "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseTasks:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v2, [Ljava/lang/Object;

    invoke-static {p2, p3, p4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    aput-object v0, p2, v2

    .line 648
    invoke-virtual {p1, p2}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$AsyncLicenseAcquisition;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v2
.end method

.method private deleteLicense()J
    .locals 2

    .line 1019
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mDrmAdapter:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->deleteLicense(Ljava/lang/String;)I

    const-wide/16 v0, 0x4

    return-wide v0
.end method

.method private doLicenseAcquisition([BZ)I
    .locals 4

    .line 654
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "DRMKR [BEGIN] doLicenseAcquisition"

    invoke-static {v0, v3, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 656
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 657
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mHeader:Ljava/lang/String;

    .line 659
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 660
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "header :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 664
    :cond_0
    iget p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->useDrmScheme:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 665
    new-instance p1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;

    invoke-direct {p1, v0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mProtectionHeader:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;

    .line 666
    new-instance p1, Ljava/lang/String;

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mProtectionHeader:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->getBase64ByteHeader()[B

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>([B)V

    .line 668
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mHeader:Ljava/lang/String;

    .line 671
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mDrmAdapter:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;

    invoke-virtual {v2, p1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->checkRightStatus(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 674
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mDrmAdapter:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;

    invoke-virtual {p1, v0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->checkRightStatus(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    :goto_0
    if-eqz p1, :cond_3

    .line 678
    invoke-direct {p0, v0, p2}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->acquire_rights(Ljava/lang/String;Z)I

    move-result p1

    goto :goto_1

    .line 682
    :cond_3
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 683
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->TAG:Ljava/lang/String;

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "[doAcquireLicense] RIGHTS_VALID"

    invoke-static {p1, v0, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    const/4 p1, 0x0

    .line 687
    :goto_1
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 688
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->TAG:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "DRMKR [END] doLicenseAcquisition"

    invoke-static {p2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    return p1
.end method

.method private getLicenseInfo()J
    .locals 4

    .line 998
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mDrmAdapter:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->getLicenseDetails(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x2000

    return-wide v0

    .line 1003
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1004
    invoke-virtual {v0}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1007
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1009
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 1013
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseInfo:Ljava/lang/String;

    const-wide/16 v0, 0x4

    return-wide v0
.end method

.method private getState()J
    .locals 3

    .line 917
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 918
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mState:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 920
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-wide v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private init()Z
    .locals 5

    .line 208
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseManager:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 210
    :cond_0
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->nativeLibPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->loadJNI(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 214
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->uninitContext()V

    .line 215
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->nativeInit()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 217
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 218
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call native function error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    const-wide/16 v0, 0x1

    .line 223
    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->updateState(J)V

    const/4 v0, 0x1

    return v0
.end method

.method private isUUIDSupported([B)J
    .locals 13

    const-wide/16 v0, 0x2000

    if-eqz p1, :cond_e

    .line 412
    array-length v2, p1

    const/16 v3, 0x10

    if-eq v2, v3, :cond_0

    goto/16 :goto_3

    .line 414
    :cond_0
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->getState()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_d

    .line 415
    iget-boolean v2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mISSUE_INIT_ERROR:Z

    if-eqz v2, :cond_1

    goto/16 :goto_2

    .line 418
    :cond_1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 419
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    .line 420
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    .line 421
    new-instance p1, Ljava/util/UUID;

    invoke-direct {p1, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    .line 424
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mCurntSchemeUUID:Ljava/util/UUID;

    const-wide/16 v3, 0x4

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-wide v3

    .line 427
    :cond_2
    sget-object v2, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-virtual {p1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-wide/16 v6, 0x80

    const/4 v8, 0x1

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->useDrmScheme:I

    if-eq v5, v8, :cond_3

    return-wide v6

    .line 429
    :cond_3
    sget-object v5, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-virtual {p1, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x2

    if-eqz v9, :cond_4

    iget v9, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->useDrmScheme:I

    if-eq v9, v10, :cond_4

    return-wide v6

    .line 432
    :cond_4
    iget-boolean v6, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mIsUseMediaDrm:Z

    const-wide/16 v11, 0x200

    const/4 v7, 0x0

    if-eqz v6, :cond_6

    .line 434
    :try_start_0
    iget-object v6, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mDrmAdapter:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->initDrmStack(Ljava/lang/String;)[B

    move-result-object v6

    iput-object v6, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mMediaDrmSessionID:[B

    .line 435
    iget v9, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->useDrmScheme:I

    if-ne v9, v10, :cond_7

    if-eqz v6, :cond_7

    .line 436
    array-length v9, v6

    new-array v9, v9, [B

    iput-object v9, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mDrmInitData:[B

    .line 437
    array-length v10, v6

    invoke-static {v6, v7, v9, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v6, v8, [B

    .line 438
    iput-object v6, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mSwappedKid:[B

    aput-byte v7, v6, v7

    const-wide/16 v8, 0x20

    .line 440
    invoke-direct {p0, v8, v9}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->updateState(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 444
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 445
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->TAG:Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/Object;

    const-string v1, "[DRM_ERROR]: Unsupported scheme"

    invoke-static {p1, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    return-wide v11

    .line 451
    :cond_6
    iget-object v6, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mDrmAdapter:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;

    invoke-virtual {v6}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->initDrmStack()I

    move-result v6

    iput v6, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mDrmManagerClientSessionID:I

    .line 454
    :cond_7
    :goto_0
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mCurntSchemeUUID:Ljava/util/UUID;

    .line 456
    iget-object v6, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mDrmAdapter:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;

    invoke-virtual {v6, p1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->isCryptoSchemeSupported(Ljava/util/UUID;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 458
    iget v6, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mDrmManagerClientSessionID:I

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mMediaDrmSessionID:[B

    if-nez v6, :cond_8

    return-wide v0

    .line 462
    :cond_8
    iget-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mIsUseMediaDrm:Z

    if-eqz v0, :cond_b

    .line 463
    invoke-virtual {p1, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "[DRM SCHEME]"

    if-eqz v0, :cond_9

    .line 464
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mDrmAdapter:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;

    sget-object v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;->DRM_TYPE_WIDEVINE:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;

    invoke-virtual {p1, v0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->setDrmScheme(Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;)V

    new-array p1, v7, [Ljava/lang/Object;

    const-string v0, "Widevine!"

    .line 465
    invoke-static {v1, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 467
    :cond_9
    invoke-virtual {p1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 468
    iget-boolean p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mKeyTypeStream:Z

    if-eqz p1, :cond_a

    .line 469
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mDrmAdapter:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;

    sget-object v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;->DRM_TYPE_PLAYREADY_STREAM:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;

    invoke-virtual {p1, v0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->setDrmScheme(Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;)V

    new-array p1, v7, [Ljava/lang/Object;

    const-string v0, "PlayReady key type streaming"

    .line 470
    invoke-static {v1, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 473
    :cond_a
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mDrmAdapter:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;

    sget-object v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;->DRM_TYPE_PLAYREADY:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;

    invoke-virtual {p1, v0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->setDrmScheme(Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;)V

    new-array p1, v7, [Ljava/lang/Object;

    const-string v0, "PlayReady key type offline"

    .line 474
    invoke-static {v1, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    :goto_1
    return-wide v3

    :cond_c
    return-wide v11

    :cond_d
    :goto_2
    const-wide/16 v0, 0x100

    :cond_e
    :goto_3
    return-wide v0
.end method

.method private static loadJNI(Ljava/lang/String;)Z
    .locals 1

    .line 1050
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->isJniLoaded:Z

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const-string v0, "voDRMMediaCrypto"

    .line 1052
    invoke-static {p0, v0}, Lcom/visualon/OSMPUtils/voLoadJNI;->loadProductLib(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->isJniLoaded:Z

    if-eqz p0, :cond_1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private native nativeInit()V
.end method

.method private native nativeUninit(J)V
.end method

.method public static newLicenseManager()Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;
    .locals 1

    .line 178
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseManager:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    invoke-direct {v0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;-><init>()V

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseManager:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    .line 181
    :cond_0
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseManager:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    return-object v0
.end method

.method public static newLicenseManager(Landroid/content/Context;)Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;
    .locals 1

    .line 185
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseManager:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    invoke-direct {v0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;-><init>()V

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseManager:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    .line 188
    :cond_0
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseManager:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    invoke-virtual {v0, p0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->setContext(Landroid/content/Context;)V

    .line 189
    sget-object p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseManager:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    return-object p0
.end method

.method public static newLicenseManager(Landroid/content/Context;Ljava/lang/String;)Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;
    .locals 1

    .line 193
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseManager:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    invoke-direct {v0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;-><init>()V

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseManager:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    .line 197
    :cond_0
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseManager:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    invoke-virtual {v0, p0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->setContext(Landroid/content/Context;)V

    .line 198
    sput-object p1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->nativeLibPath:Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseManager:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->init()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 p0, 0x0

    .line 201
    sput-object p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseManager:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    .line 203
    :cond_2
    sget-object p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseManager:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    return-object p0
.end method

.method public static newLicenseMangaer()Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 162
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseManager:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    invoke-direct {v0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;-><init>()V

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseManager:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    .line 165
    :cond_0
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseManager:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    return-object v0
.end method

.method public static newLicenseMangaer(Landroid/content/Context;)Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 170
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseManager:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    invoke-direct {v0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;-><init>()V

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseManager:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    .line 173
    :cond_0
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseManager:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    invoke-virtual {v0, p0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->setContext(Landroid/content/Context;)V

    .line 174
    sget-object p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseManager:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    return-object p0
.end method

.method private propergateError()V
    .locals 3

    .line 570
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseRetriever:Lcom/visualon/OSMPPlayer/VOOSMPLicenseRetriever;

    if-nez v0, :cond_0

    return-void

    .line 574
    :cond_0
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPLicenseRetriever;->getErrorCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x10000000

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 590
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->TAG:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "updateState(UNKNOWN_ERROR)"

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x2000

    .line 591
    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->updateState(J)V

    goto :goto_0

    .line 577
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->TAG:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "updateState(CLIENT_ERROR)"

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x400

    .line 578
    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->updateState(J)V

    goto :goto_0

    .line 581
    :cond_3
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->TAG:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "updateState(SERVER_ERROR)"

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x800

    .line 582
    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->updateState(J)V

    goto :goto_0

    .line 585
    :cond_4
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->TAG:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "updateState(CONNECT_ERROR)"

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x1000

    .line 586
    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->updateState(J)V

    :goto_0
    return-void
.end method

.method private queryKeyStatus(J)J
    .locals 7

    .line 1029
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseTasks:Ljava/util/ArrayList;

    const-wide/16 v1, 0x20

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1033
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$AsyncLicenseAcquisition;

    .line 1034
    iget-wide v4, v3, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$AsyncLicenseAcquisition;->id:J

    cmp-long v6, v4, p1

    if-nez v6, :cond_1

    .line 1035
    invoke-virtual {v3}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$AsyncLicenseAcquisition;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object p1

    sget-object p2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    const-wide/16 v1, 0x8

    :cond_3
    :goto_0
    return-wide v1
.end method

.method private renewLicense()J
    .locals 2

    .line 1024
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mHeader:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->acquire_rights(Ljava/lang/String;Z)I

    const-wide/16 v0, 0x4

    return-wide v0
.end method

.method private reset()V
    .locals 4

    .line 346
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "RESET"

    invoke-static {v0, v3, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 347
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mCurntSchemeUUID:Ljava/util/UUID;

    .line 349
    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mDrmManagerClientSessionID:I

    .line 350
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mProtectionHeader:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;

    .line 351
    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->useDrmScheme:I

    .line 352
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mSwappedKid:[B

    .line 353
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mCustomData:Ljava/lang/String;

    .line 354
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseRetriever:Lcom/visualon/OSMPPlayer/VOOSMPLicenseRetriever;

    .line 355
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mDrmInitData:[B

    .line 356
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLA_URL:Ljava/lang/String;

    .line 357
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLA_request_properties:Ljava/util/Map;

    .line 358
    iput-boolean v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mISSUE_INIT_ERROR:Z

    .line 360
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mDrmAdapter:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;

    if-eqz v1, :cond_1

    .line 361
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mOverdueSoonDrmSessionID:[B

    if-eqz v2, :cond_0

    .line 362
    invoke-virtual {v1, v2}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->closeSessionByID([B)V

    .line 363
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mOverdueSoonDrmSessionID:[B

    .line 365
    :cond_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mDrmAdapter:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->closeSession()V

    .line 366
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mDrmAdapter:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->uninitDrmStack()I

    .line 367
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mDrmAdapter:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;

    :cond_1
    return-void
.end method

.method private setDrmInitData()V
    .locals 11

    .line 927
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->getState()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 932
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "setDrmInitData"

    invoke-static {v0, v3, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 933
    iget-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mIsUseMediaDrm:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 935
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->useDrmScheme:I

    if-ne v0, v2, :cond_1

    const/16 v0, 0x10

    new-array v2, v0, [B

    .line 936
    iput-object v2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mSwappedKid:[B

    .line 937
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mProtectionHeader:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->getSwapKid()[B

    move-result-object v2

    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mSwappedKid:[B

    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 938
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mMediaDrmSessionID:[B

    array-length v2, v0

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mDrmInitData:[B

    .line 939
    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_4

    :cond_1
    new-array v0, v2, [B

    .line 942
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mSwappedKid:[B

    aput-byte v1, v0, v1

    goto :goto_4

    .line 948
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mProtectionHeader:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->getByteHeader()[B

    move-result-object v0

    const-string v3, "<header>"

    const-string v4, "</header>"

    const-string v5, "<sessionid>"

    const-string v6, "</sessionid>"

    .line 949
    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    .line 951
    array-length v4, v0

    const/4 v5, 0x4

    add-int/2addr v4, v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_3

    .line 953
    aget-object v7, v3, v6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 954
    :cond_3
    new-array v4, v4, [B

    iput-object v4, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mDrmInitData:[B

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v4, v5, :cond_7

    .line 956
    aget-object v7, v3, v4

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 957
    iget-object v8, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mDrmInitData:[B

    array-length v9, v7

    invoke-static {v7, v1, v8, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 958
    array-length v7, v7

    add-int/2addr v6, v7

    if-nez v4, :cond_4

    .line 960
    iget-object v7, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mDrmInitData:[B

    array-length v8, v0

    invoke-static {v0, v1, v7, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 961
    array-length v7, v0

    add-int/2addr v6, v7

    goto :goto_3

    :cond_4
    const/4 v7, 0x2

    if-ne v4, v7, :cond_6

    new-array v7, v5, [B

    .line 964
    iget v8, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mDrmManagerClientSessionID:I

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v5, :cond_5

    and-int/lit16 v10, v8, 0xff

    int-to-byte v10, v10

    .line 965
    aput-byte v10, v7, v9

    shr-int/lit8 v8, v8, 0x8

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 968
    :cond_5
    iget-object v8, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mDrmInitData:[B

    invoke-static {v7, v1, v8, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v6, v6, 0x4

    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    new-array v0, v2, [B

    .line 973
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mSwappedKid:[B

    aput-byte v1, v0, v1

    :goto_4
    const-wide/16 v0, 0x20

    .line 977
    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->updateState(J)V

    return-void
.end method

.method private setInitData([BZJZ)J
    .locals 5

    .line 879
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[BEGIN] setInitData"

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 883
    :cond_0
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->getState()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const-wide/16 p1, 0x8

    return-wide p1

    .line 894
    :cond_1
    invoke-direct/range {p0 .. p5}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->asyncDoLicenseAcquisition([BZJZ)I

    const-wide/16 p1, 0x4

    return-wide p1
.end method

.method private toString([B)Ljava/lang/String;
    .locals 4

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " byte[]: "

    .line 600
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 602
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 603
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xf0

    shr-int/lit8 v2, v2, 0x4

    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 604
    aget-byte v2, p1, v1

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    .line 605
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 608
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private uninitContext()V
    .locals 5

    .line 372
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->nativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 373
    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->nativeUninit(J)V

    .line 374
    iput-wide v2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->nativeContext:J

    :cond_0
    return-void
.end method

.method private updateState(J)V
    .locals 12

    .line 806
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    long-to-int p2, p1

    const/4 p1, 0x1

    const-wide/16 v0, 0x40

    const-wide/16 v2, 0x0

    if-eqz p2, :cond_12

    if-eq p2, p1, :cond_11

    const/4 p1, 0x2

    const-wide/16 v4, 0x2

    if-eq p2, p1, :cond_10

    const/4 p1, 0x4

    const-wide/16 v6, 0x8

    const-wide/16 v8, 0x4

    const-wide/16 v10, 0x10

    if-eq p2, p1, :cond_d

    const/16 p1, 0x8

    if-eq p2, p1, :cond_a

    const/16 p1, 0x10

    const-wide/16 v6, 0x20

    if-eq p2, p1, :cond_8

    const/16 p1, 0x20

    if-eq p2, p1, :cond_5

    const/16 p1, 0x40

    if-eq p2, p1, :cond_4

    const/16 p1, 0x400

    if-eq p2, p1, :cond_3

    const/16 p1, 0x800

    if-eq p2, p1, :cond_2

    const/16 p1, 0x1000

    if-eq p2, p1, :cond_1

    const/16 p1, 0x2000

    if-eq p2, p1, :cond_0

    goto/16 :goto_2

    .line 864
    :cond_0
    iget-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mState:J

    const-wide/16 v0, 0x2000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mState:J

    goto/16 :goto_2

    .line 861
    :cond_1
    iget-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mState:J

    const-wide/16 v0, 0x1000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mState:J

    goto/16 :goto_2

    .line 858
    :cond_2
    iget-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mState:J

    const-wide/16 v0, 0x800

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mState:J

    goto/16 :goto_2

    .line 855
    :cond_3
    iget-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mState:J

    const-wide/16 v0, 0x400

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mState:J

    goto/16 :goto_2

    .line 814
    :cond_4
    iget-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mState:J

    xor-long/2addr p1, v4

    iput-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mState:J

    or-long/2addr p1, v0

    .line 815
    iput-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mState:J

    goto/16 :goto_2

    .line 848
    :cond_5
    iget-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mState:J

    and-long v0, p1, v10

    cmp-long v4, v0, v2

    if-lez v4, :cond_6

    xor-long/2addr p1, v10

    .line 849
    iput-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mState:J

    .line 850
    :cond_6
    iget-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mState:J

    and-long v0, p1, v8

    cmp-long v4, v0, v2

    if-lez v4, :cond_7

    xor-long/2addr p1, v8

    .line 851
    iput-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mState:J

    .line 852
    :cond_7
    iget-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mState:J

    or-long/2addr p1, v6

    iput-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mState:J

    goto :goto_2

    .line 843
    :cond_8
    iget-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mState:J

    and-long v0, p1, v6

    cmp-long v4, v0, v2

    if-lez v4, :cond_9

    xor-long/2addr p1, v6

    .line 844
    iput-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mState:J

    .line 845
    :cond_9
    iget-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mState:J

    or-long/2addr p1, v10

    iput-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mState:J

    goto :goto_2

    .line 835
    :cond_a
    iget-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mState:J

    and-long v0, p1, v10

    cmp-long v4, v0, v2

    if-lez v4, :cond_b

    xor-long/2addr p1, v10

    .line 836
    iput-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mState:J

    .line 838
    :cond_b
    iget-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mState:J

    and-long v0, p1, v8

    cmp-long v4, v0, v2

    if-lez v4, :cond_c

    xor-long/2addr p1, v8

    .line 839
    iput-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mState:J

    .line 840
    :cond_c
    iget-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mState:J

    or-long/2addr p1, v6

    iput-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mState:J

    goto :goto_2

    .line 828
    :cond_d
    iget-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mState:J

    and-long v0, p1, v6

    cmp-long v4, v0, v2

    if-lez v4, :cond_e

    xor-long/2addr p1, v6

    .line 829
    iput-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mState:J

    .line 830
    :cond_e
    iget-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mState:J

    and-long v0, p1, v10

    cmp-long v4, v0, v2

    if-lez v4, :cond_f

    xor-long/2addr p1, v10

    .line 831
    iput-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mState:J

    .line 832
    :cond_f
    iget-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mState:J

    or-long/2addr p1, v8

    iput-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mState:J

    goto :goto_2

    .line 825
    :cond_10
    iput-wide v4, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mState:J

    goto :goto_2

    .line 818
    :cond_11
    iget-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mState:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mState:J

    goto :goto_2

    .line 810
    :cond_12
    iget-wide v4, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mState:J

    and-long/2addr v4, v0

    cmp-long p2, v4, v2

    if-lez p2, :cond_13

    goto :goto_0

    :cond_13
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_14

    goto :goto_1

    :cond_14
    move-wide v0, v2

    .line 811
    :goto_1
    iput-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mState:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 872
    :goto_2
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method


# virtual methods
.method public addPreference(Ljava/util/HashMap;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 390
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mPrefList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public close()V
    .locals 6

    .line 311
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mPlayer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATE;->VO_OSMP_STATE_PLAYING:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATE;

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mPlayer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->getPlayerState()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATE;

    move-result-object v2

    if-ne v0, v2, :cond_0

    .line 312
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "player is playing, return directly"

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 317
    :cond_0
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->getState()J

    move-result-wide v2

    .line 318
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "check LicenseManager state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v4, 0x10

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 320
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseTasks:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 321
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseRetriever:Lcom/visualon/OSMPPlayer/VOOSMPLicenseRetriever;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 322
    invoke-interface {v0, v2}, Lcom/visualon/OSMPPlayer/VOOSMPLicenseRetriever;->setCancel(Z)V

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$AsyncLicenseAcquisition;

    .line 324
    invoke-virtual {v3, v2}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager$AsyncLicenseAcquisition;->cancel(Z)Z

    goto :goto_0

    .line 327
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mDrmAdapter:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->notifyAbort()V

    const-wide/16 v2, 0x40

    .line 328
    invoke-direct {p0, v2, v3}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->updateState(J)V

    .line 329
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->TAG:Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "USER_ABORT"

    invoke-static {v0, v3, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->propergateError()V

    const-wide/16 v2, 0x5

    .line 332
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 334
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 337
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 338
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 340
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "CLOSED"

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    invoke-direct {p0, v4, v5}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->updateState(J)V

    .line 342
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->reset()V

    return-void
.end method

.method public enablePersistentLcs(Z)V
    .locals 0

    .line 503
    iput-boolean p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mEnablePersistentLcs:Z

    return-void
.end method

.method public getContext()J
    .locals 2

    .line 406
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->nativeContext:J

    return-wide v0
.end method

.method public getPreference()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Ljava/util/HashMap;",
            ">;"
        }
    .end annotation

    .line 395
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mPrefList:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getVenderID()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public open()V
    .locals 8

    .line 229
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->close()V

    .line 231
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mPrefList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mPrefList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "DRM_TYPE"

    .line 235
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 236
    iput v6, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->useDrmScheme:I

    goto :goto_0

    .line 238
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 239
    iput v3, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->useDrmScheme:I

    :goto_0
    const-string v1, "LA_URL"

    .line 245
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLA_URL:Ljava/lang/String;

    .line 246
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLA_URL:Ljava/lang/String;

    :goto_1
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLA_URL:Ljava/lang/String;

    const-string v1, "CUSTOM_DATA"

    .line 247
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mCustomData:Ljava/lang/String;

    .line 248
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, v2

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mCustomData:Ljava/lang/String;

    :goto_2
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mCustomData:Ljava/lang/String;

    const-string v1, "LICENSE_RETRIEVER"

    .line 249
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/visualon/OSMPPlayer/VOOSMPLicenseRetriever;

    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLicenseRetriever:Lcom/visualon/OSMPPlayer/VOOSMPLicenseRetriever;

    const-string v1, "KEY_TYPE_OFFLINE"

    .line 250
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    if-nez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    .line 251
    :goto_4
    iput-boolean v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mKeyTypeStream:Z

    const-string v1, "LA_REQUEST_PROPERTIES"

    .line 252
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mLA_request_properties:Ljava/util/Map;

    goto :goto_5

    :cond_6
    return-void

    .line 256
    :cond_7
    :goto_5
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mPrefList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 269
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mDeviceApiLevel:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_8

    .line 270
    iput-boolean v3, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mIsUseMediaDrm:Z

    goto :goto_6

    .line 272
    :cond_8
    iput-boolean v3, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mISSUE_INIT_ERROR:Z

    .line 276
    :goto_6
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mIsAmzn:Z

    if-eqz v0, :cond_9

    .line 277
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mIsAmznOldDevice:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->useDrmScheme:I

    if-ne v0, v3, :cond_9

    .line 278
    iput-boolean v4, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mIsUseMediaDrm:Z

    .line 279
    iput-boolean v4, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mISSUE_INIT_ERROR:Z

    .line 283
    :cond_9
    iget-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mISSUE_INIT_ERROR:Z

    if-eqz v0, :cond_a

    .line 284
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->TAG:Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "[DRM_JAVA] ISSUE_INIT_ERROR!"

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    .line 287
    :cond_a
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->TAG:Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/Object;

    const-string v3, "[DRM_JAVA] DEVICE SUPPORTED!"

    invoke-static {v0, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mDrmAdapter:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;

    if-eqz v0, :cond_c

    .line 289
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mPlayer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATE;->VO_OSMP_STATE_PLAYING:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATE;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mPlayer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->getPlayerState()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATE;

    move-result-object v1

    if-ne v0, v1, :cond_b

    .line 290
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->TAG:Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "player is playing, NOT uninitDrmStack..."

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    .line 293
    :cond_b
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mDrmAdapter:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->uninitDrmStack()I

    .line 294
    iput-object v2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mDrmAdapter:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;

    .line 297
    :cond_c
    :goto_7
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mDrmAdapter:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;

    if-nez v0, :cond_d

    .line 298
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mIsUseMediaDrm:Z

    invoke-direct {v0, v1, v2}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mDrmAdapter:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;

    .line 300
    :cond_d
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DrmAdapter enable persistentDrmLcs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mEnablePersistentLcs:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mDrmAdapter:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;

    iget-boolean v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mEnablePersistentLcs:Z

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->enablePersistentLcs(Z)V

    :goto_8
    const-wide/16 v0, 0x2

    .line 303
    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->updateState(J)V

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 488
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setOnEventListener(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;Landroid/os/Handler;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mEventListener:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

    .line 493
    iput-object p2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mEventHandler:Landroid/os/Handler;

    .line 494
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mDrmAdapter:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;

    if-eqz p2, :cond_0

    .line 495
    invoke-virtual {p2, p1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->setOnEventListener(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;)V

    :cond_0
    return-void
.end method

.method public setPlayer(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;)V
    .locals 0

    .line 499
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mPlayer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    return-void
.end method

.method public uninit()V
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mDrmAdapter:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->uninitDrmStack()I

    const/4 v0, 0x0

    .line 382
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->mDrmAdapter:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;

    .line 384
    :cond_0
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->uninitContext()V

    return-void
.end method
