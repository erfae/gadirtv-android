.class final Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$WidevineOfflineLicenseFetchTask;
.super Landroid/os/AsyncTask;
.source "DownloadTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WidevineOfflineLicenseFetchTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final dialogHelper:Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;

.field private final downloadHelper:Lcom/google/android/exoplayer2/offline/DownloadHelper;

.field private drmSessionException:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

.field private final format:Lcom/google/android/exoplayer2/Format;

.field private final httpDataSourceFactory:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

.field private keySetId:[B

.field private final licenseUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Format;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;Lcom/google/android/exoplayer2/offline/DownloadHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "format",
            "licenseUri",
            "httpDataSourceFactory",
            "dialogHelper",
            "downloadHelper"
        }
    .end annotation

    .line 391
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 392
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$WidevineOfflineLicenseFetchTask;->format:Lcom/google/android/exoplayer2/Format;

    .line 393
    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$WidevineOfflineLicenseFetchTask;->licenseUri:Landroid/net/Uri;

    .line 394
    iput-object p3, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$WidevineOfflineLicenseFetchTask;->httpDataSourceFactory:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    .line 395
    iput-object p4, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$WidevineOfflineLicenseFetchTask;->dialogHelper:Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;

    .line 396
    iput-object p5, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$WidevineOfflineLicenseFetchTask;->downloadHelper:Lcom/google/android/exoplayer2/offline/DownloadHelper;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "voids"
        }
    .end annotation

    .line 374
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$WidevineOfflineLicenseFetchTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "voids"
        }
    .end annotation

    .line 401
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$WidevineOfflineLicenseFetchTask;->licenseUri:Landroid/net/Uri;

    .line 403
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$WidevineOfflineLicenseFetchTask;->httpDataSourceFactory:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    new-instance v1, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;-><init>()V

    .line 402
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->newWidevineInstance(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;

    move-result-object p1

    .line 407
    :try_start_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$WidevineOfflineLicenseFetchTask;->format:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->downloadLicense(Lcom/google/android/exoplayer2/Format;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$WidevineOfflineLicenseFetchTask;->keySetId:[B
    :try_end_0
    .catch Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 409
    :try_start_1
    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$WidevineOfflineLicenseFetchTask;->drmSessionException:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 411
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->release()V

    const/4 p1, 0x0

    return-object p1

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->release()V

    .line 412
    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "aVoid"
        }
    .end annotation

    .line 374
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$WidevineOfflineLicenseFetchTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aVoid"
        }
    .end annotation

    .line 418
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$WidevineOfflineLicenseFetchTask;->drmSessionException:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    if-eqz p1, :cond_0

    .line 419
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$WidevineOfflineLicenseFetchTask;->dialogHelper:Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;

    invoke-static {v0, p1}, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->access$600(Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;)V

    goto :goto_0

    .line 421
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$WidevineOfflineLicenseFetchTask;->dialogHelper:Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$WidevineOfflineLicenseFetchTask;->downloadHelper:Lcom/google/android/exoplayer2/offline/DownloadHelper;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$WidevineOfflineLicenseFetchTask;->keySetId:[B

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {p1, v0, v1}, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->access$700(Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;Lcom/google/android/exoplayer2/offline/DownloadHelper;[B)V

    :goto_0
    return-void
.end method
