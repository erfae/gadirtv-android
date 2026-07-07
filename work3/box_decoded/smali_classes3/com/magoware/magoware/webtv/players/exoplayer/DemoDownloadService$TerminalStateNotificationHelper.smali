.class final Lcom/magoware/magoware/webtv/players/exoplayer/DemoDownloadService$TerminalStateNotificationHelper;
.super Ljava/lang/Object;
.source "DemoDownloadService.java"

# interfaces
.implements Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/players/exoplayer/DemoDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TerminalStateNotificationHelper"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private nextNotificationId:I

.field private final notificationHelper:Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "notificationHelper",
            "firstNotificationId"
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DemoDownloadService$TerminalStateNotificationHelper;->context:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DemoDownloadService$TerminalStateNotificationHelper;->notificationHelper:Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;

    .line 98
    iput p3, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DemoDownloadService$TerminalStateNotificationHelper;->nextNotificationId:I

    return-void
.end method


# virtual methods
.method public onDownloadChanged(Lcom/google/android/exoplayer2/offline/DownloadManager;Lcom/google/android/exoplayer2/offline/Download;Ljava/lang/Exception;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "downloadManager",
            "download",
            "finalException"
        }
    .end annotation

    .line 105
    iget p1, p2, Lcom/google/android/exoplayer2/offline/Download;->state:I

    const/4 p3, 0x0

    const v0, 0x7f0801a8

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 106
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DemoDownloadService$TerminalStateNotificationHelper;->notificationHelper:Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DemoDownloadService$TerminalStateNotificationHelper;->context:Landroid/content/Context;

    iget-object p2, p2, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object p2, p2, Lcom/google/android/exoplayer2/offline/DownloadRequest;->data:[B

    .line 111
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Util;->fromUtf8Bytes([B)Ljava/lang/String;

    move-result-object p2

    .line 107
    invoke-virtual {p1, v1, v0, p3, p2}, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;->buildDownloadCompletedNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p1

    goto :goto_0

    .line 112
    :cond_0
    iget p1, p2, Lcom/google/android/exoplayer2/offline/Download;->state:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 113
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DemoDownloadService$TerminalStateNotificationHelper;->notificationHelper:Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DemoDownloadService$TerminalStateNotificationHelper;->context:Landroid/content/Context;

    iget-object p2, p2, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object p2, p2, Lcom/google/android/exoplayer2/offline/DownloadRequest;->data:[B

    .line 118
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Util;->fromUtf8Bytes([B)Ljava/lang/String;

    move-result-object p2

    .line 114
    invoke-virtual {p1, v1, v0, p3, p2}, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;->buildDownloadFailedNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p1

    .line 122
    :goto_0
    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DemoDownloadService$TerminalStateNotificationHelper;->context:Landroid/content/Context;

    iget p3, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DemoDownloadService$TerminalStateNotificationHelper;->nextNotificationId:I

    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DemoDownloadService$TerminalStateNotificationHelper;->nextNotificationId:I

    invoke-static {p2, p3, p1}, Lcom/google/android/exoplayer2/util/NotificationUtil;->setNotification(Landroid/content/Context;ILandroid/app/Notification;)V

    :cond_1
    return-void
.end method

.method public synthetic onDownloadRemoved(Lcom/google/android/exoplayer2/offline/DownloadManager;Lcom/google/android/exoplayer2/offline/Download;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener$-CC;->$default$onDownloadRemoved(Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;Lcom/google/android/exoplayer2/offline/DownloadManager;Lcom/google/android/exoplayer2/offline/Download;)V

    return-void
.end method

.method public synthetic onDownloadsPausedChanged(Lcom/google/android/exoplayer2/offline/DownloadManager;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener$-CC;->$default$onDownloadsPausedChanged(Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;Lcom/google/android/exoplayer2/offline/DownloadManager;Z)V

    return-void
.end method

.method public synthetic onIdle(Lcom/google/android/exoplayer2/offline/DownloadManager;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener$-CC;->$default$onIdle(Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;Lcom/google/android/exoplayer2/offline/DownloadManager;)V

    return-void
.end method

.method public synthetic onInitialized(Lcom/google/android/exoplayer2/offline/DownloadManager;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener$-CC;->$default$onInitialized(Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;Lcom/google/android/exoplayer2/offline/DownloadManager;)V

    return-void
.end method

.method public synthetic onRequirementsStateChanged(Lcom/google/android/exoplayer2/offline/DownloadManager;Lcom/google/android/exoplayer2/scheduler/Requirements;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener$-CC;->$default$onRequirementsStateChanged(Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;Lcom/google/android/exoplayer2/offline/DownloadManager;Lcom/google/android/exoplayer2/scheduler/Requirements;I)V

    return-void
.end method

.method public synthetic onWaitingForRequirementsChanged(Lcom/google/android/exoplayer2/offline/DownloadManager;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener$-CC;->$default$onWaitingForRequirementsChanged(Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;Lcom/google/android/exoplayer2/offline/DownloadManager;Z)V

    return-void
.end method
