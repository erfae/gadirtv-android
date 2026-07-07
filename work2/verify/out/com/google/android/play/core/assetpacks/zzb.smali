.class final Lcom/google/android/play/core/assetpacks/zzb;
.super Lcom/google/android/play/core/internal/zzx;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field public final zza:Landroid/app/NotificationManager;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final zzb:Lcom/google/android/play/core/internal/zzag;

.field private final zzc:Landroid/content/Context;

.field private final zzd:Lcom/google/android/play/core/assetpacks/zzbh;

.field private final zze:Lcom/google/android/play/core/assetpacks/zzl;

.field private final zzf:Lcom/google/android/play/core/assetpacks/zzci;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/play/core/assetpacks/zzbh;Lcom/google/android/play/core/assetpacks/zzl;Lcom/google/android/play/core/assetpacks/zzci;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Lcom/google/android/play/core/internal/zzx;-><init>()V

    new-instance v0, Lcom/google/android/play/core/internal/zzag;

    const-string v1, "AssetPackExtractionService"

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/zzag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/play/core/assetpacks/zzb;->zzb:Lcom/google/android/play/core/internal/zzag;

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzb;->zzc:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/zzb;->zzd:Lcom/google/android/play/core/assetpacks/zzbh;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/zzb;->zze:Lcom/google/android/play/core/assetpacks/zzl;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/zzb;->zzf:Lcom/google/android/play/core/assetpacks/zzci;

    const-string p2, "notification"

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzb;->zza:Landroid/app/NotificationManager;

    return-void
.end method

.method private final declared-synchronized zzd(Ljava/lang/String;)V
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_5

    :try_start_3
    const-string p1, "File downloads by Play"

    .line 1
    :cond_5
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "playcore-assetpacks-service-notification-channel"

    const/4 v2, 0x2

    invoke-direct {v0, v1, p1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/zzb;->zza:Landroid/app/NotificationManager;

    .line 2
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized zze(Landroid/os/Bundle;Lcom/google/android/play/core/internal/zzz;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzb;->zzb:Lcom/google/android/play/core/internal/zzag;

    const-string v1, "updateServiceState AIDL call"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/play/core/internal/zzag;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzb;->zzc:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Lcom/google/android/play/core/internal/zzch;->zzb(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_ec

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzb;->zzc:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lcom/google/android/play/core/internal/zzch;->zza(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto/16 :goto_ec

    :cond_1d
    const-string v0, "action_type"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzb;->zzf:Lcom/google/android/play/core/assetpacks/zzci;

    .line 5
    invoke-virtual {v1, p2}, Lcom/google/android/play/core/assetpacks/zzci;->zzc(Lcom/google/android/play/core/internal/zzz;)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c4

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p2, v0, :cond_3a

    const-string v3, "notification_channel_name"

    .line 6
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-direct {p0, v3}, Lcom/google/android/play/core/assetpacks/zzb;->zzd(Ljava/lang/String;)V

    :cond_3a
    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/zzb;->zze:Lcom/google/android/play/core/assetpacks/zzl;

    .line 8
    invoke-virtual {v3, v1}, Lcom/google/android/play/core/assetpacks/zzl;->zzg(Z)V

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/zzb;->zzf:Lcom/google/android/play/core/assetpacks/zzci;

    const-string v4, "notification_title"

    .line 9
    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "notification_subtext"

    .line 10
    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "notification_timeout"

    const-wide/32 v7, 0x927c0

    .line 11
    invoke-virtual {p1, v6, v7, v8}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v8, "notification_on_click_intent"

    .line 12
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    if-lt p2, v0, :cond_6c

    .line 13
    new-instance p2, Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzb;->zzc:Landroid/content/Context;

    const-string v9, "playcore-assetpacks-service-notification-channel"

    invoke-direct {p2, v0, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p2, v6, v7}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    move-result-object p2

    goto :goto_78

    .line 15
    :cond_6c
    new-instance p2, Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzb;->zzc:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x2

    .line 16
    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 17
    :goto_78
    instance-of v0, v8, Landroid/app/PendingIntent;

    if-eqz v0, :cond_81

    .line 18
    check-cast v8, Landroid/app/PendingIntent;

    invoke-virtual {p2, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_81
    const v0, 0x1080081

    .line 19
    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 20
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    if-nez v4, :cond_90

    const-string v4, "Downloading additional file"

    .line 21
    :cond_90
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    if-nez v5, :cond_98

    const-string v5, "Transferring"

    .line 22
    :cond_98
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const-string v0, "notification_color"

    .line 23
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_ab

    .line 24
    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 25
    :cond_ab
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 26
    invoke-virtual {v3, p1}, Lcom/google/android/play/core/assetpacks/zzci;->zza(Landroid/app/Notification;)V

    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/google/android/play/core/assetpacks/zzb;->zzc:Landroid/content/Context;

    const-class v0, Lcom/google/android/play/core/assetpacks/ExtractionForegroundService;

    .line 27
    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p2, p0, Lcom/google/android/play/core/assetpacks/zzb;->zzc:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzb;->zzf:Lcom/google/android/play/core/assetpacks/zzci;

    .line 28
    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_c2
    .catchall {:try_start_1 .. :try_end_c2} :catchall_f6

    monitor-exit p0

    return-void

    :cond_c4
    const/4 p1, 0x2

    if-ne v0, p1, :cond_d3

    .line 29
    :try_start_c7
    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/zzb;->zze:Lcom/google/android/play/core/assetpacks/zzl;

    .line 30
    invoke-virtual {p1, v2}, Lcom/google/android/play/core/assetpacks/zzl;->zzg(Z)V

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/zzb;->zzf:Lcom/google/android/play/core/assetpacks/zzci;

    .line 31
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/zzci;->zzb()V
    :try_end_d1
    .catchall {:try_start_c7 .. :try_end_d1} :catchall_f6

    monitor-exit p0

    return-void

    :cond_d3
    :try_start_d3
    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/zzb;->zzb:Lcom/google/android/play/core/internal/zzag;

    new-array v1, v1, [Ljava/lang/Object;

    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "Unknown action type received: %d"

    invoke-virtual {p1, v0, v1}, Lcom/google/android/play/core/internal/zzag;->zzb(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance p1, Landroid/os/Bundle;

    .line 33
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2, p1}, Lcom/google/android/play/core/internal/zzz;->zzd(Landroid/os/Bundle;)V
    :try_end_ea
    .catchall {:try_start_d3 .. :try_end_ea} :catchall_f6

    monitor-exit p0

    return-void

    .line 34
    :cond_ec
    :goto_ec
    :try_start_ec
    new-instance p1, Landroid/os/Bundle;

    .line 35
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2, p1}, Lcom/google/android/play/core/internal/zzz;->zzd(Landroid/os/Bundle;)V
    :try_end_f4
    .catchall {:try_start_ec .. :try_end_f4} :catchall_f6

    monitor-exit p0

    return-void

    :catchall_f6
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final zzb(Landroid/os/Bundle;Lcom/google/android/play/core/internal/zzz;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/zzb;->zzb:Lcom/google/android/play/core/internal/zzag;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "clearAssetPackStorage AIDL call"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/play/core/internal/zzag;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/zzb;->zzc:Landroid/content/Context;

    .line 2
    invoke-static {p1}, Lcom/google/android/play/core/internal/zzch;->zzb(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_29

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/zzb;->zzc:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Lcom/google/android/play/core/internal/zzch;->zza(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto :goto_29

    .line 4
    :cond_1b
    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/zzb;->zzd:Lcom/google/android/play/core/assetpacks/zzbh;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/zzbh;->zzz()V

    new-instance p1, Landroid/os/Bundle;

    .line 6
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2, p1}, Lcom/google/android/play/core/internal/zzz;->zzc(Landroid/os/Bundle;)V

    return-void

    .line 7
    :cond_29
    :goto_29
    new-instance p1, Landroid/os/Bundle;

    .line 8
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2, p1}, Lcom/google/android/play/core/internal/zzz;->zzd(Landroid/os/Bundle;)V

    return-void
.end method

.method public final zzc(Landroid/os/Bundle;Lcom/google/android/play/core/internal/zzz;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/core/assetpacks/zzb;->zze(Landroid/os/Bundle;Lcom/google/android/play/core/internal/zzz;)V

    return-void
.end method
