.class public Lcom/google/android/gms/cast/framework/CastSession;
.super Lcom/google/android/gms/cast/framework/Session;
.source "com.google.android.gms:play-services-cast-framework@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/framework/CastSession$zzc;,
        Lcom/google/android/gms/cast/framework/CastSession$zza;,
        Lcom/google/android/gms/cast/framework/CastSession$zzb;,
        Lcom/google/android/gms/cast/framework/CastSession$zzd;
    }
.end annotation


# static fields
.field private static final zzy:Lcom/google/android/gms/cast/internal/Logger;


# instance fields
.field private zzee:Lcom/google/android/gms/cast/CastDevice;

.field private final zzjt:Landroid/content/Context;

.field private final zzjz:Lcom/google/android/gms/cast/framework/CastOptions;

.field private final zzkr:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/cast/Cast$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final zzks:Lcom/google/android/gms/cast/framework/zzk;

.field private final zzkt:Lcom/google/android/gms/cast/framework/media/internal/zzk;

.field private final zzku:Lcom/google/android/gms/internal/cast/zzq;

.field private zzkv:Lcom/google/android/gms/internal/cast/zzo;

.field private zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

.field private zzkx:Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 116
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    const-string v1, "CastSession"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/cast/framework/CastSession;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/internal/cast/zzq;Lcom/google/android/gms/cast/framework/media/internal/zzk;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/cast/framework/Session;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzkr:Ljava/util/Set;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzjt:Landroid/content/Context;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzjz:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 5
    iput-object p6, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzkt:Lcom/google/android/gms/cast/framework/media/internal/zzk;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzku:Lcom/google/android/gms/internal/cast/zzq;

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/Session;->zzaj()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/cast/framework/CastSession$zzc;

    const/4 p5, 0x0

    invoke-direct {p3, p0, p5}, Lcom/google/android/gms/cast/framework/CastSession$zzc;-><init>(Lcom/google/android/gms/cast/framework/CastSession;Lcom/google/android/gms/cast/framework/zzd;)V

    .line 9
    invoke-static {p1, p4, p2, p3}, Lcom/google/android/gms/internal/cast/zzae;->zza(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/cast/framework/zzf;)Lcom/google/android/gms/cast/framework/zzk;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzks:Lcom/google/android/gms/cast/framework/zzk;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/framework/CastSession;Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;)Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzkx:Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/framework/CastSession;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/framework/CastSession;Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/framework/CastSession;I)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/framework/CastSession;->zzq(I)V

    return-void
.end method

.method static synthetic zzab()Lcom/google/android/gms/cast/internal/Logger;
    .locals 1

    .line 109
    sget-object v0, Lcom/google/android/gms/cast/framework/CastSession;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/cast/framework/CastSession;)Lcom/google/android/gms/cast/framework/zzk;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzks:Lcom/google/android/gms/cast/framework/zzk;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/cast/framework/CastSession;)Ljava/util/Set;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzkr:Ljava/util/Set;

    return-object p0
.end method

.method private final zzc(Landroid/os/Bundle;)V
    .locals 9

    .line 79
    invoke-static {p1}, Lcom/google/android/gms/cast/CastDevice;->getFromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzee:Lcom/google/android/gms/cast/CastDevice;

    if-nez p1, :cond_1

    .line 81
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/Session;->isResuming()Z

    move-result p1

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    .line 82
    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/Session;->notifyFailedToResumeSession(I)V

    return-void

    .line 83
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/Session;->notifyFailedToStartSession(I)V

    return-void

    .line 85
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzkv:Lcom/google/android/gms/internal/cast/zzo;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 86
    invoke-interface {p1}, Lcom/google/android/gms/internal/cast/zzo;->disconnect()V

    .line 87
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzkv:Lcom/google/android/gms/internal/cast/zzo;

    .line 88
    :cond_2
    sget-object p1, Lcom/google/android/gms/cast/framework/CastSession;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzee:Lcom/google/android/gms/cast/CastDevice;

    aput-object v3, v1, v2

    const-string v2, "Acquiring a connection to Google Play Services for %s"

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzku:Lcom/google/android/gms/internal/cast/zzq;

    iget-object v4, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzjt:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzee:Lcom/google/android/gms/cast/CastDevice;

    iget-object v6, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzjz:Lcom/google/android/gms/cast/framework/CastOptions;

    new-instance v7, Lcom/google/android/gms/cast/framework/CastSession$zzb;

    invoke-direct {v7, p0, v0}, Lcom/google/android/gms/cast/framework/CastSession$zzb;-><init>(Lcom/google/android/gms/cast/framework/CastSession;Lcom/google/android/gms/cast/framework/zzd;)V

    new-instance v8, Lcom/google/android/gms/cast/framework/CastSession$zzd;

    invoke-direct {v8, p0, v0}, Lcom/google/android/gms/cast/framework/CastSession$zzd;-><init>(Lcom/google/android/gms/cast/framework/CastSession;Lcom/google/android/gms/cast/framework/zzd;)V

    .line 90
    invoke-interface/range {v3 .. v8}, Lcom/google/android/gms/internal/cast/zzq;->zza(Landroid/content/Context;Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/cast/Cast$Listener;Lcom/google/android/gms/internal/cast/zzr;)Lcom/google/android/gms/internal/cast/zzo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzkv:Lcom/google/android/gms/internal/cast/zzo;

    .line 91
    invoke-interface {p1}, Lcom/google/android/gms/internal/cast/zzo;->connect()V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/cast/framework/CastSession;)Lcom/google/android/gms/internal/cast/zzo;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzkv:Lcom/google/android/gms/internal/cast/zzo;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/cast/framework/CastSession;)Lcom/google/android/gms/cast/framework/media/internal/zzk;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzkt:Lcom/google/android/gms/cast/framework/media/internal/zzk;

    return-object p0
.end method

.method private final zzq(I)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzkt:Lcom/google/android/gms/cast/framework/media/internal/zzk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzv(I)V

    .line 94
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzkv:Lcom/google/android/gms/internal/cast/zzo;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 95
    invoke-interface {p1}, Lcom/google/android/gms/internal/cast/zzo;->disconnect()V

    .line 96
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzkv:Lcom/google/android/gms/internal/cast/zzo;

    .line 97
    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzee:Lcom/google/android/gms/cast/CastDevice;

    .line 98
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    if-eqz p1, :cond_1

    .line 99
    invoke-virtual {p1, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zza(Lcom/google/android/gms/internal/cast/zzo;)V

    .line 100
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 101
    :cond_1
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzkx:Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;

    return-void
.end method


# virtual methods
.method public addCastListener(Lcom/google/android/gms/cast/Cast$Listener;)V
    .locals 1

    const-string v0, "Must be called from the main thread."

    .line 71
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzkr:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected end(Z)V
    .locals 5

    const/4 v0, 0x0

    .line 19
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzks:Lcom/google/android/gms/cast/framework/zzk;

    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/cast/framework/zzk;->zza(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 22
    sget-object v1, Lcom/google/android/gms/cast/framework/CastSession;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "disconnectFromDevice"

    aput-object v3, v2, v0

    const/4 v3, 0x1

    const-class v4, Lcom/google/android/gms/cast/framework/zzk;

    .line 23
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Unable to call %s on %s."

    .line 24
    invoke-virtual {v1, p1, v3, v2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/Session;->notifySessionEnded(I)V

    return-void
.end method

.method public getActiveInputState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    .line 35
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzkv:Lcom/google/android/gms/internal/cast/zzo;

    if-eqz v0, :cond_0

    .line 37
    invoke-interface {v0}, Lcom/google/android/gms/internal/cast/zzo;->getActiveInputState()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getApplicationConnectionResult()Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;
    .locals 1

    const-string v0, "Must be called from the main thread."

    .line 59
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzkx:Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;

    return-object v0
.end method

.method public getApplicationMetadata()Lcom/google/android/gms/cast/ApplicationMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    .line 42
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzkv:Lcom/google/android/gms/internal/cast/zzo;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/cast/zzo;->getApplicationMetadata()Lcom/google/android/gms/cast/ApplicationMetadata;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getApplicationStatus()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    .line 44
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzkv:Lcom/google/android/gms/internal/cast/zzo;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/cast/zzo;->getApplicationStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCastDevice()Lcom/google/android/gms/cast/CastDevice;
    .locals 1

    const-string v0, "Must be called from the main thread."

    .line 29
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzee:Lcom/google/android/gms/cast/CastDevice;

    return-object v0
.end method

.method public getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;
    .locals 1

    const-string v0, "Must be called from the main thread."

    .line 27
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    return-object v0
.end method

.method public getSessionRemainingTimeMs()J
    .locals 4

    const-string v0, "Must be called from the main thread."

    .line 103
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 106
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getStreamDuration()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getApproximateStreamPosition()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getStandbyState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    .line 40
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzkv:Lcom/google/android/gms/internal/cast/zzo;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/cast/zzo;->getStandbyState()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getVolume()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    .line 50
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzkv:Lcom/google/android/gms/internal/cast/zzo;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/cast/zzo;->getVolume()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isMute()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    .line 57
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzkv:Lcom/google/android/gms/internal/cast/zzo;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/cast/zzo;->isMute()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onResuming(Landroid/os/Bundle;)V
    .locals 0

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/cast/CastDevice;->getFromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzee:Lcom/google/android/gms/cast/CastDevice;

    return-void
.end method

.method protected onStarting(Landroid/os/Bundle;)V
    .locals 0

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/cast/CastDevice;->getFromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzee:Lcom/google/android/gms/cast/CastDevice;

    return-void
.end method

.method public removeCastListener(Lcom/google/android/gms/cast/Cast$Listener;)V
    .locals 1

    const-string v0, "Must be called from the main thread."

    .line 75
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzkr:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeMessageReceivedCallbacks(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    .line 65
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzkv:Lcom/google/android/gms/internal/cast/zzo;

    if-eqz v0, :cond_0

    .line 67
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/cast/zzo;->removeMessageReceivedCallbacks(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public requestStatus()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    .line 31
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzkv:Lcom/google/android/gms/internal/cast/zzo;

    if-eqz v0, :cond_0

    .line 33
    invoke-interface {v0}, Lcom/google/android/gms/internal/cast/zzo;->requestStatus()V

    :cond_0
    return-void
.end method

.method protected resume(Landroid/os/Bundle;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/framework/CastSession;->zzc(Landroid/os/Bundle;)V

    return-void
.end method

.method public sendMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
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

    const-string v0, "Must be called from the main thread."

    .line 69
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzkv:Lcom/google/android/gms/internal/cast/zzo;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/cast/zzo;->sendMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setMessageReceivedCallbacks(Ljava/lang/String;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    .line 61
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzkv:Lcom/google/android/gms/internal/cast/zzo;

    if-eqz v0, :cond_0

    .line 63
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/cast/zzo;->setMessageReceivedCallbacks(Ljava/lang/String;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;)V

    :cond_0
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    .line 53
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzkv:Lcom/google/android/gms/internal/cast/zzo;

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/cast/zzo;->setMute(Z)V

    :cond_0
    return-void
.end method

.method public setVolume(D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    .line 46
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzkv:Lcom/google/android/gms/internal/cast/zzo;

    if-eqz v0, :cond_0

    .line 48
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/cast/zzo;->setVolume(D)V

    :cond_0
    return-void
.end method

.method protected start(Landroid/os/Bundle;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/framework/CastSession;->zzc(Landroid/os/Bundle;)V

    return-void
.end method

.method public final zzaa()Lcom/google/android/gms/cast/framework/media/internal/zzk;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->zzkt:Lcom/google/android/gms/cast/framework/media/internal/zzk;

    return-object v0
.end method
