.class public Lcom/magoware/magoware/webtv/pallycon/GlobalPallyCon;
.super Ljava/lang/Object;
.source "GlobalPallyCon.java"


# static fields
.field private static global:Lcom/magoware/magoware/webtv/pallycon/GlobalPallyCon;


# instance fields
.field public mDownloadCompleted:Z

.field public mDownloadTask:Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;

.field public mIsActivityPaused:Z

.field public mIsAds:Z

.field public mIsDnpExcuted:Z

.field public mIsLive:Z

.field public mIsSwCodecForced:Z

.field public mNcgFileDownloadPath:Ljava/lang/String;

.field public mNcgFileNameForDownloading:Ljava/lang/String;

.field public mNcgFilePath:Ljava/lang/String;

.field public mNcgFileSizeForDnp:J

.field public mOrderID:Ljava/lang/String;

.field public mPlayerMode:Ljava/lang/String;

.field public mProgressDlg:Landroid/app/ProgressDialog;

.field public mRemoteUrlForDnp:Ljava/lang/String;

.field public mTmp:Z

.field public mUserID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/magoware/magoware/webtv/pallycon/GlobalPallyCon;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/pallycon/GlobalPallyCon;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/pallycon/GlobalPallyCon;->global:Lcom/magoware/magoware/webtv/pallycon/GlobalPallyCon;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/GlobalPallyCon;->mUserID:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/GlobalPallyCon;->mOrderID:Ljava/lang/String;

    const-string v0, "NexPlayer"

    .line 23
    iput-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/GlobalPallyCon;->mPlayerMode:Ljava/lang/String;

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/GlobalPallyCon;->mNcgFileDownloadPath:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/GlobalPallyCon;->mProgressDlg:Landroid/app/ProgressDialog;

    return-void
.end method

.method public static getInstance()Lcom/magoware/magoware/webtv/pallycon/GlobalPallyCon;
    .locals 1

    .line 15
    sget-object v0, Lcom/magoware/magoware/webtv/pallycon/GlobalPallyCon;->global:Lcom/magoware/magoware/webtv/pallycon/GlobalPallyCon;

    return-object v0
.end method


# virtual methods
.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/pallycon/GlobalPallyCon;->mIsDnpExcuted:Z

    const-string v1, ""

    .line 84
    iput-object v1, p0, Lcom/magoware/magoware/webtv/pallycon/GlobalPallyCon;->mRemoteUrlForDnp:Ljava/lang/String;

    .line 85
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/pallycon/GlobalPallyCon;->mDownloadCompleted:Z

    return-void
.end method
