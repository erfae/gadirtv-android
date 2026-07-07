.class public Lcom/magoware/magoware/webtv/players/exoplayer/DemoDownloadService;
.super Lcom/google/android/exoplayer2/offline/DownloadService;
.source "DemoDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/players/exoplayer/DemoDownloadService$TerminalStateNotificationHelper;
    }
.end annotation


# static fields
.field private static final FOREGROUND_NOTIFICATION_ID:I = 0x1

.field private static final JOB_ID:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    const-string v4, "download_channel"

    const v5, 0x7f1401a1

    const/4 v6, 0x0

    move-object v0, p0

    .line 42
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/offline/DownloadService;-><init>(IJLjava/lang/String;II)V

    return-void
.end method


# virtual methods
.method protected getDownloadManager()Lcom/google/android/exoplayer2/offline/DownloadManager;
    .locals 4

    .line 55
    invoke-static {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;->getDownloadManager(Landroid/content/Context;)Lcom/google/android/exoplayer2/offline/DownloadManager;

    move-result-object v0

    .line 57
    invoke-static {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;->getDownloadNotificationHelper(Landroid/content/Context;)Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;

    move-result-object v1

    .line 58
    new-instance v2, Lcom/magoware/magoware/webtv/players/exoplayer/DemoDownloadService$TerminalStateNotificationHelper;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v1, v3}, Lcom/magoware/magoware/webtv/players/exoplayer/DemoDownloadService$TerminalStateNotificationHelper;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;I)V

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/offline/DownloadManager;->addListener(Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;)V

    return-object v0
.end method

.method protected getForegroundNotification(Ljava/util/List;)Landroid/app/Notification;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloads"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/Download;",
            ">;)",
            "Landroid/app/Notification;"
        }
    .end annotation

    .line 72
    invoke-static {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;->getDownloadNotificationHelper(Landroid/content/Context;)Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;

    move-result-object v0

    const v2, 0x7f0801a7

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p1

    .line 73
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;->buildProgressNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;Ljava/util/List;)Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method protected getScheduler()Lcom/google/android/exoplayer2/scheduler/PlatformScheduler;
    .locals 2

    .line 66
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/scheduler/PlatformScheduler;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/scheduler/PlatformScheduler;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected bridge synthetic getScheduler()Lcom/google/android/exoplayer2/scheduler/Scheduler;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/DemoDownloadService;->getScheduler()Lcom/google/android/exoplayer2/scheduler/PlatformScheduler;

    move-result-object v0

    return-object v0
.end method
