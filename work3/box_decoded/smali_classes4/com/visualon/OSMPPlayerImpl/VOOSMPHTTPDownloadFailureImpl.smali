.class Lcom/visualon/OSMPPlayerImpl/VOOSMPHTTPDownloadFailureImpl;
.super Ljava/lang/Object;
.source "VOOSMPHTTPDownloadFailureImpl.java"

# interfaces
.implements Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure;


# instance fields
.field private mReason:Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;

.field private mResponse:Ljava/lang/String;

.field private mResponsePayload:[B

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;->VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON_MAX:Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPHTTPDownloadFailureImpl;->mReason:Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPHTTPDownloadFailureImpl;->mResponse:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPHTTPDownloadFailureImpl;->mUrl:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPHTTPDownloadFailureImpl;->mResponsePayload:[B

    return-void
.end method

.method public constructor <init>(Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPHTTPDownloadFailureImpl;->mReason:Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;

    .line 36
    iput-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPHTTPDownloadFailureImpl;->mResponse:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPHTTPDownloadFailureImpl;->mUrl:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPHTTPDownloadFailureImpl;->mResponsePayload:[B

    return-void
.end method


# virtual methods
.method public getReason()Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPHTTPDownloadFailureImpl;->mReason:Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;

    return-object v0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPHTTPDownloadFailureImpl;->mResponse:Ljava/lang/String;

    return-object v0
.end method

.method public getResponsePayload()[B
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPHTTPDownloadFailureImpl;->mResponsePayload:[B

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPHTTPDownloadFailureImpl;->mUrl:Ljava/lang/String;

    return-object v0
.end method
