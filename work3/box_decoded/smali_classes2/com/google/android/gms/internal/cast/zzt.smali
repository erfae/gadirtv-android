.class public final Lcom/google/android/gms/internal/cast/zzt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzo;


# static fields
.field private static final zzy:Lcom/google/android/gms/cast/internal/Logger;


# instance fields
.field private final zzam:Lcom/google/android/gms/cast/Cast$Listener;

.field private final zzee:Lcom/google/android/gms/cast/CastDevice;

.field private final zzjt:Landroid/content/Context;

.field private final zzjz:Lcom/google/android/gms/cast/framework/CastOptions;

.field private final zzmv:Lcom/google/android/gms/internal/cast/zzab;

.field private final zzmw:Lcom/google/android/gms/internal/cast/zzr;

.field private zzmx:Lcom/google/android/gms/cast/zzn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 85
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    const-string v1, "CastApiAdapter"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzt;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzab;Landroid/content/Context;Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/cast/Cast$Listener;Lcom/google/android/gms/internal/cast/zzr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzt;->zzmv:Lcom/google/android/gms/internal/cast/zzab;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzt;->zzjt:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzt;->zzee:Lcom/google/android/gms/cast/CastDevice;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/cast/zzt;->zzjz:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/cast/zzt;->zzam:Lcom/google/android/gms/cast/Cast$Listener;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/cast/zzt;->zzmw:Lcom/google/android/gms/internal/cast/zzr;

    return-void
.end method

.method static final synthetic zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;
    .locals 1

    .line 78
    new-instance v0, Lcom/google/android/gms/internal/cast/zzad;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cast/zzad;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method static final synthetic zza(Ljava/lang/Void;)Lcom/google/android/gms/common/api/Status;
    .locals 1

    .line 83
    new-instance p0, Lcom/google/android/gms/common/api/Status;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/cast/zzt;)Lcom/google/android/gms/internal/cast/zzr;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zzt;->zzmw:Lcom/google/android/gms/internal/cast/zzr;

    return-object p0
.end method

.method static final synthetic zzb(Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;)Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;
    .locals 0

    return-object p0
.end method

.method static final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;
    .locals 1

    .line 80
    new-instance v0, Lcom/google/android/gms/internal/cast/zzad;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cast/zzad;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method static final synthetic zzc(Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;)Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;
    .locals 0

    return-object p0
.end method

.method static final synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public final connect()V
    .locals 8

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzt;->zzmx:Lcom/google/android/gms/cast/zzn;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 10
    invoke-interface {v0}, Lcom/google/android/gms/cast/zzn;->zzc()Lcom/google/android/gms/tasks/Task;

    .line 11
    iput-object v1, p0, Lcom/google/android/gms/internal/cast/zzt;->zzmx:Lcom/google/android/gms/cast/zzn;

    .line 12
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/cast/zzt;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzt;->zzee:Lcom/google/android/gms/cast/CastDevice;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "Acquiring a connection to Google Play Services for %s"

    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/cast/zzaa;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/cast/zzaa;-><init>(Lcom/google/android/gms/internal/cast/zzt;Lcom/google/android/gms/internal/cast/zzy;)V

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzt;->zzmv:Lcom/google/android/gms/internal/cast/zzab;

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzt;->zzjt:Landroid/content/Context;

    .line 16
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 17
    iget-object v6, p0, Lcom/google/android/gms/internal/cast/zzt;->zzjz:Lcom/google/android/gms/cast/framework/CastOptions;

    if-eqz v6, :cond_1

    .line 18
    invoke-virtual {v6}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/google/android/gms/internal/cast/zzt;->zzjz:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 19
    invoke-virtual {v6}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getNotificationOptions()Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    move-result-object v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    const-string v7, "com.google.android.gms.cast.EXTRA_CAST_FRAMEWORK_NOTIFICATION_ENABLED"

    .line 20
    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 21
    iget-object v6, p0, Lcom/google/android/gms/internal/cast/zzt;->zzjz:Lcom/google/android/gms/cast/framework/CastOptions;

    if-eqz v6, :cond_2

    .line 22
    invoke-virtual {v6}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/google/android/gms/internal/cast/zzt;->zzjz:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 23
    invoke-virtual {v6}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->zzbq()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    const-string v5, "com.google.android.gms.cast.EXTRA_CAST_REMOTE_CONTROL_NOTIFICATION_ENABLED"

    .line 24
    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 25
    new-instance v2, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;

    iget-object v5, p0, Lcom/google/android/gms/internal/cast/zzt;->zzee:Lcom/google/android/gms/cast/CastDevice;

    iget-object v6, p0, Lcom/google/android/gms/internal/cast/zzt;->zzam:Lcom/google/android/gms/cast/Cast$Listener;

    invoke-direct {v2, v5, v6}, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;-><init>(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/Cast$Listener;)V

    invoke-virtual {v2, v4}, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->zza(Landroid/os/Bundle;)Lcom/google/android/gms/cast/Cast$CastOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->build()Lcom/google/android/gms/cast/Cast$CastOptions;

    move-result-object v2

    .line 26
    invoke-interface {v1, v3, v2, v0}, Lcom/google/android/gms/internal/cast/zzab;->zza(Landroid/content/Context;Lcom/google/android/gms/cast/Cast$CastOptions;Lcom/google/android/gms/cast/zzp;)Lcom/google/android/gms/cast/zzn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzt;->zzmx:Lcom/google/android/gms/cast/zzn;

    .line 27
    invoke-interface {v0}, Lcom/google/android/gms/cast/zzn;->zzb()Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final disconnect()V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzt;->zzmx:Lcom/google/android/gms/cast/zzn;

    if-eqz v0, :cond_0

    .line 30
    invoke-interface {v0}, Lcom/google/android/gms/cast/zzn;->zzc()Lcom/google/android/gms/tasks/Task;

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzt;->zzmx:Lcom/google/android/gms/cast/zzn;

    :cond_0
    return-void
.end method

.method public final getActiveInputState()I
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzt;->zzmx:Lcom/google/android/gms/cast/zzn;

    if-eqz v0, :cond_0

    .line 37
    invoke-interface {v0}, Lcom/google/android/gms/cast/zzn;->getActiveInputState()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final getApplicationMetadata()Lcom/google/android/gms/cast/ApplicationMetadata;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzt;->zzmx:Lcom/google/android/gms/cast/zzn;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/cast/zzn;->getApplicationMetadata()Lcom/google/android/gms/cast/ApplicationMetadata;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getApplicationStatus()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzt;->zzmx:Lcom/google/android/gms/cast/zzn;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/cast/zzn;->getApplicationStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getStandbyState()I
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzt;->zzmx:Lcom/google/android/gms/cast/zzn;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/cast/zzn;->getStandbyState()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final getVolume()D
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzt;->zzmx:Lcom/google/android/gms/cast/zzn;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/cast/zzn;->getVolume()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final isMute()Z
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzt;->zzmx:Lcom/google/android/gms/cast/zzn;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/cast/zzn;->isMute()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final removeMessageReceivedCallbacks(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzt;->zzmx:Lcom/google/android/gms/cast/zzn;

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0, p1}, Lcom/google/android/gms/cast/zzn;->zzb(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    :cond_0
    return-void
.end method

.method public final requestStatus()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzt;->zzmx:Lcom/google/android/gms/cast/zzn;

    if-eqz v0, :cond_0

    .line 34
    invoke-interface {v0}, Lcom/google/android/gms/cast/zzn;->zzd()Lcom/google/android/gms/tasks/Task;

    :cond_0
    return-void
.end method

.method public final sendMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzt;->zzmx:Lcom/google/android/gms/cast/zzn;

    if-eqz v0, :cond_0

    .line 59
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/cast/zzn;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/cast/zzs;->zzmu:Lcom/google/android/gms/internal/cast/zzba;

    sget-object v0, Lcom/google/android/gms/internal/cast/zzv;->zzmu:Lcom/google/android/gms/internal/cast/zzba;

    .line 60
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/cast/zzaw;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/internal/cast/zzba;Lcom/google/android/gms/internal/cast/zzba;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final setMessageReceivedCallbacks(Ljava/lang/String;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzt;->zzmx:Lcom/google/android/gms/cast/zzn;

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/cast/zzn;->zza(Ljava/lang/String;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;)Lcom/google/android/gms/tasks/Task;

    :cond_0
    return-void
.end method

.method public final setMute(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzt;->zzmx:Lcom/google/android/gms/cast/zzn;

    if-eqz v0, :cond_0

    .line 48
    invoke-interface {v0, p1}, Lcom/google/android/gms/cast/zzn;->zza(Z)Lcom/google/android/gms/tasks/Task;

    :cond_0
    return-void
.end method

.method public final setVolume(D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzt;->zzmx:Lcom/google/android/gms/cast/zzn;

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/cast/zzn;->zza(D)Lcom/google/android/gms/tasks/Task;

    :cond_0
    return-void
.end method

.method public final zzc(Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/cast/LaunchOptions;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzt;->zzmx:Lcom/google/android/gms/cast/zzn;

    if-eqz v0, :cond_0

    .line 71
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/cast/zzn;->zza(Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/cast/zzw;->zzmu:Lcom/google/android/gms/internal/cast/zzba;

    sget-object v0, Lcom/google/android/gms/internal/cast/zzz;->zzmu:Lcom/google/android/gms/internal/cast/zzba;

    .line 72
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/cast/zzaw;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/internal/cast/zzba;Lcom/google/android/gms/internal/cast/zzba;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzt;->zzmx:Lcom/google/android/gms/cast/zzn;

    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/cast/zzn;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/cast/zzu;->zzmu:Lcom/google/android/gms/internal/cast/zzba;

    sget-object v0, Lcom/google/android/gms/internal/cast/zzx;->zzmu:Lcom/google/android/gms/internal/cast/zzba;

    .line 66
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/cast/zzaw;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/internal/cast/zzba;Lcom/google/android/gms/internal/cast/zzba;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzn(Ljava/lang/String;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzt;->zzmx:Lcom/google/android/gms/cast/zzn;

    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0, p1}, Lcom/google/android/gms/cast/zzn;->zza(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    :cond_0
    return-void
.end method
