.class Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;
.super Ljava/lang/Object;
.source "VOOSMPAdMgrImpl.java"

# interfaces
.implements Lcom/visualon/OSMPAdMgr/VOOSMPAdMgr;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;,
        Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;,
        Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$EventHandler;
    }
.end annotation


# static fields
.field private static final ADS_AD_VIEW_ERROR_NETWORK_NO_SOURCE:J = 0x2L

.field private static final ADS_AD_VIEW_ERROR_SRC_NOT_SUPPORTED:J = 0x3L

.field private static final ADS_AD_VIEW_ERROR_TIMEOUT:J = 0x2L

.field private static final ADS_AD_VIEW_ERROR_UNKNOWN:J = 0x1L

.field private static final ADS_VPAID_UI_DISABLED:Ljava/lang/String; = "{\"pause\":false, \"mute\":false, \"skipAd\":false, \"learnMore\":false}"

.field private static final LIB_NAME:Ljava/lang/String; = "voAdsMgr"

.field private static final TAG:Ljava/lang/String; = "@@@VOOSMPAdMgrImpl"

.field private static mAdMgr:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl; = null

.field private static mJNILoaded:Z = false

.field private static final msgDrawImgButton:I = 0x1

.field private static final msgEraseImgButton:I = 0x2


# instance fields
.field private mAdEventListener:Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener;

.field private mAdViewPlayer:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

.field private mAdViewPlayerToBeRemoved:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

.field private mAdsCtrlCallback:J

.field private mAdsInfoCallback:J

.field private mAdsService:J

.field private mBm:Landroid/graphics/Bitmap;

.field private mCC:I

.field private mCtxt:Landroid/content/Context;

.field private mDefaultVPAIDUIConf:Ljava/lang/String;

.field private mEventHandler:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$EventHandler;

.field private mHasVPAIDLicense:Z

.field private mHeight:I

.field private mImgBtn:Landroid/widget/ImageButton;

.field private mIsAdViewPaused:Z

.field private mIsContentViewHidden:Z

.field private mLayoutObserveCnt:I

.field private mMaintainRatio:Z

.field private mNativeContext:J

.field private mNextAdViewPlayer:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

.field private mNonLinearClickThroughUrl:Ljava/lang/String;

.field private mNonLinearUrl:Ljava/lang/String;

.field private mParentHeight:I

.field private mParentWidth:I

.field private mPerAdVPAIDUIConf:Ljava/lang/String;

.field private mPlayerSet:Ljava/lang/Object;

.field private mScalable:Z

.field private mTrackingAdaptors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_SDK_ID;",
            "Lcom/visualon/OSMPAdMgr/VOOSMPTrackingAdaptorBase;",
            ">;"
        }
    .end annotation
.end field

.field private mTrackingEventListener:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventListener;

.field private mVPAIDAdWrap:Ljava/lang/String;

.field private mVPAIDPage:Ljava/lang/String;

.field private mView:Landroid/view/View;

.field private mViewIsHidden:Z

.field private mViewTranslationX:F

.field private mWidth:I

.field private mrl:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    new-instance v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    invoke-direct {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;-><init>()V

    sput-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mAdMgr:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mAdEventListener:Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener;

    .line 110
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mTrackingEventListener:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventListener;

    .line 111
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mTrackingAdaptors:Ljava/util/HashMap;

    .line 113
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mPlayerSet:Ljava/lang/Object;

    .line 116
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mCtxt:Landroid/content/Context;

    .line 117
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mView:Landroid/view/View;

    const/4 v1, 0x0

    .line 118
    iput-boolean v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mViewIsHidden:Z

    const/4 v2, 0x0

    .line 119
    iput v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mViewTranslationX:F

    .line 122
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mrl:Landroid/widget/RelativeLayout;

    .line 123
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mImgBtn:Landroid/widget/ImageButton;

    .line 124
    iput v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mCC:I

    .line 125
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mBm:Landroid/graphics/Bitmap;

    .line 126
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNonLinearUrl:Ljava/lang/String;

    .line 127
    iput v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mWidth:I

    .line 128
    iput v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mHeight:I

    .line 129
    iput-boolean v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mScalable:Z

    .line 130
    iput-boolean v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mMaintainRatio:Z

    .line 131
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNonLinearClickThroughUrl:Ljava/lang/String;

    .line 136
    iput-boolean v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mIsContentViewHidden:Z

    .line 137
    iput-boolean v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mIsAdViewPaused:Z

    .line 138
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mVPAIDPage:Ljava/lang/String;

    .line 139
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mVPAIDAdWrap:Ljava/lang/String;

    .line 140
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mAdViewPlayer:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    .line 141
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNextAdViewPlayer:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    .line 142
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mAdViewPlayerToBeRemoved:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    const-string v2, ""

    .line 143
    iput-object v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mDefaultVPAIDUIConf:Ljava/lang/String;

    .line 144
    iput-object v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mPerAdVPAIDUIConf:Ljava/lang/String;

    .line 145
    iput v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mLayoutObserveCnt:I

    .line 146
    iput v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mParentWidth:I

    .line 147
    iput v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mParentHeight:I

    .line 148
    iput-boolean v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mHasVPAIDLicense:Z

    .line 150
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mEventHandler:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$EventHandler;

    return-void
.end method

.method private VPAIDDec(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1603
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v2, 0x0

    .line 1605
    :try_start_0
    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 1606
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    new-array p1, v1, [B

    .line 1609
    :goto_0
    invoke-virtual {v3, p1}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    .line 1610
    invoke-virtual {v0, p1, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 1612
    :cond_0
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 1613
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "@@@VOOSMPAdMgrImpl"

    const-string v1, "VPAIDDec exception"

    .line 1616
    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, ""

    :goto_1
    return-object p1
.end method

.method private abortAdView()V
    .locals 1

    .line 1274
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mAdViewPlayer:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    if-eqz v0, :cond_0

    .line 1275
    invoke-direct {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->destroyAdView(Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;)V

    const/4 v0, 0x0

    .line 1276
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mAdViewPlayer:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;ZZLjava/lang/Object;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->drawImageButton(ZZLjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;Z)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->eraseImageButton(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;)Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mAdViewPlayerToBeRemoved:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;)Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mAdViewPlayerToBeRemoved:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->destroyAdView(Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;)Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNextAdViewPlayer:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;)Ljava/lang/String;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mPerAdVPAIDUIConf:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;Z)Z
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mIsAdViewPaused:Z

    return p1
.end method

.method static synthetic access$200(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;)Landroid/view/View;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;)Z
    .locals 0

    .line 93
    iget-boolean p0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mViewIsHidden:Z

    return p0
.end method

.method static synthetic access$302(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;Z)Z
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mViewIsHidden:Z

    return p1
.end method

.method static synthetic access$400(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;)Landroid/content/Context;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mCtxt:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;)F
    .locals 0

    .line 93
    iget p0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mViewTranslationX:F

    return p0
.end method

.method static synthetic access$502(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;F)F
    .locals 0

    .line 93
    iput p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mViewTranslationX:F

    return p1
.end method

.method static synthetic access$602(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mBm:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$700(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;)Ljava/lang/String;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNonLinearClickThroughUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;)J
    .locals 2

    .line 93
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNativeContext:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;JIJ)V
    .locals 0

    .line 93
    invoke-direct/range {p0 .. p5}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->nativeSendAdViewEvent(JIJ)V

    return-void
.end method

.method private checkSDKLevel(I)Z
    .locals 1

    .line 1201
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private clearAdView()V
    .locals 2

    .line 1281
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->unhideContentView()V

    .line 1282
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mAdViewPlayerToBeRemoved:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1283
    invoke-direct {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->destroyAdView(Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;)V

    .line 1284
    iput-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mAdViewPlayerToBeRemoved:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    .line 1286
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mAdViewPlayer:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    if-eqz v0, :cond_1

    .line 1287
    invoke-direct {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->destroyAdView(Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;)V

    .line 1288
    iput-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mAdViewPlayer:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    .line 1290
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNextAdViewPlayer:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    if-eqz v0, :cond_2

    .line 1291
    invoke-direct {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->destroyAdView(Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;)V

    .line 1292
    iput-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNextAdViewPlayer:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    :cond_2
    return-void
.end method

.method private destroyAdView(Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;)V
    .locals 0

    .line 1338
    invoke-virtual {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;->stop()V

    .line 1339
    invoke-virtual {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;->destroy()V

    return-void
.end method

.method private drawImageButton(ZZLjava/lang/Object;)V
    .locals 7

    .line 1457
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mView:Landroid/view/View;

    const-string v1, "@@@VOOSMPAdMgrImpl"

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mCtxt:Landroid/content/Context;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNonLinearUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_c

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "drawImageButton starts"

    .line 1462
    invoke-static {v1, v3, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p2, :cond_3

    .line 1465
    iget-object p2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mrl:Landroid/widget/RelativeLayout;

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    .line 1467
    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 1469
    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 p1, 0x1

    if-nez p3, :cond_4

    const/4 p2, 0x1

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    .line 1476
    :goto_1
    invoke-direct {p0, p2}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->eraseImageButton(Z)V

    .line 1478
    new-instance p2, Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mCtxt:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mImgBtn:Landroid/widget/ImageButton;

    if-nez p3, :cond_5

    .line 1482
    iget-object p2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mBm:Landroid/graphics/Bitmap;

    if-nez p2, :cond_5

    .line 1483
    iget-object p2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNonLinearUrl:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->setImageBitmapFromUrl(Ljava/lang/String;)V

    .line 1485
    :cond_5
    :goto_2
    iget-object p2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mBm:Landroid/graphics/Bitmap;

    if-nez p2, :cond_6

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "Wait for ImageButton"

    .line 1486
    invoke-static {v1, v0, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 1490
    :cond_6
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    .line 1491
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mBm:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 1492
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BITMAP width "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mBm:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " height "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mBm:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1495
    iget-object v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 1497
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1498
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    .line 1499
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v5

    if-eqz p3, :cond_d

    .line 1501
    check-cast p3, Landroid/content/res/Configuration;

    .line 1502
    iget p3, p3, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, p3, :cond_7

    const/4 p3, 0x1

    goto :goto_3

    :cond_7
    const/4 p3, 0x0

    :goto_3
    if-eqz p3, :cond_a

    .line 1504
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p3

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    if-lt p3, v4, :cond_8

    .line 1505
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p3

    goto :goto_4

    :cond_8
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p3

    :goto_4
    move v4, p3

    .line 1506
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p3

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v5

    if-lt p3, v5, :cond_9

    .line 1507
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p3

    goto :goto_5

    :cond_9
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p3

    :goto_5
    move v5, p3

    goto :goto_7

    .line 1509
    :cond_a
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p3

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    if-lt p3, v4, :cond_b

    .line 1510
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p3

    goto :goto_6

    :cond_b
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p3

    :goto_6
    move v4, p3

    .line 1511
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p3

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v5

    if-lt p3, v5, :cond_c

    .line 1512
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p3

    goto :goto_5

    :cond_c
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p3

    goto :goto_5

    .line 1515
    :cond_d
    :goto_7
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prlpWidth "

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " prlpHeight "

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1, p3, v6}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1522
    iget p3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mWidth:I

    .line 1523
    iget v6, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mHeight:I

    if-lt v6, v5, :cond_f

    if-lt p3, v4, :cond_f

    if-lt v4, v5, :cond_e

    mul-int v6, v6, v4

    .line 1527
    div-int v5, v6, p3

    goto :goto_8

    :cond_e
    mul-int p3, p3, v5

    .line 1530
    div-int v4, p3, v6

    goto :goto_8

    :cond_f
    if-lt v6, v5, :cond_10

    mul-int p3, p3, v5

    .line 1534
    div-int v4, p3, v6

    goto :goto_8

    :cond_10
    if-lt p3, v4, :cond_11

    mul-int v6, v6, v4

    .line 1537
    div-int v5, v6, p3

    goto :goto_8

    :cond_11
    move v4, p3

    move v5, v6

    .line 1541
    :goto_8
    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {p3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1544
    iget-boolean v6, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mScalable:Z

    if-eqz v6, :cond_15

    .line 1547
    iput v5, p3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1548
    iput v4, p3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1555
    iget-boolean v6, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mMaintainRatio:Z

    if-eqz v6, :cond_14

    if-lt v5, v5, :cond_12

    goto :goto_9

    :cond_12
    move v4, v5

    :goto_9
    if-lt p2, v0, :cond_13

    mul-int v0, v0, v4

    .line 1559
    div-int v5, v0, p2

    goto :goto_a

    :cond_13
    mul-int p2, p2, v4

    .line 1562
    div-int/2addr p2, v0

    move v5, v4

    move v4, p2

    .line 1565
    :cond_14
    :goto_a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "outWidth "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " outHeight "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, p2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1566
    iget-object p2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mBm:Landroid/graphics/Bitmap;

    invoke-static {p2, v4, v5, p1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1568
    iget-object p2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mImgBtn:Landroid/widget/ImageButton;

    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_b

    .line 1571
    :cond_15
    iput v0, p3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1572
    iput p2, p3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1574
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mImgBtn:Landroid/widget/ImageButton;

    iget-object p2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mBm:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_b
    const/16 p1, 0xe

    .line 1576
    invoke-virtual {p3, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p1, 0xc

    .line 1577
    invoke-virtual {p3, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1579
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mImgBtn:Landroid/widget/ImageButton;

    new-instance p2, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$4;

    invoke-direct {p2, p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$4;-><init>(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1598
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mImgBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, p1, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 1458
    :cond_16
    :goto_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "View or context or non linear url is not available "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mView:Landroid/view/View;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mCtxt:Landroid/content/Context;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNonLinearUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v1, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private endLatestAdView()V
    .locals 2

    .line 1325
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mAdViewPlayer:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    if-eqz v0, :cond_1

    .line 1326
    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;->stop()V

    .line 1327
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mAdViewPlayerToBeRemoved:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1328
    invoke-direct {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->destroyAdView(Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;)V

    .line 1329
    iput-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mAdViewPlayerToBeRemoved:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    .line 1331
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mAdViewPlayer:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mAdViewPlayerToBeRemoved:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    .line 1332
    iput-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mAdViewPlayer:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    :cond_1
    return-void
.end method

.method private eraseImageButton(Z)V
    .locals 3

    .line 1439
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mView:Landroid/view/View;

    const/4 v1, 0x0

    const-string v2, "@@@VOOSMPAdMgrImpl"

    if-nez v0, :cond_0

    .line 1440
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "View is not available "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "eraseImageButton starts"

    .line 1444
    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1445
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1446
    iget-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mImgBtn:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1447
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1448
    iput-object v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mImgBtn:Landroid/widget/ImageButton;

    :cond_1
    const/4 v0, 0x1

    if-ne v0, p1, :cond_2

    .line 1451
    iput-object v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mBm:Landroid/graphics/Bitmap;

    :cond_2
    return-void
.end method

.method private getAdBreakInfo(Landroid/os/Parcel;)Lcom/visualon/OSMPAdMgr/VOOSMPAdEventInfo;
    .locals 3

    .line 980
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 981
    sget-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdBreakInfoImpl$VOOSMP_AD_BREAK_TYPE;->VO_OSMP_AD_BREAK_PRE_ROLL:Lcom/visualon/OSMPAdMgr/VOOSMPAdBreakInfoImpl$VOOSMP_AD_BREAK_TYPE;

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdBreakInfoImpl$VOOSMP_AD_BREAK_TYPE;->VO_OSMP_AD_BREAK_MID_ROLL:Lcom/visualon/OSMPAdMgr/VOOSMPAdBreakInfoImpl$VOOSMP_AD_BREAK_TYPE;

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    sget-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdBreakInfoImpl$VOOSMP_AD_BREAK_TYPE;->VO_OSMP_AD_BREAK_POST_ROLL:Lcom/visualon/OSMPAdMgr/VOOSMPAdBreakInfoImpl$VOOSMP_AD_BREAK_TYPE;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdBreakInfoImpl$VOOSMP_AD_BREAK_TYPE;->VO_OSMP_AD_BREAK_TYPE_MAX:Lcom/visualon/OSMPAdMgr/VOOSMPAdBreakInfoImpl$VOOSMP_AD_BREAK_TYPE;

    .line 986
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 987
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 988
    new-instance v2, Lcom/visualon/OSMPAdMgr/VOOSMPAdBreakInfoImpl;

    invoke-direct {v2, v0, p1, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdBreakInfoImpl;-><init>(Lcom/visualon/OSMPAdMgr/VOOSMPAdBreakInfoImpl$VOOSMP_AD_BREAK_TYPE;IZ)V

    return-object v2
.end method

.method private getAdCuePoints(Landroid/os/Parcel;)Lcom/visualon/OSMPAdMgr/VOOSMPAdEventInfo;
    .locals 2

    .line 1065
    new-instance v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdCuePointsInfoImpl;

    invoke-direct {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdCuePointsInfoImpl;-><init>()V

    .line 1067
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1068
    new-array v1, v1, [F

    .line 1069
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readFloatArray([F)V

    .line 1070
    invoke-virtual {v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdCuePointsInfoImpl;->setAdCuePoints([F)V

    return-object v0
.end method

.method private getAdInfo(Landroid/os/Parcel;)Lcom/visualon/OSMPAdMgr/VOOSMPAdEventInfo;
    .locals 6

    .line 1030
    new-instance v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdInfoImpl;

    invoke-direct {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdInfoImpl;-><init>()V

    .line 1032
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdInfoImpl;->setAdId(Ljava/lang/String;)V

    .line 1033
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdInfoImpl;->setAdTitle(Ljava/lang/String;)V

    .line 1034
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdInfoImpl;->setCreativeId(Ljava/lang/String;)V

    .line 1035
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPAdMgr/VOOSMPAdInfoImpl;->setDuration(J)V

    .line 1036
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdInfoImpl;->setAdPodPos(I)V

    .line 1037
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1038
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 1039
    invoke-virtual {v0, v1, v4, v5}, Lcom/visualon/OSMPAdMgr/VOOSMPAdInfoImpl;->setSkippable(ZJ)V

    .line 1040
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdInfoImpl;->setClickThroughUrl(Ljava/lang/String;)V

    .line 1041
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdInfoImpl;->setVPAID(Z)V

    .line 1043
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1044
    sget-object v4, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CREATIVE_TYPE;->VO_OSMP_AD_CREATIVE_NONLINEAR:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CREATIVE_TYPE;

    invoke-virtual {v4}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_CREATIVE_TYPE;->getValue()I

    move-result v4

    if-ne v1, v4, :cond_5

    .line 1045
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNonLinearUrl:Ljava/lang/String;

    .line 1046
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mWidth:I

    .line 1047
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mHeight:I

    .line 1048
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mScalable:Z

    .line 1049
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    iput-boolean v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mMaintainRatio:Z

    .line 1050
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNonLinearClickThroughUrl:Ljava/lang/String;

    .line 1051
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NonLinear info mNonLinearUrl "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNonLinearUrl:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mWidth "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mWidth:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mHeight "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mHeight:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mScalable "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mScalable:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mMaintainRatio "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mMaintainRatio:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mNonLinearClickThroughUrl "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNonLinearClickThroughUrl:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    const-string v4, "@@@VOOSMPAdMgrImpl"

    invoke-static {v4, p1, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1053
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p1, v1, :cond_4

    const/4 p1, 0x0

    .line 1054
    invoke-direct {p0, v3, v3, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->drawImageButton(ZZLjava/lang/Object;)V

    goto :goto_4

    .line 1056
    :cond_4
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mEventHandler:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$EventHandler;

    invoke-virtual {p1, v3, v2, v2, p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_5
    :goto_4
    return-object v0
.end method

.method private getAdPodInfo(Landroid/os/Parcel;)Lcom/visualon/OSMPAdMgr/VOOSMPAdEventInfo;
    .locals 1

    .line 995
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 996
    new-instance v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdPodInfoImpl;

    invoke-direct {v0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdPodInfoImpl;-><init>(I)V

    return-object v0
.end method

.method public static getInstance()Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;
    .locals 1

    .line 179
    sget-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mAdMgr:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    return-object v0
.end method

.method private getNoAdVASTInfo(Landroid/os/Parcel;)Lcom/visualon/OSMPAdMgr/VOOSMPAdEventInfo;
    .locals 1

    .line 1082
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1083
    new-instance v0, Lcom/visualon/OSMPAdMgr/VOOSMPNoAdVASTInfoImpl;

    invoke-direct {v0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPNoAdVASTInfoImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getSDKEvent(Landroid/os/Parcel;)Lcom/visualon/OSMPAdMgr/VOOSMPAdEventInfo;
    .locals 1

    .line 1075
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1076
    new-instance v0, Lcom/visualon/OSMPAdMgr/VOOSMPSDKEventInfoImpl;

    invoke-direct {v0, p0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPSDKEventInfoImpl;-><init>(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method private getTrackingEventInfo(Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventListener$VO_OSMP_TRACKING_EVENT_ID;Landroid/os/Parcel;)Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfo;
    .locals 3

    .line 1089
    new-instance v0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;

    invoke-direct {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;-><init>()V

    .line 1090
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->setType(Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventListener$VO_OSMP_TRACKING_EVENT_ID;)V

    .line 1091
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->setFlag(I)V

    .line 1092
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->setTriggerReachedPosition(J)V

    .line 1093
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->setTriggerViewedPercentage(D)V

    .line 1094
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->setDuration(J)V

    .line 1095
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->setCurrPos(J)V

    .line 1096
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->setAdPos(J)V

    .line 1097
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->setContentPos(J)V

    .line 1098
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->setSeekTarget(J)V

    .line 1099
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->setIsAdSkipped(Z)V

    .line 1100
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->setAssetUrl(Ljava/lang/String;)V

    .line 1101
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->setAdId(Ljava/lang/String;)V

    .line 1102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->setCreativeId(Ljava/lang/String;)V

    .line 1103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->setVASTErrorCode(I)V

    .line 1104
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->setVASTTrackingUrl(Ljava/lang/String;)V

    .line 1105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->setPartNumber(I)V

    .line 1106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->setTotalParts(I)V

    .line 1107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;->setOpenCompleteStatus(I)V

    return-object v0
.end method

.method private handleAdBreakEnd()V
    .locals 4

    .line 1018
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mAdViewPlayer:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    if-eqz v0, :cond_0

    .line 1019
    invoke-direct {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->destroyAdView(Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;)V

    const/4 v0, 0x0

    .line 1020
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mAdViewPlayer:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    .line 1022
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNextAdViewPlayer:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "@@@VOOSMPAdMgrImpl"

    const-string v3, "mNextAdViewPlayer is not null (back-to-back Ad break?)"

    .line 1023
    invoke-static {v2, v3, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1025
    :cond_1
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->unhideContentView()V

    .line 1026
    iput-boolean v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mIsAdViewPaused:Z

    return-void
.end method

.method private handleAdEnd()V
    .locals 3

    .line 1001
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNonLinearUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1002
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNonLinearUrl:Ljava/lang/String;

    const/4 v1, 0x0

    .line 1003
    iput v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mWidth:I

    .line 1004
    iput v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mHeight:I

    .line 1005
    iput-boolean v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mScalable:Z

    .line 1006
    iput-boolean v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mMaintainRatio:Z

    .line 1007
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNonLinearClickThroughUrl:Ljava/lang/String;

    .line 1008
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mBm:Landroid/graphics/Bitmap;

    .line 1009
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    .line 1010
    invoke-direct {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->eraseImageButton(Z)V

    goto :goto_0

    .line 1012
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mEventHandler:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$EventHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1, v1, p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private hideContentView()V
    .locals 2

    .line 1343
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mCtxt:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$1;

    invoke-direct {v1, p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$1;-><init>(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initEventHandler()V
    .locals 4

    .line 166
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "@@@VOOSMPAdMgrImpl"

    if-eqz v0, :cond_0

    .line 167
    new-instance v3, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$EventHandler;

    invoke-direct {v3, p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$EventHandler;-><init>(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mEventHandler:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$EventHandler;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Looper.myLooper()"

    .line 168
    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 169
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 170
    new-instance v3, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$EventHandler;

    invoke-direct {v3, p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$EventHandler;-><init>(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mEventHandler:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$EventHandler;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "getMainLooper()"

    .line 171
    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mEventHandler:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$EventHandler;

    :goto_0
    return-void
.end method

.method private loadAdView(Landroid/os/Parcel;)V
    .locals 13

    .line 1205
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1206
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1207
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1208
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1209
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1215
    iget-object v9, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNextAdViewPlayer:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    const/4 v10, 0x0

    if-eqz v9, :cond_0

    .line 1216
    invoke-direct {p0, v9}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->destroyAdView(Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;)V

    .line 1217
    iput-object v10, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNextAdViewPlayer:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    .line 1220
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isUrl: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " display: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x0

    new-array v11, v9, [Ljava/lang/Object;

    const-string v12, "@@@VOOSMPAdMgrImpl"

    invoke-static {v12, v3, v11}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1221
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "urlOrData: "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v11, v9, [Ljava/lang/Object;

    invoke-static {v12, v3, v11}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1222
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "adParam: "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v11, v9, [Ljava/lang/Object;

    invoke-static {v12, v3, v11}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "clickThroughUrl: "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v11, v9, [Ljava/lang/Object;

    invoke-static {v12, v3, v11}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1224
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "baseUrl: "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v11, v9, [Ljava/lang/Object;

    invoke-static {v12, v3, v11}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "skipOffset: "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v11, v9, [Ljava/lang/Object;

    invoke-static {v12, v3, v11}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isVPAID: "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v11, v9, [Ljava/lang/Object;

    invoke-static {v12, v3, v11}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isForcedVPAID: "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v11, v9, [Ljava/lang/Object;

    invoke-static {v12, v3, v11}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v6, :cond_1

    const-string v3, "{\"pause\":false, \"mute\":false, \"skipAd\":false, \"learnMore\":false}"

    goto :goto_0

    .line 1230
    :cond_1
    iget-object v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mDefaultVPAIDUIConf:Ljava/lang/String;

    :goto_0
    iput-object v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mPerAdVPAIDUIConf:Ljava/lang/String;

    .line 1232
    iget-object v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object v11, v3

    check-cast v11, Landroid/view/ViewGroup;

    const/4 v12, 0x1

    if-nez v4, :cond_3

    if-eqz v6, :cond_2

    goto :goto_1

    .line 1243
    :cond_2
    new-instance v8, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;

    const/4 v3, 0x0

    const/4 v4, 0x0

    div-int/lit16 v6, v0, 0x3e8

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;-><init>(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1244
    new-instance v0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;

    iget-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mCtxt:Landroid/content/Context;

    invoke-direct {v0, v1, v11, v8}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNextAdViewPlayer:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    .line 1245
    invoke-virtual {v0, v7, v12, v10, v12}, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;->load(Ljava/lang/String;ZLjava/lang/String;Z)V

    goto :goto_3

    :cond_3
    :goto_1
    if-ne v1, v12, :cond_4

    .line 1236
    new-instance v10, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;

    const/4 v4, 0x0

    div-int/lit16 v6, v0, 0x3e8

    move-object v0, v10

    move-object v1, p0

    move-object v3, v7

    invoke-direct/range {v0 .. v6}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;-><init>(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 1238
    :cond_4
    new-instance v10, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mVPAIDAdWrap:Ljava/lang/String;

    div-int/lit16 v6, v0, 0x3e8

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;-><init>(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1239
    :goto_2
    new-instance v0, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;

    iget-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mCtxt:Landroid/content/Context;

    invoke-direct {v0, v1, v11, v10}, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNextAdViewPlayer:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    .line 1240
    iget-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mVPAIDPage:Ljava/lang/String;

    invoke-virtual {v0, v1, v9, v8, v12}, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;->load(Ljava/lang/String;ZLjava/lang/String;Z)V

    :goto_3
    return-void
.end method

.method private static loadJNI(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "@@@VOOSMPAdMgrImpl"

    const-string v3, "voAdsMgr load JNI library"

    .line 1623
    invoke-static {v2, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1624
    sget-boolean v1, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mJNILoaded:Z

    if-eqz v1, :cond_0

    return v1

    :cond_0
    const-string v1, "voAdsMgr"

    .line 1625
    invoke-static {p0, v1}, Lcom/visualon/OSMPUtils/voLoadJNI;->loadProductLib(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mJNILoaded:Z

    if-nez p0, :cond_1

    new-array p0, v0, [Ljava/lang/Object;

    const-string v1, "Fail to load JNI library"

    .line 1626
    invoke-static {v2, v1, p0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1627
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "voAdsMgr JNI library mJNILoaded is "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mJNILoaded:Z

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, p0, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1628
    sget-boolean p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mJNILoaded:Z

    return p0
.end method

.method private native nativeCurrPeriodIsAd(J)Z
.end method

.method private native nativeCurrPeriodIsContent(J)Z
.end method

.method private native nativeDisableTrackingAdaptor(JI)I
.end method

.method private native nativeEnableAdEventListener(JZ)V
.end method

.method private native nativeEnableTrackingAdaptor(JILjava/lang/Object;)I
.end method

.method private native nativeEnableTrackingEventListener(JZZ)V
.end method

.method private native nativeGetContentDuration(J)J
.end method

.method private native nativeGetCurrAdBreakIdx(J)J
.end method

.method private native nativeGetCurrAdDuration(J)J
.end method

.method private native nativeGetCurrAdID(J)Ljava/lang/String;
.end method

.method private native nativeGetCurrAdMediaURL(J)Ljava/lang/String;
.end method

.method private native nativeGetCurrAdPos(J)J
.end method

.method private native nativeGetCurrAdPosInPod(J)J
.end method

.method private native nativeGetCurrAdTitle(J)Ljava/lang/String;
.end method

.method private native nativeGetCurrContentPeriodDuration(J)J
.end method

.method private native nativeGetCurrContentPeriodStartPos(J)J
.end method

.method private native nativeGetCurrContentPos(J)J
.end method

.method private native nativeGetCurrCreativeID(J)Ljava/lang/String;
.end method

.method private native nativeGetCurrPartNumber(J)J
.end method

.method private native nativeGetCurrPos(J)J
.end method

.method private native nativeGetCurrTotalParts(J)J
.end method

.method private native nativeGetMainStreamDuration(J)J
.end method

.method private native nativeGetNumberOfAdBreaks(J)J
.end method

.method private native nativeHasPostRoll(J)Z
.end method

.method private native nativeHasPreRoll(J)Z
.end method

.method private native nativeInit(Lcom/visualon/OSMPAdMgr/VOOSMPAdInitParam;)I
.end method

.method private native nativeIsLive(J)Z
.end method

.method private native nativeLockAdsMgr(J)V
.end method

.method private native nativeOnAppNotify(JILjava/lang/Object;Ljava/lang/Object;)I
.end method

.method private native nativeRequestAdPercentageViewedTrackingEvent(JD)I
.end method

.method private native nativeRequestAdReachedPositionTrackingEvent(JJ)I
.end method

.method private native nativeSendAdViewEvent(JIJ)V
.end method

.method private native nativeSetAdCallUrl(JLcom/visualon/OSMPAdMgr/VOOSMPAdCallParam;)I
.end method

.method private native nativeSkipAd(J)I
.end method

.method private native nativeUnInit(J)I
.end method

.method private native nativeUnRegisterPlayer(J)V
.end method

.method private native nativeUnlockAdsMgr(J)V
.end method

.method private onAdEventCallback(Landroid/os/Parcel;)I
    .locals 5

    .line 931
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mAdEventListener:Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener;

    const-string v1, "@@@VOOSMPAdMgrImpl"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "mAdEventListener is null"

    .line 932
    invoke-static {v1, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 933
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_NONE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    invoke-virtual {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->getValue()I

    move-result p1

    return p1

    :cond_0
    if-nez p1, :cond_1

    .line 936
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_NONE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    invoke-virtual {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->getValue()I

    move-result p1

    return p1

    .line 939
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 940
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 941
    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;->valueOf(I)Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;

    move-result-object v0

    .line 942
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAdEventCallback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 944
    sget-object v2, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$5;->$SwitchMap$com$visualon$OSMPAdMgr$VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID:[I

    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 967
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->getNoAdVASTInfo(Landroid/os/Parcel;)Lcom/visualon/OSMPAdMgr/VOOSMPAdEventInfo;

    move-result-object v1

    goto :goto_0

    .line 964
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->getSDKEvent(Landroid/os/Parcel;)Lcom/visualon/OSMPAdMgr/VOOSMPAdEventInfo;

    move-result-object v1

    goto :goto_0

    .line 961
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->getAdCuePoints(Landroid/os/Parcel;)Lcom/visualon/OSMPAdMgr/VOOSMPAdEventInfo;

    move-result-object v1

    goto :goto_0

    .line 958
    :pswitch_3
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->handleAdBreakEnd()V

    goto :goto_0

    .line 955
    :pswitch_4
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->handleAdEnd()V

    goto :goto_0

    .line 952
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->getAdInfo(Landroid/os/Parcel;)Lcom/visualon/OSMPAdMgr/VOOSMPAdEventInfo;

    move-result-object v1

    goto :goto_0

    .line 949
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->getAdPodInfo(Landroid/os/Parcel;)Lcom/visualon/OSMPAdMgr/VOOSMPAdEventInfo;

    move-result-object v1

    goto :goto_0

    .line 946
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->getAdBreakInfo(Landroid/os/Parcel;)Lcom/visualon/OSMPAdMgr/VOOSMPAdEventInfo;

    move-result-object v1

    .line 972
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 974
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mAdEventListener:Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener;

    invoke-interface {p1, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener;->onAdEvent(Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;Lcom/visualon/OSMPAdMgr/VOOSMPAdEventInfo;)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    move-result-object p1

    .line 975
    invoke-virtual {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->getValue()I

    move-result p1

    return p1

    nop

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

.method private onAdsMgrEventCallback(Landroid/os/Parcel;)V
    .locals 7

    const/4 v0, 0x0

    .line 1132
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1134
    invoke-static {v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;->valueOf(I)Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    move-result-object v1

    .line 1135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAdsMgrEventCallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "@@@VOOSMPAdMgrImpl"

    invoke-static {v3, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1136
    sget-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$5;->$SwitchMap$com$visualon$OSMPAdMgr$VOOSMPAdMgrImpl$ADSMGR_EVENT_ID:[I

    invoke-virtual {v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1164
    :pswitch_0
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->skipAdView()V

    .line 1165
    iget-wide v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNativeContext:J

    sget-object v0, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;->AD_VIEW_EVENT_AD_SKIP:Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;->getValue()I

    move-result v4

    const-wide/16 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->nativeSendAdViewEvent(JIJ)V

    goto :goto_0

    .line 1161
    :pswitch_1
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->playPauseAdView()V

    goto :goto_0

    .line 1157
    :pswitch_2
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->toggleAdViewAudio()V

    goto :goto_0

    .line 1153
    :pswitch_3
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->resumeAdView()V

    goto :goto_0

    .line 1150
    :pswitch_4
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->suspendAdView()V

    goto :goto_0

    .line 1147
    :pswitch_5
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->clearAdView()V

    goto :goto_0

    .line 1144
    :pswitch_6
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->abortAdView()V

    goto :goto_0

    .line 1141
    :pswitch_7
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->startAdView()V

    goto :goto_0

    .line 1138
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->loadAdView(Landroid/os/Parcel;)V

    .line 1170
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onTrackingEventCallback(Landroid/os/Parcel;)I
    .locals 5

    .line 1112
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mTrackingEventListener:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventListener;

    const-string v1, "@@@VOOSMPAdMgrImpl"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "mTrackingEventListener is null"

    .line 1113
    invoke-static {v1, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1114
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_NONE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    invoke-virtual {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->getValue()I

    move-result p1

    return p1

    :cond_0
    if-nez p1, :cond_1

    .line 1117
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_NONE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    invoke-virtual {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->getValue()I

    move-result p1

    return p1

    .line 1119
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1121
    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventListener$VO_OSMP_TRACKING_EVENT_ID;->valueOf(I)Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventListener$VO_OSMP_TRACKING_EVENT_ID;

    move-result-object v0

    .line 1122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTrackingEventCallback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1124
    invoke-direct {p0, v0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->getTrackingEventInfo(Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventListener$VO_OSMP_TRACKING_EVENT_ID;Landroid/os/Parcel;)Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfo;

    move-result-object v1

    .line 1125
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 1127
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mTrackingEventListener:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventListener;

    invoke-interface {p1, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventListener;->onTrackingEvent(Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventListener$VO_OSMP_TRACKING_EVENT_ID;Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfo;)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    move-result-object p1

    .line 1128
    invoke-virtual {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->getValue()I

    move-result p1

    return p1
.end method

.method private playPauseAdView()V
    .locals 1

    .line 1310
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mAdViewPlayer:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    if-eqz v0, :cond_0

    .line 1311
    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;->playPause()V

    :cond_0
    return-void
.end method

.method private resumeAdView()V
    .locals 2

    .line 1303
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mAdViewPlayer:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    if-eqz v0, :cond_0

    .line 1304
    iget-boolean v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mIsAdViewPaused:Z

    if-nez v1, :cond_0

    .line 1305
    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;->resume()V

    :cond_0
    return-void
.end method

.method private setImageBitmapFromUrl(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1414
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mBm:Landroid/graphics/Bitmap;

    .line 1415
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$3;

    invoke-direct {v1, p0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$3;-><init>(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1435
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private skipAdView()V
    .locals 0

    .line 1321
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->endLatestAdView()V

    return-void
.end method

.method private startAdView()V
    .locals 3

    .line 1250
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNextAdViewPlayer:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPAdMgrImpl"

    const-string v2, "mNextAdViewPlayer is not ready (null)"

    .line 1251
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1256
    :cond_0
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->hideContentView()V

    .line 1258
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->endLatestAdView()V

    .line 1259
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNextAdViewPlayer:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mAdViewPlayer:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    const/4 v0, 0x0

    .line 1260
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNextAdViewPlayer:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    .line 1262
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mParentWidth:I

    .line 1263
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mParentHeight:I

    .line 1265
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mAdViewPlayer:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;->unhide()V

    .line 1267
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mAdViewPlayer:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;->start()V

    .line 1269
    iget-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mIsAdViewPaused:Z

    if-eqz v0, :cond_1

    .line 1270
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->playPauseAdView()V

    :cond_1
    return-void
.end method

.method private suspendAdView()V
    .locals 1

    .line 1297
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mAdViewPlayer:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    if-eqz v0, :cond_0

    .line 1298
    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;->suspend()V

    :cond_0
    return-void
.end method

.method private toggleAdViewAudio()V
    .locals 1

    .line 1315
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mAdViewPlayer:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    if-eqz v0, :cond_0

    .line 1316
    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;->toggleAudio()V

    :cond_0
    return-void
.end method

.method private unhideContentView()V
    .locals 2

    .line 1361
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mCtxt:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$2;

    invoke-direct {v1, p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$2;-><init>(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public currPeriodIsAd()Z
    .locals 4

    .line 680
    sget-boolean v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mJNILoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "@@@VOOSMPAdMgrImpl"

    const-string v3, "AdsMgr JNI was not loaded"

    .line 681
    invoke-static {v2, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 685
    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->nativeCurrPeriodIsAd(J)Z

    move-result v0

    return v0
.end method

.method public currPeriodIsContent()Z
    .locals 3

    .line 692
    sget-boolean v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mJNILoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPAdMgrImpl"

    const-string v2, "AdsMgr JNI was not loaded"

    .line 693
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0

    .line 697
    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->nativeCurrPeriodIsContent(J)Z

    move-result v0

    return v0
.end method

.method public disableSDK(Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_SDK_ID;)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;
    .locals 6

    .line 434
    sget-boolean v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mJNILoaded:Z

    const/4 v1, 0x0

    const-string v2, "@@@VOOSMPAdMgrImpl"

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "AdsMgr JNI was not loaded"

    .line 435
    invoke-static {v2, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 436
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_JNI:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mTrackingAdaptors:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingAdaptorBase;

    if-nez v0, :cond_1

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SDK was not enabled: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 442
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_UNINITIALIZE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1

    .line 444
    :cond_1
    iget-wide v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNativeContext:J

    invoke-virtual {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_SDK_ID;->getValue()I

    move-result v5

    invoke-direct {p0, v3, v4, v5}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->nativeDisableTrackingAdaptor(JI)I

    move-result v3

    .line 445
    iget-object v4, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mTrackingAdaptors:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disabled SDK: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 447
    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingAdaptorBase;->unInitializeJavaSDK()Z

    move-result v0

    if-nez v0, :cond_2

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Java SDK unInitialization failed for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 450
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_UNINITIALIZE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1

    .line 452
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uninitialized SDK: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 453
    invoke-static {v3}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    move-result-object p1

    return-object p1
.end method

.method public enableSDK(Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_SDK_ID;Ljava/util/HashMap;)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_SDK_ID;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;"
        }
    .end annotation

    .line 306
    sget-boolean v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mJNILoaded:Z

    const/4 v1, 0x0

    const-string v2, "@@@VOOSMPAdMgrImpl"

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "AdsMgr JNI was not loaded"

    .line 307
    invoke-static {v2, p2, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_JNI:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mTrackingAdaptors:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingAdaptorBase;

    if-eqz v0, :cond_1

    .line 313
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Tracking was already enabled for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_UNINITIALIZE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1

    .line 316
    :cond_1
    sget-object v3, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$5;->$SwitchMap$com$visualon$OSMPAdMgr$VOOSMPAdType$VO_OSMP_SDK_ID:[I

    invoke-virtual {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_SDK_ID;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 333
    :pswitch_0
    new-instance v0, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;

    invoke-direct {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPMediaTailorTrackingAdaptor;-><init>()V

    goto :goto_0

    .line 330
    :pswitch_1
    new-instance v0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;

    invoke-direct {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;-><init>()V

    goto :goto_0

    .line 327
    :pswitch_2
    new-instance v0, Lcom/visualon/OSMPAdMgr/VOOSMPDWTrackingAdaptor;

    invoke-direct {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPDWTrackingAdaptor;-><init>()V

    goto :goto_0

    .line 324
    :pswitch_3
    new-instance v0, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;

    invoke-direct {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;-><init>()V

    goto :goto_0

    .line 321
    :pswitch_4
    new-instance v0, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;

    invoke-direct {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;-><init>()V

    goto :goto_0

    .line 318
    :pswitch_5
    new-instance v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;

    invoke-direct {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;-><init>()V

    :goto_0
    if-nez v0, :cond_2

    .line 339
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SDK adaptor not implemented for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_UNINITIALIZE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1

    .line 342
    :cond_2
    invoke-virtual {v0, p2}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingAdaptorBase;->setParams(Ljava/util/HashMap;)V

    .line 343
    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingAdaptorBase;->isSDKAvailable()Z

    move-result p2

    if-nez p2, :cond_3

    .line 345
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Java SDK not available for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_UNINITIALIZE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1

    .line 349
    :cond_3
    iget-wide v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNativeContext:J

    invoke-virtual {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_SDK_ID;->getValue()I

    move-result p2

    invoke-direct {p0, v3, v4, p2, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->nativeEnableTrackingAdaptor(JILjava/lang/Object;)I

    move-result p2

    .line 351
    invoke-static {p2}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    move-result-object v3

    .line 352
    sget-object v4, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_NONE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    if-eq v3, v4, :cond_4

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tracking adaptor initialization failed for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". Returned value="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    .line 357
    :cond_4
    iget-object p2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mTrackingAdaptors:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingAdaptorBase;->initializeJavaSDK()Z

    move-result p2

    if-nez p2, :cond_5

    .line 360
    iget-wide v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNativeContext:J

    invoke-virtual {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_SDK_ID;->getValue()I

    move-result p2

    invoke-direct {p0, v3, v4, p2}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->nativeDisableTrackingAdaptor(JI)I

    .line 361
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Java SDK initialization failed for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, p2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 362
    iget-object p2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mTrackingAdaptors:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_UNINITIALIZE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1

    :cond_5
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public execSDKAction(Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_SDK_ID;Ljava/lang/String;)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;
    .locals 5

    .line 418
    sget-boolean v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mJNILoaded:Z

    const/4 v1, 0x0

    const-string v2, "@@@VOOSMPAdMgrImpl"

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "AdsMgr JNI was not loaded"

    .line 419
    invoke-static {v2, p2, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 420
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_JNI:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mTrackingAdaptors:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingAdaptorBase;

    if-nez v0, :cond_1

    .line 425
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not find adaptor for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 426
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_UNINITIALIZE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1

    .line 428
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " execSDKAction("

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 429
    invoke-virtual {v0, p2}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingAdaptorBase;->execSDKAction(Ljava/lang/String;)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    move-result-object p1

    return-object p1
.end method

.method public getAdPosition()J
    .locals 3

    .line 592
    sget-boolean v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mJNILoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPAdMgrImpl"

    const-string v2, "AdsMgr JNI was not loaded"

    .line 593
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, -0x1

    return-wide v0

    .line 597
    :cond_0
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->getCurrAdPos()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentDuration()J
    .locals 3

    .line 631
    sget-boolean v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mJNILoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPAdMgrImpl"

    const-string v2, "AdsMgr JNI was not loaded"

    .line 632
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, -0x1

    return-wide v0

    .line 636
    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->nativeGetContentDuration(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrAdBreakIdx()J
    .locals 3

    .line 795
    sget-boolean v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mJNILoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPAdMgrImpl"

    const-string v2, "AdsMgr JNI was not loaded"

    .line 796
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, -0x1

    return-wide v0

    .line 800
    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->nativeGetCurrAdBreakIdx(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrAdDuration()J
    .locals 3

    .line 867
    sget-boolean v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mJNILoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPAdMgrImpl"

    const-string v2, "AdsMgr JNI was not loaded"

    .line 868
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, -0x1

    return-wide v0

    .line 872
    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->nativeGetCurrAdDuration(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrAdID()Ljava/lang/String;
    .locals 3

    .line 819
    sget-boolean v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mJNILoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPAdMgrImpl"

    const-string v2, "AdsMgr JNI was not loaded"

    .line 820
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0

    .line 824
    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->nativeGetCurrAdID(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrAdMediaURL()Ljava/lang/String;
    .locals 3

    .line 855
    sget-boolean v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mJNILoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPAdMgrImpl"

    const-string v2, "AdsMgr JNI was not loaded"

    .line 856
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0

    .line 860
    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->nativeGetCurrAdMediaURL(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrAdOrContentPos()J
    .locals 3

    .line 732
    sget-boolean v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mJNILoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPAdMgrImpl"

    const-string v2, "AdsMgr JNI was not loaded"

    .line 733
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, -0x1

    return-wide v0

    .line 738
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->lockAdsMgr()V

    .line 739
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->currPeriodIsAd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 740
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->getAdPosition()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 746
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->unlockAdsMgr()V

    return-wide v0

    .line 742
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->getCurrContentPos()J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 746
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->unlockAdsMgr()V

    return-wide v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->unlockAdsMgr()V

    throw v0
.end method

.method public getCurrAdPos()J
    .locals 3

    .line 708
    sget-boolean v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mJNILoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPAdMgrImpl"

    const-string v2, "AdsMgr JNI was not loaded"

    .line 709
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, -0x1

    return-wide v0

    .line 713
    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->nativeGetCurrAdPos(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrAdPosInPod()J
    .locals 3

    .line 807
    sget-boolean v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mJNILoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPAdMgrImpl"

    const-string v2, "AdsMgr JNI was not loaded"

    .line 808
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, -0x1

    return-wide v0

    .line 812
    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->nativeGetCurrAdPosInPod(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrAdTitle()Ljava/lang/String;
    .locals 3

    .line 831
    sget-boolean v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mJNILoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPAdMgrImpl"

    const-string v2, "AdsMgr JNI was not loaded"

    .line 832
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0

    .line 836
    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->nativeGetCurrAdTitle(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrContentPeriodDuration()J
    .locals 3

    .line 891
    sget-boolean v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mJNILoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPAdMgrImpl"

    const-string v2, "AdsMgr JNI was not loaded"

    .line 892
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, -0x1

    return-wide v0

    .line 896
    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->nativeGetCurrContentPeriodDuration(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrContentPeriodStartPos()J
    .locals 3

    .line 879
    sget-boolean v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mJNILoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPAdMgrImpl"

    const-string v2, "AdsMgr JNI was not loaded"

    .line 880
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, -0x1

    return-wide v0

    .line 884
    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->nativeGetCurrContentPeriodStartPos(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrContentPos()J
    .locals 3

    .line 720
    sget-boolean v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mJNILoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPAdMgrImpl"

    const-string v2, "AdsMgr JNI was not loaded"

    .line 721
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, -0x1

    return-wide v0

    .line 725
    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->nativeGetCurrContentPos(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrCreativeID()Ljava/lang/String;
    .locals 3

    .line 843
    sget-boolean v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mJNILoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPAdMgrImpl"

    const-string v2, "AdsMgr JNI was not loaded"

    .line 844
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0

    .line 848
    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->nativeGetCurrCreativeID(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrPartNumber()J
    .locals 3

    .line 770
    sget-boolean v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mJNILoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPAdMgrImpl"

    const-string v2, "AdsMgr JNI was not loaded"

    .line 771
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    return-wide v0

    .line 775
    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->nativeGetCurrPartNumber(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrPos()J
    .locals 3

    .line 757
    sget-boolean v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mJNILoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPAdMgrImpl"

    const-string v2, "AdsMgr JNI was not loaded"

    .line 758
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, -0x1

    return-wide v0

    .line 762
    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->nativeGetCurrPos(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrTotalParts()J
    .locals 3

    .line 783
    sget-boolean v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mJNILoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPAdMgrImpl"

    const-string v2, "AdsMgr JNI was not loaded"

    .line 784
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    return-wide v0

    .line 788
    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->nativeGetCurrTotalParts(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMainStreamDuration()J
    .locals 3

    .line 619
    sget-boolean v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mJNILoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPAdMgrImpl"

    const-string v2, "AdsMgr JNI was not loaded"

    .line 620
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, -0x1

    return-wide v0

    .line 624
    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->nativeGetMainStreamDuration(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumberOfAdBreaks()J
    .locals 3

    .line 667
    sget-boolean v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mJNILoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPAdMgrImpl"

    const-string v2, "AdsMgr JNI was not loaded"

    .line 668
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    return-wide v0

    .line 672
    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->nativeGetNumberOfAdBreaks(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSDKParam(Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_SDK_ID;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 369
    sget-boolean v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mJNILoaded:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "@@@VOOSMPAdMgrImpl"

    const-string v0, "AdsMgr JNI was not loaded"

    .line 370
    invoke-static {p2, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mTrackingAdaptors:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingAdaptorBase;

    const-string v0, "enabled"

    .line 375
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 376
    new-instance p2, Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-direct {p2, v2}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p2

    :cond_2
    if-nez p1, :cond_3

    return-object v1

    .line 380
    :cond_3
    invoke-virtual {p1, p2}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingAdaptorBase;->getParam(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hasPostRoll()Z
    .locals 4

    .line 655
    sget-boolean v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mJNILoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "@@@VOOSMPAdMgrImpl"

    const-string v3, "AdsMgr JNI was not loaded"

    .line 656
    invoke-static {v2, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 660
    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->nativeHasPostRoll(J)Z

    move-result v0

    return v0
.end method

.method public hasPreRoll()Z
    .locals 4

    .line 643
    sget-boolean v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mJNILoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "@@@VOOSMPAdMgrImpl"

    const-string v3, "AdsMgr JNI was not loaded"

    .line 644
    invoke-static {v2, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 648
    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->nativeHasPreRoll(J)Z

    move-result v0

    return v0
.end method

.method public init(Lcom/visualon/OSMPAdMgr/VOOSMPAdInitParam;)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;
    .locals 3

    if-nez p1, :cond_0

    .line 195
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_UNINITIALIZE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1

    .line 197
    :cond_0
    sget-boolean v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mJNILoaded:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 198
    invoke-virtual {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdInitParam;->getLibraryPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 199
    :goto_0
    invoke-static {v0}, Lcom/visualon/OSMPUtils/voLog;->initLogLib(Ljava/lang/String;)I

    .line 200
    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->loadJNI(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 201
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_JNI:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1

    .line 204
    :cond_2
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->initEventHandler()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPAdMgrImpl"

    const-string v2, "Calling nativeInit"

    .line 206
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    invoke-direct {p0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->nativeInit(Lcom/visualon/OSMPAdMgr/VOOSMPAdInitParam;)I

    move-result p1

    .line 209
    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    move-result-object p1

    return-object p1
.end method

.method public isLive()Z
    .locals 4

    .line 604
    sget-boolean v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mJNILoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "@@@VOOSMPAdMgrImpl"

    const-string v3, "AdsMgr JNI was not loaded"

    .line 605
    invoke-static {v2, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 609
    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->nativeIsLive(J)Z

    move-result v0

    return v0
.end method

.method public lockAdsMgr()V
    .locals 3

    .line 1374
    sget-boolean v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mJNILoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPAdMgrImpl"

    const-string v2, "AdsMgr JNI was not loaded"

    .line 1375
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1378
    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->nativeLockAdsMgr(J)V

    return-void
.end method

.method public onAppNotify(Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;Ljava/lang/Object;Ljava/lang/Object;)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;
    .locals 6

    .line 914
    sget-boolean v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mJNILoaded:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "@@@VOOSMPAdMgrImpl"

    const-string p3, "AdsMgr JNI was not loaded"

    .line 915
    invoke-static {p2, p3, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 916
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_JNI:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1

    .line 919
    :cond_0
    sget-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;->VO_OSMP_APP_NOTIFICATION_VIEW_SIZE_CHANGE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;

    if-ne v0, p1, :cond_1

    const/4 p1, 0x5

    .line 920
    iput p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mLayoutObserveCnt:I

    .line 921
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 p1, 0x1

    .line 922
    invoke-direct {p0, p1, p1, p2}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->drawImageButton(ZZLjava/lang/Object;)V

    .line 923
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_NONE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1

    .line 926
    :cond_1
    iget-wide v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNativeContext:J

    invoke-virtual {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;->getValue()I

    move-result v3

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->nativeOnAppNotify(JILjava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    .line 927
    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    move-result-object p1

    return-object p1
.end method

.method public onGlobalLayout()V
    .locals 4

    .line 1175
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1177
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1178
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 1183
    iget v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mParentWidth:I

    if-ne v1, v3, :cond_0

    iget v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mParentHeight:I

    if-ne v2, v3, :cond_0

    iget v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mLayoutObserveCnt:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mLayoutObserveCnt:I

    if-nez v3, :cond_3

    .line 1185
    :cond_0
    iput v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mParentWidth:I

    .line 1186
    iput v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mParentHeight:I

    const/4 v1, 0x0

    .line 1187
    iput v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mLayoutObserveCnt:I

    .line 1188
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 1189
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 1191
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1192
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mAdViewPlayer:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    if-eqz v0, :cond_2

    .line 1193
    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;->adjustUIOffset()V

    .line 1194
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNextAdViewPlayer:Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    if-eqz v0, :cond_3

    .line 1195
    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;->adjustUIOffset()V

    :cond_3
    return-void
.end method

.method public requestAdPercentageViewedTrackingEvent(D)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;
    .locals 2

    .line 559
    sget-boolean v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mJNILoaded:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "@@@VOOSMPAdMgrImpl"

    const-string v0, "AdsMgr JNI was not loaded"

    .line 560
    invoke-static {p2, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 561
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_JNI:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1

    .line 564
    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNativeContext:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->nativeRequestAdPercentageViewedTrackingEvent(JD)I

    move-result p1

    .line 566
    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    move-result-object p1

    return-object p1
.end method

.method public requestAdReachedPositionTrackingEvent(J)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;
    .locals 2

    .line 541
    sget-boolean v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mJNILoaded:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "@@@VOOSMPAdMgrImpl"

    const-string v0, "AdsMgr JNI was not loaded"

    .line 542
    invoke-static {p2, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 543
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_JNI:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1

    .line 546
    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNativeContext:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->nativeRequestAdReachedPositionTrackingEvent(JJ)I

    move-result p1

    .line 548
    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    move-result-object p1

    return-object p1
.end method

.method public setAdCallUrl(Lcom/visualon/OSMPAdMgr/VOOSMPAdCallParam;)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;
    .locals 2

    .line 465
    sget-boolean v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mJNILoaded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "@@@VOOSMPAdMgrImpl"

    const-string v1, "AdsMgr JNI was not loaded"

    .line 466
    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 467
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_JNI:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    .line 471
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_UNINITIALIZE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1

    .line 474
    :cond_1
    invoke-virtual {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdCallParam;->getView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mView:Landroid/view/View;

    .line 475
    invoke-virtual {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdCallParam;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mCtxt:Landroid/content/Context;

    .line 477
    iget-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mHasVPAIDLicense:Z

    if-nez v0, :cond_2

    const-string v0, "{\"pause\":false, \"mute\":false, \"skipAd\":false, \"learnMore\":false}"

    .line 478
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mDefaultVPAIDUIConf:Ljava/lang/String;

    goto :goto_0

    .line 480
    :cond_2
    invoke-virtual {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdCallParam;->getVPAIDUIConfiguration()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mDefaultVPAIDUIConf:Ljava/lang/String;

    .line 483
    :goto_0
    iput-boolean v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mIsContentViewHidden:Z

    .line 484
    iput-boolean v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mIsAdViewPaused:Z

    .line 486
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNativeContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->nativeSetAdCallUrl(JLcom/visualon/OSMPAdMgr/VOOSMPAdCallParam;)I

    move-result p1

    .line 487
    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    move-result-object p1

    return-object p1
.end method

.method public setAdEventListener(Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener;)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;
    .locals 4

    .line 499
    sget-boolean v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mJNILoaded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "@@@VOOSMPAdMgrImpl"

    const-string v1, "AdsMgr JNI was not loaded"

    .line 500
    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 501
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_JNI:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1

    .line 504
    :cond_0
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mAdEventListener:Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener;

    .line 505
    iget-wide v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNativeContext:J

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-direct {p0, v2, v3, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->nativeEnableAdEventListener(JZ)V

    .line 506
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_NONE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1
.end method

.method public setPlayer(Ljava/lang/Object;)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;
    .locals 9

    .line 255
    sget-boolean v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mJNILoaded:Z

    const-string v1, "@@@VOOSMPAdMgrImpl"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "AdsMgr JNI was not loaded"

    .line 256
    invoke-static {v1, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_JNI:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1

    .line 259
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in setPlayer("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_2

    .line 261
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mPlayerSet:Ljava/lang/Object;

    if-nez p1, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "setPlayer(null) called when there is no player attached"

    .line 262
    invoke-static {v1, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_UNINITIALIZE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 266
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mPlayerSet:Ljava/lang/Object;

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "mPlayerSet = null;"

    .line 267
    invoke-static {v1, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->nativeUnRegisterPlayer(J)V

    goto/16 :goto_0

    .line 273
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mPlayerSet:Ljava/lang/Object;

    if-eqz v0, :cond_3

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "setPlayer(player) called when there is a player attached"

    .line 274
    invoke-static {v1, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_UNINITIALIZE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1

    :cond_3
    :try_start_0
    const-string v0, "com.visualon.OSMPPlayer.VOCommonPlayer"

    .line 280
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 281
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    .line 282
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    const-class v5, Ljava/lang/Object;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v5, "setParameter"

    .line 284
    invoke-virtual {v0, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 285
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAdsService "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mAdsService:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v3, v3, [Ljava/lang/Object;

    const v4, 0x10020

    .line 288
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    new-instance v4, Ljava/lang/Long;

    iget-wide v7, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mAdsService:J

    invoke-direct {v4, v7, v8}, Ljava/lang/Long;-><init>(J)V

    aput-object v4, v3, v6

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mPlayerSet:Ljava/lang/Object;

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPlayerSet = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    :goto_0
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_NONE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1

    .line 293
    :cond_4
    :try_start_1
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_UNINITIALIZE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    .line 296
    :catch_0
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_UNINITIALIZE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1
.end method

.method public setSDKParam(Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_SDK_ID;Ljava/lang/String;Ljava/lang/Object;)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;
    .locals 1

    .line 404
    sget-boolean v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mJNILoaded:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "@@@VOOSMPAdMgrImpl"

    const-string p3, "AdsMgr JNI was not loaded"

    .line 405
    invoke-static {p2, p3, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 406
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_JNI:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mTrackingAdaptors:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingAdaptorBase;

    if-nez p1, :cond_1

    .line 411
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_UNINITIALIZE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1

    .line 412
    :cond_1
    invoke-virtual {p1, p2, p3}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingAdaptorBase;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 413
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_NONE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1
.end method

.method public setSDKParams(Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_SDK_ID;Ljava/util/HashMap;)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_SDK_ID;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;"
        }
    .end annotation

    .line 389
    sget-boolean v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mJNILoaded:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "@@@VOOSMPAdMgrImpl"

    const-string v0, "AdsMgr JNI was not loaded"

    .line 390
    invoke-static {p2, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 391
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_JNI:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mTrackingAdaptors:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingAdaptorBase;

    if-nez p1, :cond_1

    .line 396
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_UNINITIALIZE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1

    .line 397
    :cond_1
    invoke-virtual {p1, p2}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingAdaptorBase;->setParams(Ljava/util/HashMap;)V

    .line 398
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_NONE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1
.end method

.method public setTrackingEventListener(Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventListener;)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;
    .locals 4

    .line 518
    sget-boolean v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mJNILoaded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "@@@VOOSMPAdMgrImpl"

    const-string v1, "AdsMgr JNI was not loaded"

    .line 519
    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 520
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_JNI:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1

    .line 523
    :cond_0
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mTrackingEventListener:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventListener;

    if-eqz p1, :cond_1

    .line 526
    invoke-interface {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventListener;->handleVASTEvents()Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 527
    :goto_0
    iget-wide v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNativeContext:J

    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mTrackingEventListener:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventListener;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-direct {p0, v2, v3, v1, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->nativeEnableTrackingEventListener(JZZ)V

    .line 530
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_NONE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1
.end method

.method public skipAd()Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;
    .locals 3

    .line 576
    sget-boolean v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mJNILoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPAdMgrImpl"

    const-string v2, "AdsMgr JNI was not loaded"

    .line 577
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 578
    sget-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_JNI:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object v0

    .line 581
    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->nativeSkipAd(J)I

    move-result v0

    .line 582
    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    move-result-object v0

    return-object v0
.end method

.method public unInit()Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;
    .locals 3

    .line 223
    sget-boolean v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mJNILoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPAdMgrImpl"

    const-string v2, "AdsMgr JNI was not loaded"

    .line 224
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    sget-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_JNI:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object v0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mTrackingAdaptors:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 228
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->nativeUnInit(J)I

    move-result v0

    .line 229
    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    move-result-object v0

    return-object v0
.end method

.method public unlockAdsMgr()V
    .locals 3

    .line 1382
    sget-boolean v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mJNILoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPAdMgrImpl"

    const-string v2, "AdsMgr JNI was not loaded"

    .line 1383
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1386
    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->nativeUnlockAdsMgr(J)V

    return-void
.end method
