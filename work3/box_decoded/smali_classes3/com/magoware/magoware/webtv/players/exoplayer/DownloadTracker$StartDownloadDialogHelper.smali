.class final Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;
.super Ljava/lang/Object;
.source "DownloadTracker.java"

# interfaces
.implements Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StartDownloadDialogHelper"
.end annotation


# instance fields
.field private final downloadHelper:Lcom/google/android/exoplayer2/offline/DownloadHelper;

.field private final fragmentManager:Landroidx/fragment/app/FragmentManager;

.field private keySetId:[B

.field private mappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

.field private final mediaItem:Lcom/google/android/exoplayer2/MediaItem;

.field final synthetic this$0:Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;

.field private trackSelectionDialog:Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;

.field private widevineOfflineLicenseFetchTask:Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$WidevineOfflineLicenseFetchTask;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;Landroidx/fragment/app/FragmentManager;Lcom/google/android/exoplayer2/offline/DownloadHelper;Lcom/google/android/exoplayer2/MediaItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "fragmentManager",
            "downloadHelper",
            "mediaItem"
        }
    .end annotation

    .line 181
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 183
    iput-object p3, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->downloadHelper:Lcom/google/android/exoplayer2/offline/DownloadHelper;

    .line 184
    iput-object p4, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 185
    invoke-virtual {p3, p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->prepare(Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;)V

    return-void
.end method

.method static synthetic access$600(Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;)V
    .locals 0

    .line 166
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->onOfflineLicenseFetchedError(Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;)V

    return-void
.end method

.method static synthetic access$700(Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;Lcom/google/android/exoplayer2/offline/DownloadHelper;[B)V
    .locals 0

    .line 166
    invoke-direct {p0, p1, p2}, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->onOfflineLicenseFetched(Lcom/google/android/exoplayer2/offline/DownloadHelper;[B)V

    return-void
.end method

.method private buildDownloadRequest()Lcom/google/android/exoplayer2/offline/DownloadRequest;
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->downloadHelper:Lcom/google/android/exoplayer2/offline/DownloadHelper;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaItem;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaMetadata;->title:Ljava/lang/String;

    .line 368
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->getDownloadRequest([B)Lcom/google/android/exoplayer2/offline/DownloadRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->keySetId:[B

    .line 369
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/offline/DownloadRequest;->copyWithKeySetId([B)Lcom/google/android/exoplayer2/offline/DownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method private getFirstFormatWithDrmInitData(Lcom/google/android/exoplayer2/offline/DownloadHelper;)Lcom/google/android/exoplayer2/Format;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "helper"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 286
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->getPeriodCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 287
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->getMappedTrackInfo(I)Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v2

    const/4 v3, 0x0

    .line 289
    :goto_1
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 291
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v4

    const/4 v5, 0x0

    .line 292
    :goto_2
    iget v6, v4, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v5, v6, :cond_2

    .line 293
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v6

    const/4 v7, 0x0

    .line 294
    :goto_3
    iget v8, v6, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v7, v8, :cond_1

    .line 295
    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v8

    .line 296
    iget-object v9, v8, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-eqz v9, :cond_0

    return-object v8

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method private hasSchemaData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drmInitData"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 349
    :goto_0
    iget v2, p1, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeDataCount:I

    if-ge v1, v2, :cond_1

    .line 350
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/drm/DrmInitData;->get(I)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->hasData()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private onDownloadPrepared(Lcom/google/android/exoplayer2/offline/DownloadHelper;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "helper"
        }
    .end annotation

    .line 318
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->getPeriodCount()I

    move-result p1

    const-string v0, "DownloadTracker"

    if-nez p1, :cond_0

    const-string p1, "No periods found. Downloading entire stream."

    .line 319
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->startDownload()V

    .line 321
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->downloadHelper:Lcom/google/android/exoplayer2/offline/DownloadHelper;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->release()V

    return-void

    .line 325
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->downloadHelper:Lcom/google/android/exoplayer2/offline/DownloadHelper;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->getMappedTrackInfo(I)Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->mappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    .line 326
    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;->willHaveContent(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "No dialog content. Downloading entire stream."

    .line 327
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->startDownload()V

    .line 329
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->downloadHelper:Lcom/google/android/exoplayer2/offline/DownloadHelper;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->release()V

    return-void

    :cond_1
    const v0, 0x7f14019e

    .line 332
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->mappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;

    .line 336
    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;->access$500(Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v5, p0

    move-object v6, p0

    .line 333
    invoke-static/range {v0 .. v6}, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;->createForMappedTrackInfoAndParameters(ILcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;ZZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->trackSelectionDialog:Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;

    .line 341
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private onOfflineLicenseFetched(Lcom/google/android/exoplayer2/offline/DownloadHelper;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "keySetId"
        }
    .end annotation

    .line 307
    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->keySetId:[B

    .line 308
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->onDownloadPrepared(Lcom/google/android/exoplayer2/offline/DownloadHelper;)V

    return-void
.end method

.method private onOfflineLicenseFetchedError(Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;->access$300(Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f14013a

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 313
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "DownloadTracker"

    const-string v1, "Failed to fetch offline DRM license"

    .line 314
    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private startDownload()V
    .locals 1

    .line 358
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->buildDownloadRequest()Lcom/google/android/exoplayer2/offline/DownloadRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->startDownload(Lcom/google/android/exoplayer2/offline/DownloadRequest;)V

    return-void
.end method

.method private startDownload(Lcom/google/android/exoplayer2/offline/DownloadRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadRequest"
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;

    .line 363
    invoke-static {v0}, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;->access$300(Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/magoware/magoware/webtv/players/exoplayer/DemoDownloadService;

    const/4 v2, 0x0

    .line 362
    invoke-static {v0, v1, p1, v2}, Lcom/google/android/exoplayer2/offline/DownloadService;->sendAddDownload(Landroid/content/Context;Ljava/lang/Class;Lcom/google/android/exoplayer2/offline/DownloadRequest;Z)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "which"
        }
    .end annotation

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 250
    :goto_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->downloadHelper:Lcom/google/android/exoplayer2/offline/DownloadHelper;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->getPeriodCount()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->downloadHelper:Lcom/google/android/exoplayer2/offline/DownloadHelper;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->clearTrackSelections(I)V

    const/4 v0, 0x0

    .line 252
    :goto_1
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->mappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 253
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->trackSelectionDialog:Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;

    invoke-virtual {v1, v0}, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;->getIsDisabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->downloadHelper:Lcom/google/android/exoplayer2/offline/DownloadHelper;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;

    .line 257
    invoke-static {v2}, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;->access$500(Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v2

    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->trackSelectionDialog:Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;

    .line 258
    invoke-virtual {v3, v0}, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;->getOverrides(I)Ljava/util/List;

    move-result-object v3

    .line 254
    invoke-virtual {v1, p2, v0, v2, v3}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->addTrackSelectionForSingleRenderer(IILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Ljava/util/List;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 262
    :cond_2
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->buildDownloadRequest()Lcom/google/android/exoplayer2/offline/DownloadRequest;

    move-result-object p1

    .line 263
    iget-object p2, p1, Lcom/google/android/exoplayer2/offline/DownloadRequest;->streamKeys:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    return-void

    .line 267
    :cond_3
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->startDownload(Lcom/google/android/exoplayer2/offline/DownloadRequest;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialogInterface"
        }
    .end annotation

    const/4 p1, 0x0

    .line 274
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->trackSelectionDialog:Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;

    .line 275
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->downloadHelper:Lcom/google/android/exoplayer2/offline/DownloadHelper;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->release()V

    return-void
.end method

.method public onPrepareError(Lcom/google/android/exoplayer2/offline/DownloadHelper;Ljava/io/IOException;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "e"
        }
    .end annotation

    .line 237
    instance-of p1, p2, Lcom/google/android/exoplayer2/offline/DownloadHelper$LiveContentUnsupportedException;

    if-eqz p1, :cond_0

    const v0, 0x7f140136

    goto :goto_0

    :cond_0
    const v0, 0x7f140139

    :goto_0
    if-eqz p1, :cond_1

    const-string p1, "Downloading live content unsupported"

    goto :goto_1

    :cond_1
    const-string p1, "Failed to start download"

    .line 242
    :goto_1
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;->access$300(Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "DownloadTracker"

    .line 243
    invoke-static {v0, p1, p2}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onPrepared(Lcom/google/android/exoplayer2/offline/DownloadHelper;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "helper"
        }
    .end annotation

    .line 202
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->getFirstFormatWithDrmInitData(Lcom/google/android/exoplayer2/offline/DownloadHelper;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    if-nez v1, :cond_0

    .line 204
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->onDownloadPrepared(Lcom/google/android/exoplayer2/offline/DownloadHelper;)V

    return-void

    .line 209
    :cond_0
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x12

    const-string v3, "DownloadTracker"

    const/4 v4, 0x1

    if-ge v0, v2, :cond_1

    .line 210
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;->access$300(Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f140170

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 211
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const-string p1, "Downloading DRM protected content is not supported on API versions below 18"

    .line 212
    invoke-static {v3, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 216
    :cond_1
    iget-object v0, v1, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->hasSchemaData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 217
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;->access$300(Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f14013a

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 218
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const-string p1, "Downloading content where DRM scheme data is not located in the manifest is not supported"

    .line 219
    invoke-static {v3, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 225
    :cond_2
    new-instance v6, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$WidevineOfflineLicenseFetchTask;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaItem;->playbackProperties:Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->licenseUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;

    .line 229
    invoke-static {v0}, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;->access$400(Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    move-result-object v3

    move-object v0, v6

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$WidevineOfflineLicenseFetchTask;-><init>(Lcom/google/android/exoplayer2/Format;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;Lcom/google/android/exoplayer2/offline/DownloadHelper;)V

    iput-object v6, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->widevineOfflineLicenseFetchTask:Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$WidevineOfflineLicenseFetchTask;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 232
    invoke-virtual {v6, p1}, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$WidevineOfflineLicenseFetchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public release()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->downloadHelper:Lcom/google/android/exoplayer2/offline/DownloadHelper;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->release()V

    .line 190
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->trackSelectionDialog:Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;->dismiss()V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->widevineOfflineLicenseFetchTask:Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$WidevineOfflineLicenseFetchTask;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 194
    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$WidevineOfflineLicenseFetchTask;->cancel(Z)Z

    :cond_1
    return-void
.end method
