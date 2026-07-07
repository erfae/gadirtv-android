.class public final Lcom/google/android/gms/cast/zzak;
.super Lcom/google/android/gms/common/api/GoogleApi;
.source "com.google.android.gms:play-services-cast@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/cast/zzn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/GoogleApi<",
        "Lcom/google/android/gms/cast/Cast$CastOptions;",
        ">;",
        "Lcom/google/android/gms/cast/zzn;"
    }
.end annotation


# static fields
.field private static final zzdm:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "Lcom/google/android/gms/cast/internal/zzs;",
            "Lcom/google/android/gms/cast/Cast$CastOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdn:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "Lcom/google/android/gms/cast/Cast$CastOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzy:Lcom/google/android/gms/cast/internal/Logger;


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final zzam:Lcom/google/android/gms/cast/Cast$Listener;

.field final zzdl:Lcom/google/android/gms/cast/zzay;

.field private zzdo:I

.field private zzdp:Z

.field private zzdq:Z

.field private zzdr:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field private zzds:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdt:Ljava/util/concurrent/atomic/AtomicLong;

.field private final zzdu:Ljava/lang/Object;

.field private final zzdv:Ljava/lang/Object;

.field private zzdw:Lcom/google/android/gms/cast/ApplicationMetadata;

.field private zzdx:Ljava/lang/String;

.field private zzdy:D

.field private zzdz:Z

.field private zzea:I

.field private zzeb:I

.field private zzec:Lcom/google/android/gms/cast/zzah;

.field private zzed:D

.field private final zzee:Lcom/google/android/gms/cast/CastDevice;

.field private final zzef:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field final zzeg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final zzeh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/zzp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 321
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    const-string v1, "CastClient"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/cast/zzak;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    .line 322
    new-instance v0, Lcom/google/android/gms/cast/zzav;

    invoke-direct {v0}, Lcom/google/android/gms/cast/zzav;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/zzak;->zzdm:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 323
    new-instance v1, Lcom/google/android/gms/common/api/Api;

    sget-object v2, Lcom/google/android/gms/cast/internal/zzaf;->zzacw:Lcom/google/android/gms/common/api/Api$ClientKey;

    const-string v3, "Cast.API_CXLESS"

    invoke-direct {v1, v3, v0, v2}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    sput-object v1, Lcom/google/android/gms/cast/zzak;->zzdn:Lcom/google/android/gms/common/api/Api;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/cast/Cast$CastOptions;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/cast/zzak;->zzdn:Lcom/google/android/gms/common/api/Api;

    sget-object v1, Lcom/google/android/gms/common/api/GoogleApi$Settings;->DEFAULT_SETTINGS:Lcom/google/android/gms/common/api/GoogleApi$Settings;

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApi$Settings;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/cast/zzay;

    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/zzay;-><init>(Lcom/google/android/gms/cast/zzak;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/zzak;->zzdl:Lcom/google/android/gms/cast/zzay;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/zzak;->zzdu:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/zzak;->zzdv:Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/zzak;->zzeh:Ljava/util/List;

    const-string v0, "context cannot be null"

    .line 6
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "CastOptions cannot be null"

    .line 7
    invoke-static {p2, p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p1, p2, Lcom/google/android/gms/cast/Cast$CastOptions;->zzam:Lcom/google/android/gms/cast/Cast$Listener;

    iput-object p1, p0, Lcom/google/android/gms/cast/zzak;->zzam:Lcom/google/android/gms/cast/Cast$Listener;

    .line 9
    iget-object p1, p2, Lcom/google/android/gms/cast/Cast$CastOptions;->zzal:Lcom/google/android/gms/cast/CastDevice;

    iput-object p1, p0, Lcom/google/android/gms/cast/zzak;->zzee:Lcom/google/android/gms/cast/CastDevice;

    .line 10
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/zzak;->zzef:Ljava/util/Map;

    .line 11
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/zzak;->zzeg:Ljava/util/Map;

    .line 12
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/cast/zzak;->zzdt:Ljava/util/concurrent/atomic/AtomicLong;

    .line 13
    sget p1, Lcom/google/android/gms/cast/zzo;->zzaq:I

    iput p1, p0, Lcom/google/android/gms/cast/zzak;->zzdo:I

    .line 14
    invoke-direct {p0}, Lcom/google/android/gms/cast/zzak;->zzq()D

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/cast/zzak;->zzed:D

    .line 15
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdr;

    invoke-virtual {p0}, Lcom/google/android/gms/cast/zzak;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/cast/zzdr;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/cast/zzak;->handler:Landroid/os/Handler;

    return-void
.end method

.method private final checkConnected()V
    .locals 2

    .line 189
    iget v0, p0, Lcom/google/android/gms/cast/zzak;->zzdo:I

    sget v1, Lcom/google/android/gms/cast/zzo;->zzar:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Not connected to device"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/zzak;)Landroid/os/Handler;
    .locals 0

    .line 302
    iget-object p0, p0, Lcom/google/android/gms/cast/zzak;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/zzak;Lcom/google/android/gms/cast/ApplicationMetadata;)Lcom/google/android/gms/cast/ApplicationMetadata;
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/google/android/gms/cast/zzak;->zzdw:Lcom/google/android/gms/cast/ApplicationMetadata;

    return-object p1
.end method

.method private final zza(Lcom/google/android/gms/cast/internal/zzab;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/cast/internal/zzab;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "castDeviceControllerListenerKey"

    .line 120
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/cast/zzak;->registerListener(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object p1

    .line 121
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->getListenerKey()Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    move-result-object p1

    const-string v0, "Key must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    .line 122
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/zzak;->doUnregisterEventListener(Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/zzak;Lcom/google/android/gms/cast/internal/zzab;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 320
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/zzak;->zza(Lcom/google/android/gms/cast/internal/zzab;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/zzak;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/google/android/gms/cast/zzak;->zzdx:Ljava/lang/String;

    return-object p1
.end method

.method private final zza(JI)V
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/google/android/gms/cast/zzak;->zzef:Ljava/util/Map;

    monitor-enter v0

    .line 215
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/zzak;->zzef:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 216
    iget-object v2, p0, Lcom/google/android/gms/cast/zzak;->zzef:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    if-nez p3, :cond_0

    const/4 p1, 0x0

    .line 220
    invoke-virtual {v1, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void

    .line 221
    :cond_0
    invoke-static {p3}, Lcom/google/android/gms/cast/zzak;->zze(I)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 217
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final zza(Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;)V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/google/android/gms/cast/zzak;->zzdu:Ljava/lang/Object;

    monitor-enter v0

    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/zzak;->zzdr:Lcom/google/android/gms/tasks/TaskCompletionSource;

    if-eqz v1, :cond_0

    .line 198
    invoke-virtual {v1, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    .line 199
    iput-object p1, p0, Lcom/google/android/gms/cast/zzak;->zzdr:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 200
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private final zza(Lcom/google/android/gms/cast/internal/zzb;)V
    .locals 5

    .line 176
    invoke-virtual {p1}, Lcom/google/android/gms/cast/internal/zzb;->zzes()Ljava/lang/String;

    move-result-object p1

    .line 177
    iget-object v0, p0, Lcom/google/android/gms/cast/zzak;->zzdx:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/gms/cast/internal/CastUtils;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 178
    iput-object p1, p0, Lcom/google/android/gms/cast/zzak;->zzdx:Ljava/lang/String;

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 180
    :goto_0
    sget-object v0, Lcom/google/android/gms/cast/zzak;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 181
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v2

    iget-boolean v4, p0, Lcom/google/android/gms/cast/zzak;->zzdq:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "hasChanged=%b, mFirstApplicationStatusUpdate=%b"

    .line 182
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    iget-object v0, p0, Lcom/google/android/gms/cast/zzak;->zzam:Lcom/google/android/gms/cast/Cast$Listener;

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/google/android/gms/cast/zzak;->zzdq:Z

    if-eqz p1, :cond_2

    .line 184
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/cast/Cast$Listener;->onApplicationStatusChanged()V

    .line 185
    :cond_2
    iput-boolean v2, p0, Lcom/google/android/gms/cast/zzak;->zzdq:Z

    return-void
.end method

.method static final synthetic zza(Lcom/google/android/gms/cast/internal/zzs;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 293
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzs;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/cast/internal/zzz;

    invoke-interface {p0}, Lcom/google/android/gms/cast/internal/zzz;->requestStatus()V

    const/4 p0, 0x0

    .line 294
    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/cast/internal/zzu;)V
    .locals 9

    .line 127
    invoke-virtual {p1}, Lcom/google/android/gms/cast/internal/zzu;->getApplicationMetadata()Lcom/google/android/gms/cast/ApplicationMetadata;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/google/android/gms/cast/zzak;->zzdw:Lcom/google/android/gms/cast/ApplicationMetadata;

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/internal/CastUtils;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    iput-object v0, p0, Lcom/google/android/gms/cast/zzak;->zzdw:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 130
    iget-object v1, p0, Lcom/google/android/gms/cast/zzak;->zzam:Lcom/google/android/gms/cast/Cast$Listener;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/Cast$Listener;->onApplicationMetadataChanged(Lcom/google/android/gms/cast/ApplicationMetadata;)V

    .line 132
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/cast/internal/zzu;->getVolume()D

    move-result-wide v0

    .line 133
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    iget-wide v5, p0, Lcom/google/android/gms/cast/zzak;->zzdy:D

    sub-double v5, v0, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide v7, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v2, v5, v7

    if-lez v2, :cond_1

    .line 134
    iput-wide v0, p0, Lcom/google/android/gms/cast/zzak;->zzdy:D

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 136
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/cast/internal/zzu;->zzfa()Z

    move-result v1

    .line 137
    iget-boolean v2, p0, Lcom/google/android/gms/cast/zzak;->zzdz:Z

    if-eq v1, v2, :cond_2

    .line 138
    iput-boolean v1, p0, Lcom/google/android/gms/cast/zzak;->zzdz:Z

    const/4 v0, 0x1

    .line 140
    :cond_2
    sget-object v1, Lcom/google/android/gms/cast/zzak;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Object;

    .line 141
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    iget-boolean v6, p0, Lcom/google/android/gms/cast/zzak;->zzdp:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v3

    const-string v6, "hasVolumeChanged=%b, mFirstDeviceStatusUpdate=%b"

    .line 142
    invoke-virtual {v1, v6, v5}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    iget-object v5, p0, Lcom/google/android/gms/cast/zzak;->zzam:Lcom/google/android/gms/cast/Cast$Listener;

    if-eqz v5, :cond_4

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/cast/zzak;->zzdp:Z

    if-eqz v0, :cond_4

    .line 144
    :cond_3
    invoke-virtual {v5}, Lcom/google/android/gms/cast/Cast$Listener;->onVolumeChanged()V

    .line 145
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/cast/internal/zzu;->zzfc()D

    move-result-wide v5

    .line 146
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_5

    .line 147
    iput-wide v5, p0, Lcom/google/android/gms/cast/zzak;->zzed:D

    .line 149
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/cast/internal/zzu;->getActiveInputState()I

    move-result v0

    .line 150
    iget v5, p0, Lcom/google/android/gms/cast/zzak;->zzea:I

    if-eq v0, v5, :cond_6

    .line 151
    iput v0, p0, Lcom/google/android/gms/cast/zzak;->zzea:I

    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    new-array v5, v2, [Ljava/lang/Object;

    .line 154
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    iget-boolean v6, p0, Lcom/google/android/gms/cast/zzak;->zzdp:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v3

    const-string v6, "hasActiveInputChanged=%b, mFirstDeviceStatusUpdate=%b"

    .line 155
    invoke-virtual {v1, v6, v5}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    iget-object v5, p0, Lcom/google/android/gms/cast/zzak;->zzam:Lcom/google/android/gms/cast/Cast$Listener;

    if-eqz v5, :cond_8

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/google/android/gms/cast/zzak;->zzdp:Z

    if-eqz v0, :cond_8

    .line 157
    :cond_7
    iget v0, p0, Lcom/google/android/gms/cast/zzak;->zzea:I

    invoke-virtual {v5, v0}, Lcom/google/android/gms/cast/Cast$Listener;->onActiveInputStateChanged(I)V

    .line 159
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/cast/internal/zzu;->getStandbyState()I

    move-result v0

    .line 160
    iget v5, p0, Lcom/google/android/gms/cast/zzak;->zzeb:I

    if-eq v0, v5, :cond_9

    .line 161
    iput v0, p0, Lcom/google/android/gms/cast/zzak;->zzeb:I

    const/4 v0, 0x1

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    :goto_2
    new-array v2, v2, [Ljava/lang/Object;

    .line 164
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v4

    iget-boolean v5, p0, Lcom/google/android/gms/cast/zzak;->zzdp:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v3, "hasStandbyStateChanged=%b, mFirstDeviceStatusUpdate=%b"

    .line 165
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    iget-object v1, p0, Lcom/google/android/gms/cast/zzak;->zzam:Lcom/google/android/gms/cast/Cast$Listener;

    if-eqz v1, :cond_b

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/google/android/gms/cast/zzak;->zzdp:Z

    if-eqz v0, :cond_b

    .line 167
    :cond_a
    iget v0, p0, Lcom/google/android/gms/cast/zzak;->zzeb:I

    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/Cast$Listener;->onStandbyStateChanged(I)V

    .line 169
    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/cast/zzak;->zzec:Lcom/google/android/gms/cast/zzah;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/internal/zzu;->zzfb()Lcom/google/android/gms/cast/zzah;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/internal/CastUtils;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 171
    invoke-virtual {p1}, Lcom/google/android/gms/cast/internal/zzu;->zzfb()Lcom/google/android/gms/cast/zzah;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/zzak;->zzec:Lcom/google/android/gms/cast/zzah;

    .line 172
    :cond_c
    iget-object p1, p0, Lcom/google/android/gms/cast/zzak;->zzam:Lcom/google/android/gms/cast/Cast$Listener;

    .line 173
    iput-boolean v4, p0, Lcom/google/android/gms/cast/zzak;->zzdp:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/zzak;I)V
    .locals 0

    .line 306
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/zzak;->zzc(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/zzak;JI)V
    .locals 0

    .line 310
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/cast/zzak;->zza(JI)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/zzak;Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;)V
    .locals 0

    .line 305
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/zzak;->zza(Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/zzak;Lcom/google/android/gms/cast/internal/zzb;)V
    .locals 0

    .line 312
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/zzak;->zza(Lcom/google/android/gms/cast/internal/zzb;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/zzak;Lcom/google/android/gms/cast/internal/zzu;)V
    .locals 0

    .line 313
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/zzak;->zza(Lcom/google/android/gms/cast/internal/zzu;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;",
            ">;)V"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/google/android/gms/cast/zzak;->zzdu:Ljava/lang/Object;

    monitor-enter v0

    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/zzak;->zzdr:Lcom/google/android/gms/tasks/TaskCompletionSource;

    if-eqz v1, :cond_0

    const/16 v1, 0x7d2

    .line 193
    invoke-direct {p0, v1}, Lcom/google/android/gms/cast/zzak;->zzc(I)V

    .line 194
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/cast/zzak;->zzdr:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 195
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/zzak;Z)Z
    .locals 0

    const/4 p1, 0x1

    .line 316
    iput-boolean p1, p0, Lcom/google/android/gms/cast/zzak;->zzdp:Z

    return p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/cast/zzak;)Lcom/google/android/gms/cast/Cast$Listener;
    .locals 0

    .line 308
    iget-object p0, p0, Lcom/google/android/gms/cast/zzak;->zzam:Lcom/google/android/gms/cast/Cast$Listener;

    return-object p0
.end method

.method static final synthetic zzb(Lcom/google/android/gms/cast/internal/zzs;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 296
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzs;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/cast/internal/zzz;

    invoke-interface {p0}, Lcom/google/android/gms/cast/internal/zzz;->disconnect()V

    const/4 p0, 0x0

    .line 297
    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/cast/zzak;I)V
    .locals 0

    .line 307
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/zzak;->zzd(I)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/cast/zzak;Z)Z
    .locals 0

    const/4 p1, 0x1

    .line 317
    iput-boolean p1, p0, Lcom/google/android/gms/cast/zzak;->zzdq:Z

    return p1
.end method

.method static synthetic zzc(Lcom/google/android/gms/cast/zzak;I)I
    .locals 0

    .line 314
    iput p1, p0, Lcom/google/android/gms/cast/zzak;->zzdo:I

    return p1
.end method

.method static synthetic zzc(Lcom/google/android/gms/cast/zzak;)Lcom/google/android/gms/cast/CastDevice;
    .locals 0

    .line 311
    iget-object p0, p0, Lcom/google/android/gms/cast/zzak;->zzee:Lcom/google/android/gms/cast/CastDevice;

    return-object p0
.end method

.method private final zzc(I)V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/google/android/gms/cast/zzak;->zzdu:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/zzak;->zzdr:Lcom/google/android/gms/tasks/TaskCompletionSource;

    if-eqz v1, :cond_0

    .line 203
    invoke-static {p1}, Lcom/google/android/gms/cast/zzak;->zze(I)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :cond_0
    const/4 p1, 0x0

    .line 204
    iput-object p1, p0, Lcom/google/android/gms/cast/zzak;->zzdr:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 205
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static final synthetic zzc(Lcom/google/android/gms/cast/internal/zzs;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 299
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzs;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/cast/internal/zzz;

    invoke-interface {p0}, Lcom/google/android/gms/cast/internal/zzz;->zzfe()V

    const/4 p0, 0x1

    .line 300
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/cast/zzak;)Ljava/util/List;
    .locals 0

    .line 315
    iget-object p0, p0, Lcom/google/android/gms/cast/zzak;->zzeh:Ljava/util/List;

    return-object p0
.end method

.method private final zzd(I)V
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/google/android/gms/cast/zzak;->zzdv:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/zzak;->zzds:Lcom/google/android/gms/tasks/TaskCompletionSource;

    if-nez v1, :cond_0

    .line 208
    monitor-exit v0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 210
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v2, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 211
    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/cast/zzak;->zze(I)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :goto_0
    const/4 p1, 0x0

    .line 212
    iput-object p1, p0, Lcom/google/android/gms/cast/zzak;->zzds:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 213
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static zze(I)Lcom/google/android/gms/common/api/ApiException;
    .locals 1

    .line 223
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ApiExceptionUtil;->fromStatus(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/cast/zzak;)V
    .locals 0

    .line 318
    invoke-direct {p0}, Lcom/google/android/gms/cast/zzak;->zzn()V

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/cast/zzak;)V
    .locals 0

    .line 319
    invoke-direct {p0}, Lcom/google/android/gms/cast/zzak;->zzp()V

    return-void
.end method

.method private final zzn()V
    .locals 3

    .line 123
    sget-object v0, Lcom/google/android/gms/cast/zzak;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    const-string v1, "removing all MessageReceivedCallbacks"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/google/android/gms/cast/zzak;->zzeg:Ljava/util/Map;

    monitor-enter v0

    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/zzak;->zzeg:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 126
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final zzo()V
    .locals 2

    .line 187
    iget v0, p0, Lcom/google/android/gms/cast/zzak;->zzdo:I

    sget v1, Lcom/google/android/gms/cast/zzo;->zzaq:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Not active connection"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    return-void
.end method

.method private final zzp()V
    .locals 3

    const/4 v0, -0x1

    .line 224
    iput v0, p0, Lcom/google/android/gms/cast/zzak;->zzea:I

    .line 225
    iput v0, p0, Lcom/google/android/gms/cast/zzak;->zzeb:I

    const/4 v0, 0x0

    .line 226
    iput-object v0, p0, Lcom/google/android/gms/cast/zzak;->zzdw:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 227
    iput-object v0, p0, Lcom/google/android/gms/cast/zzak;->zzdx:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 228
    iput-wide v1, p0, Lcom/google/android/gms/cast/zzak;->zzdy:D

    .line 229
    invoke-direct {p0}, Lcom/google/android/gms/cast/zzak;->zzq()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/cast/zzak;->zzed:D

    const/4 v1, 0x0

    .line 230
    iput-boolean v1, p0, Lcom/google/android/gms/cast/zzak;->zzdz:Z

    .line 231
    iput-object v0, p0, Lcom/google/android/gms/cast/zzak;->zzec:Lcom/google/android/gms/cast/zzah;

    return-void
.end method

.method private final zzq()D
    .locals 6

    .line 233
    iget-object v0, p0, Lcom/google/android/gms/cast/zzak;->zzee:Lcom/google/android/gms/cast/CastDevice;

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/CastDevice;->hasCapability(I)Z

    move-result v0

    const-wide v1, 0x3f947ae147ae147bL    # 0.02

    if-eqz v0, :cond_0

    return-wide v1

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/zzak;->zzee:Lcom/google/android/gms/cast/CastDevice;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/google/android/gms/cast/CastDevice;->hasCapability(I)Z

    move-result v0

    const-wide v3, 0x3fa999999999999aL    # 0.05

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/cast/zzak;->zzee:Lcom/google/android/gms/cast/CastDevice;

    const/4 v5, 0x1

    .line 236
    invoke-virtual {v0, v5}, Lcom/google/android/gms/cast/CastDevice;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 237
    iget-object v0, p0, Lcom/google/android/gms/cast/zzak;->zzee:Lcom/google/android/gms/cast/CastDevice;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/CastDevice;->getModelName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "Chromecast Audio"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-wide v3

    :cond_1
    return-wide v1

    :cond_2
    return-wide v3
.end method

.method static synthetic zzr()Lcom/google/android/gms/cast/internal/Logger;
    .locals 1

    .line 309
    sget-object v0, Lcom/google/android/gms/cast/zzak;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    return-object v0
.end method


# virtual methods
.method public final getActiveInputState()I
    .locals 1

    .line 91
    invoke-direct {p0}, Lcom/google/android/gms/cast/zzak;->checkConnected()V

    .line 92
    iget v0, p0, Lcom/google/android/gms/cast/zzak;->zzea:I

    return v0
.end method

.method public final getApplicationMetadata()Lcom/google/android/gms/cast/ApplicationMetadata;
    .locals 1

    .line 95
    invoke-direct {p0}, Lcom/google/android/gms/cast/zzak;->checkConnected()V

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/cast/zzak;->zzdw:Lcom/google/android/gms/cast/ApplicationMetadata;

    return-object v0
.end method

.method public final getApplicationStatus()Ljava/lang/String;
    .locals 1

    .line 97
    invoke-direct {p0}, Lcom/google/android/gms/cast/zzak;->checkConnected()V

    .line 98
    iget-object v0, p0, Lcom/google/android/gms/cast/zzak;->zzdx:Ljava/lang/String;

    return-object v0
.end method

.method public final getStandbyState()I
    .locals 1

    .line 93
    invoke-direct {p0}, Lcom/google/android/gms/cast/zzak;->checkConnected()V

    .line 94
    iget v0, p0, Lcom/google/android/gms/cast/zzak;->zzeb:I

    return v0
.end method

.method public final getVolume()D
    .locals 2

    .line 82
    invoke-direct {p0}, Lcom/google/android/gms/cast/zzak;->checkConnected()V

    .line 83
    iget-wide v0, p0, Lcom/google/android/gms/cast/zzak;->zzdy:D

    return-wide v0
.end method

.method public final isMute()Z
    .locals 1

    .line 89
    invoke-direct {p0}, Lcom/google/android/gms/cast/zzak;->checkConnected()V

    .line 90
    iget-boolean v0, p0, Lcom/google/android/gms/cast/zzak;->zzdz:Z

    return v0
.end method

.method public final zza(D)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 75
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/cast/zzal;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/cast/zzal;-><init>(Lcom/google/android/gms/cast/zzak;D)V

    .line 79
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object p1

    .line 80
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object p1

    .line 81
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/zzak;->doWrite(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x29

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Volume cannot be "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .line 71
    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/cast/zzaw;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/cast/zzaw;-><init>(Lcom/google/android/gms/cast/zzak;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object p1

    .line 74
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/zzak;->doWrite(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 99
    invoke-static {p1}, Lcom/google/android/gms/cast/internal/CastUtils;->throwIfInvalidNamespace(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 101
    iget-object v0, p0, Lcom/google/android/gms/cast/zzak;->zzeg:Ljava/util/Map;

    monitor-enter v0

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/zzak;->zzeg:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 105
    :cond_0
    :goto_0
    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/cast/zzan;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/cast/zzan;-><init>(Lcom/google/android/gms/cast/zzak;Ljava/lang/String;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;)V

    .line 106
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object p1

    .line 107
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object p1

    .line 108
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/zzak;->doWrite(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/cast/LaunchOptions;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;",
            ">;"
        }
    .end annotation

    .line 59
    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/cast/zzau;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/cast/zzau;-><init>(Lcom/google/android/gms/cast/zzak;Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;)V

    .line 60
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object p1

    .line 62
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/zzak;->doWrite(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 46
    invoke-static {p1}, Lcom/google/android/gms/cast/internal/CastUtils;->throwIfInvalidNamespace(Ljava/lang/String;)V

    .line 47
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/high16 v1, 0x80000

    if-gt v0, v1, :cond_0

    .line 53
    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/cast/zzar;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/google/android/gms/cast/zzar;-><init>(Lcom/google/android/gms/cast/zzak;Lcom/google/android/gms/internal/cast/zzeg;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object p1

    .line 56
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/zzak;->doWrite(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 50
    :cond_0
    sget-object p1, Lcom/google/android/gms/cast/zzak;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Message send failed. Message exceeds maximum size"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/cast/internal/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Message exceeds maximum size524288"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The message payload cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Z)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 85
    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/cast/zzao;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/cast/zzao;-><init>(Lcom/google/android/gms/cast/zzak;Z)V

    .line 86
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object p1

    .line 87
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object p1

    .line 88
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/zzak;->doWrite(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zza(DLcom/google/android/gms/cast/internal/zzs;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    invoke-virtual {p3}, Lcom/google/android/gms/cast/internal/zzs;->getService()Landroid/os/IInterface;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/google/android/gms/cast/internal/zzz;

    iget-wide v3, p0, Lcom/google/android/gms/cast/zzak;->zzdy:D

    iget-boolean v5, p0, Lcom/google/android/gms/cast/zzak;->zzdz:Z

    move-wide v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/cast/internal/zzz;->zza(DDZ)V

    const/4 p1, 0x0

    .line 256
    invoke-virtual {p4, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic zza(Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;Ljava/lang/String;Lcom/google/android/gms/cast/internal/zzs;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 241
    invoke-direct {p0}, Lcom/google/android/gms/cast/zzak;->zzo()V

    if-eqz p1, :cond_0

    .line 243
    invoke-virtual {p3}, Lcom/google/android/gms/cast/internal/zzs;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/cast/internal/zzz;

    invoke-interface {p1, p2}, Lcom/google/android/gms/cast/internal/zzz;->zzad(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 244
    invoke-virtual {p4, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/cast/zzp;)V
    .locals 1

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/cast/zzak;->zzeh:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final synthetic zza(Lcom/google/android/gms/internal/cast/zzeg;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/internal/zzs;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/google/android/gms/cast/zzak;->zzdt:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v7

    .line 280
    invoke-direct {p0}, Lcom/google/android/gms/cast/zzak;->checkConnected()V

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/zzak;->zzef:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_0

    .line 283
    invoke-virtual {p4}, Lcom/google/android/gms/cast/internal/zzs;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/cast/internal/zzz;

    invoke-interface {p1, p2, p3, v7, v8}, Lcom/google/android/gms/cast/internal/zzz;->zza(Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    .line 285
    :cond_0
    invoke-virtual {p4}, Lcom/google/android/gms/cast/internal/zzs;->getService()Landroid/os/IInterface;

    move-result-object p4

    move-object v1, p4

    check-cast v1, Lcom/google/android/gms/cast/internal/zzz;

    .line 286
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzeg;->zzfu()Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Ljava/lang/String;

    move-object v2, p2

    move-object v3, p3

    move-wide v4, v7

    .line 287
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/cast/internal/zzz;->zzb(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 290
    iget-object p2, p0, Lcom/google/android/gms/cast/zzak;->zzef:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    invoke-virtual {p5, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void
.end method

.method final synthetic zza(Ljava/lang/String;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;Lcom/google/android/gms/cast/internal/zzs;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 246
    invoke-direct {p0}, Lcom/google/android/gms/cast/zzak;->zzo()V

    .line 247
    invoke-virtual {p3}, Lcom/google/android/gms/cast/internal/zzs;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/internal/zzz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/cast/internal/zzz;->zzad(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 249
    invoke-virtual {p3}, Lcom/google/android/gms/cast/internal/zzs;->getService()Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/cast/internal/zzz;

    invoke-interface {p2, p1}, Lcom/google/android/gms/cast/internal/zzz;->zzac(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 250
    invoke-virtual {p4, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic zza(Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;Lcom/google/android/gms/cast/internal/zzs;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 273
    invoke-direct {p0}, Lcom/google/android/gms/cast/zzak;->checkConnected()V

    .line 275
    invoke-virtual {p3}, Lcom/google/android/gms/cast/internal/zzs;->getService()Landroid/os/IInterface;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/cast/internal/zzz;

    .line 276
    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/cast/internal/zzz;->zzd(Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;)V

    .line 277
    invoke-direct {p0, p4}, Lcom/google/android/gms/cast/zzak;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method

.method final synthetic zza(Ljava/lang/String;Lcom/google/android/gms/cast/internal/zzs;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 258
    invoke-direct {p0}, Lcom/google/android/gms/cast/zzak;->checkConnected()V

    .line 259
    invoke-virtual {p2}, Lcom/google/android/gms/cast/internal/zzs;->getService()Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/cast/internal/zzz;

    invoke-interface {p2, p1}, Lcom/google/android/gms/cast/internal/zzz;->zzn(Ljava/lang/String;)V

    .line 261
    iget-object p1, p0, Lcom/google/android/gms/cast/zzak;->zzdv:Ljava/lang/Object;

    monitor-enter p1

    .line 262
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/cast/zzak;->zzds:Lcom/google/android/gms/tasks/TaskCompletionSource;

    if-eqz p2, :cond_0

    const/16 p2, 0x7d1

    .line 263
    invoke-static {p2}, Lcom/google/android/gms/cast/zzak;->zze(I)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 264
    monitor-exit p1

    return-void

    .line 265
    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/cast/zzak;->zzds:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 266
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method final synthetic zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/zzbg;Lcom/google/android/gms/cast/internal/zzs;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 267
    invoke-direct {p0}, Lcom/google/android/gms/cast/zzak;->checkConnected()V

    .line 269
    invoke-virtual {p4}, Lcom/google/android/gms/cast/internal/zzs;->getService()Landroid/os/IInterface;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/cast/internal/zzz;

    .line 270
    invoke-interface {p4, p1, p2, p3}, Lcom/google/android/gms/cast/internal/zzz;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/zzbg;)V

    .line 271
    invoke-direct {p0, p5}, Lcom/google/android/gms/cast/zzak;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method

.method final synthetic zza(ZLcom/google/android/gms/cast/internal/zzs;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 252
    invoke-virtual {p2}, Lcom/google/android/gms/cast/internal/zzs;->getService()Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/cast/internal/zzz;

    iget-wide v0, p0, Lcom/google/android/gms/cast/zzak;->zzdy:D

    iget-boolean v2, p0, Lcom/google/android/gms/cast/zzak;->zzdz:Z

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/android/gms/cast/internal/zzz;->zza(ZDZ)V

    const/4 p1, 0x0

    .line 253
    invoke-virtual {p3, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb()Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/cast/zzak;->zzdl:Lcom/google/android/gms/cast/zzay;

    const-string v1, "castDeviceControllerListenerKey"

    .line 21
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/cast/zzak;->registerListener(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object v0

    .line 22
    invoke-static {}, Lcom/google/android/gms/common/api/internal/RegistrationMethods;->builder()Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;

    move-result-object v1

    .line 23
    new-instance v2, Lcom/google/android/gms/cast/zzaj;

    invoke-direct {v2, p0}, Lcom/google/android/gms/cast/zzaj;-><init>(Lcom/google/android/gms/cast/zzak;)V

    .line 24
    sget-object v3, Lcom/google/android/gms/cast/zzam;->zzej:Lcom/google/android/gms/common/api/internal/RemoteCall;

    .line 26
    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->withHolder(Lcom/google/android/gms/common/api/internal/ListenerHolder;)Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;

    move-result-object v0

    .line 27
    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->register(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;

    move-result-object v0

    .line 28
    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->unregister(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/common/Feature;

    sget-object v2, Lcom/google/android/gms/cast/zzai;->zzde:Lcom/google/android/gms/common/Feature;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 29
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->setFeatures([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/RegistrationMethods$Builder;->build()Lcom/google/android/gms/common/api/internal/RegistrationMethods;

    move-result-object v0

    .line 31
    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/zzak;->doRegisterEventListener(Lcom/google/android/gms/common/api/internal/RegistrationMethods;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 109
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/google/android/gms/cast/zzak;->zzeg:Ljava/util/Map;

    monitor-enter v0

    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/zzak;->zzeg:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;

    .line 113
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/cast/zzaq;

    invoke-direct {v2, p0, v1, p1}, Lcom/google/android/gms/cast/zzaq;-><init>(Lcom/google/android/gms/cast/zzak;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object p1

    .line 117
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object p1

    .line 118
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/zzak;->doWrite(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 113
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 110
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Channel namespace cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;",
            ">;"
        }
    .end annotation

    .line 65
    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/cast/zzat;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/google/android/gms/cast/zzat;-><init>(Lcom/google/android/gms/cast/zzak;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/zzbg;)V

    .line 66
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object p1

    .line 67
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object p1

    .line 68
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/zzak;->doWrite(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzc()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 33
    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/cast/zzap;->zzej:Lcom/google/android/gms/common/api/internal/RemoteCall;

    .line 34
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object v0

    .line 36
    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/zzak;->doWrite(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 37
    invoke-direct {p0}, Lcom/google/android/gms/cast/zzak;->zzn()V

    .line 38
    iget-object v1, p0, Lcom/google/android/gms/cast/zzak;->zzdl:Lcom/google/android/gms/cast/zzay;

    invoke-direct {p0, v1}, Lcom/google/android/gms/cast/zzak;->zza(Lcom/google/android/gms/cast/internal/zzab;)Lcom/google/android/gms/tasks/Task;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 41
    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/cast/zzas;->zzej:Lcom/google/android/gms/common/api/internal/RemoteCall;

    .line 42
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object v0

    .line 44
    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/zzak;->doWrite(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
