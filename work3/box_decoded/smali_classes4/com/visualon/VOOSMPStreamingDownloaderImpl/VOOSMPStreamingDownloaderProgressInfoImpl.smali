.class public Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderProgressInfoImpl;
.super Ljava/lang/Object;
.source "VOOSMPStreamingDownloaderProgressInfoImpl.java"

# interfaces
.implements Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderListener$VOOSMPStreamingDownloaderProgressInfo;


# instance fields
.field mCurrentDuration:J

.field mTotalDuration:J


# direct methods
.method constructor <init>(JJ)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 22
    iput-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderProgressInfoImpl;->mCurrentDuration:J

    .line 23
    iput-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderProgressInfoImpl;->mTotalDuration:J

    .line 26
    iput-wide p1, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderProgressInfoImpl;->mCurrentDuration:J

    .line 27
    iput-wide p3, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderProgressInfoImpl;->mTotalDuration:J

    return-void
.end method


# virtual methods
.method public getDownloadedStreamDuration()J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderProgressInfoImpl;->mCurrentDuration:J

    return-wide v0
.end method

.method public getTotalStreamDuration()J
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderProgressInfoImpl;->mTotalDuration:J

    return-wide v0
.end method
