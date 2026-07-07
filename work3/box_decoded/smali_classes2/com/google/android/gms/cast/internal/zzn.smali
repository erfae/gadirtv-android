.class public final Lcom/google/android/gms/cast/internal/zzn;
.super Lcom/google/android/gms/common/internal/GmsClient;
.source "com.google.android.gms:play-services-cast@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/GmsClient<",
        "Lcom/google/android/gms/cast/internal/zzz;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzacl:Ljava/lang/Object;

.field private static final zzacm:Ljava/lang/Object;

.field private static final zzy:Lcom/google/android/gms/cast/internal/Logger;


# instance fields
.field private final extras:Landroid/os/Bundle;

.field private final zzacd:J

.field private zzace:Lcom/google/android/gms/cast/internal/zzp;

.field private zzacf:Z

.field private zzacg:Ljava/lang/String;

.field private zzach:Ljava/lang/String;

.field private zzaci:Landroid/os/Bundle;

.field private zzacj:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field private zzack:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field

.field private final zzam:Lcom/google/android/gms/cast/Cast$Listener;

.field private zzdp:Z

.field private zzdq:Z

.field private final zzdt:Ljava/util/concurrent/atomic/AtomicLong;

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
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzeg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 290
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    const-string v1, "CastClientImpl"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/cast/internal/zzn;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    .line 291
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/internal/zzn;->zzacl:Ljava/lang/Object;

    .line 292
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/internal/zzn;->zzacm:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/cast/CastDevice;JLcom/google/android/gms/cast/Cast$Listener;Landroid/os/Bundle;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 8

    move-object v7, p0

    const/16 v3, 0xa

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/GmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    move-object v0, p4

    .line 2
    iput-object v0, v7, Lcom/google/android/gms/cast/internal/zzn;->zzee:Lcom/google/android/gms/cast/CastDevice;

    move-object v0, p7

    .line 3
    iput-object v0, v7, Lcom/google/android/gms/cast/internal/zzn;->zzam:Lcom/google/android/gms/cast/Cast$Listener;

    move-wide v0, p5

    .line 4
    iput-wide v0, v7, Lcom/google/android/gms/cast/internal/zzn;->zzacd:J

    move-object/from16 v0, p8

    .line 5
    iput-object v0, v7, Lcom/google/android/gms/cast/internal/zzn;->extras:Landroid/os/Bundle;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v7, Lcom/google/android/gms/cast/internal/zzn;->zzeg:Ljava/util/Map;

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, v7, Lcom/google/android/gms/cast/internal/zzn;->zzdt:Ljava/util/concurrent/atomic/AtomicLong;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v7, Lcom/google/android/gms/cast/internal/zzn;->zzef:Ljava/util/Map;

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzn;->zzew()V

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzn;->zzq()D

    move-result-wide v0

    iput-wide v0, v7, Lcom/google/android/gms/cast/internal/zzn;->zzed:D

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/internal/zzn;Lcom/google/android/gms/cast/ApplicationMetadata;)Lcom/google/android/gms/cast/ApplicationMetadata;
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzn;->zzdw:Lcom/google/android/gms/cast/ApplicationMetadata;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/internal/zzn;Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;
    .locals 0

    const/4 p1, 0x0

    .line 282
    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzn;->zzacj:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/internal/zzn;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzn;->zzacg:Ljava/lang/String;

    return-object p1
.end method

.method private final zza(JI)V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzn;->zzef:Ljava/util/Map;

    monitor-enter v0

    .line 249
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzn;->zzef:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    .line 250
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 252
    new-instance p2, Lcom/google/android/gms/common/api/Status;

    invoke-direct {p2, p3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p1, p2}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;->setResult(Ljava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 250
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final zza(Lcom/google/android/gms/cast/internal/zzb;)V
    .locals 5

    .line 228
    invoke-virtual {p1}, Lcom/google/android/gms/cast/internal/zzb;->zzes()Ljava/lang/String;

    move-result-object p1

    .line 229
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzn;->zzdx:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/gms/cast/internal/CastUtils;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 230
    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzn;->zzdx:Ljava/lang/String;

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 232
    :goto_0
    sget-object v0, Lcom/google/android/gms/cast/internal/zzn;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 233
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v2

    iget-boolean v4, p0, Lcom/google/android/gms/cast/internal/zzn;->zzdq:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "hasChanged=%b, mFirstApplicationStatusUpdate=%b"

    .line 234
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzn;->zzam:Lcom/google/android/gms/cast/Cast$Listener;

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/google/android/gms/cast/internal/zzn;->zzdq:Z

    if-eqz p1, :cond_2

    .line 236
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/cast/Cast$Listener;->onApplicationStatusChanged()V

    .line 237
    :cond_2
    iput-boolean v2, p0, Lcom/google/android/gms/cast/internal/zzn;->zzdq:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/internal/zzn;I)V
    .locals 0

    .line 283
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/internal/zzn;->zzd(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/internal/zzn;JI)V
    .locals 0

    .line 289
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/cast/internal/zzn;->zza(JI)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/internal/zzn;Lcom/google/android/gms/cast/internal/zzb;)V
    .locals 0

    .line 286
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/internal/zzn;->zza(Lcom/google/android/gms/cast/internal/zzb;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/internal/zzn;Lcom/google/android/gms/cast/internal/zzu;)V
    .locals 0

    .line 285
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/internal/zzn;->zza(Lcom/google/android/gms/cast/internal/zzu;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/cast/internal/zzu;)V
    .locals 9

    .line 179
    invoke-virtual {p1}, Lcom/google/android/gms/cast/internal/zzu;->getApplicationMetadata()Lcom/google/android/gms/cast/ApplicationMetadata;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzn;->zzdw:Lcom/google/android/gms/cast/ApplicationMetadata;

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/internal/CastUtils;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    iput-object v0, p0, Lcom/google/android/gms/cast/internal/zzn;->zzdw:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 182
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzn;->zzam:Lcom/google/android/gms/cast/Cast$Listener;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/Cast$Listener;->onApplicationMetadataChanged(Lcom/google/android/gms/cast/ApplicationMetadata;)V

    .line 184
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/cast/internal/zzu;->getVolume()D

    move-result-wide v0

    .line 185
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    iget-wide v5, p0, Lcom/google/android/gms/cast/internal/zzn;->zzdy:D

    sub-double v5, v0, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide v7, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v2, v5, v7

    if-lez v2, :cond_1

    .line 186
    iput-wide v0, p0, Lcom/google/android/gms/cast/internal/zzn;->zzdy:D

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 188
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/cast/internal/zzu;->zzfa()Z

    move-result v1

    .line 189
    iget-boolean v2, p0, Lcom/google/android/gms/cast/internal/zzn;->zzdz:Z

    if-eq v1, v2, :cond_2

    .line 190
    iput-boolean v1, p0, Lcom/google/android/gms/cast/internal/zzn;->zzdz:Z

    const/4 v0, 0x1

    .line 192
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/cast/internal/zzu;->zzfc()D

    move-result-wide v1

    .line 193
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_3

    .line 194
    iput-wide v1, p0, Lcom/google/android/gms/cast/internal/zzn;->zzed:D

    .line 195
    :cond_3
    sget-object v1, Lcom/google/android/gms/cast/internal/zzn;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Object;

    .line 196
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    iget-boolean v6, p0, Lcom/google/android/gms/cast/internal/zzn;->zzdp:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v3

    const-string v6, "hasVolumeChanged=%b, mFirstDeviceStatusUpdate=%b"

    .line 197
    invoke-virtual {v1, v6, v5}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    iget-object v5, p0, Lcom/google/android/gms/cast/internal/zzn;->zzam:Lcom/google/android/gms/cast/Cast$Listener;

    if-eqz v5, :cond_5

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/cast/internal/zzn;->zzdp:Z

    if-eqz v0, :cond_5

    .line 199
    :cond_4
    invoke-virtual {v5}, Lcom/google/android/gms/cast/Cast$Listener;->onVolumeChanged()V

    .line 201
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/cast/internal/zzu;->getActiveInputState()I

    move-result v0

    .line 202
    iget v5, p0, Lcom/google/android/gms/cast/internal/zzn;->zzea:I

    if-eq v0, v5, :cond_6

    .line 203
    iput v0, p0, Lcom/google/android/gms/cast/internal/zzn;->zzea:I

    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    new-array v5, v2, [Ljava/lang/Object;

    .line 206
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    iget-boolean v6, p0, Lcom/google/android/gms/cast/internal/zzn;->zzdp:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v3

    const-string v6, "hasActiveInputChanged=%b, mFirstDeviceStatusUpdate=%b"

    .line 207
    invoke-virtual {v1, v6, v5}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    iget-object v5, p0, Lcom/google/android/gms/cast/internal/zzn;->zzam:Lcom/google/android/gms/cast/Cast$Listener;

    if-eqz v5, :cond_8

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/google/android/gms/cast/internal/zzn;->zzdp:Z

    if-eqz v0, :cond_8

    .line 209
    :cond_7
    iget v0, p0, Lcom/google/android/gms/cast/internal/zzn;->zzea:I

    invoke-virtual {v5, v0}, Lcom/google/android/gms/cast/Cast$Listener;->onActiveInputStateChanged(I)V

    .line 211
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/cast/internal/zzu;->getStandbyState()I

    move-result v0

    .line 212
    iget v5, p0, Lcom/google/android/gms/cast/internal/zzn;->zzeb:I

    if-eq v0, v5, :cond_9

    .line 213
    iput v0, p0, Lcom/google/android/gms/cast/internal/zzn;->zzeb:I

    const/4 v0, 0x1

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    :goto_2
    new-array v2, v2, [Ljava/lang/Object;

    .line 216
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v4

    iget-boolean v5, p0, Lcom/google/android/gms/cast/internal/zzn;->zzdp:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v3, "hasStandbyStateChanged=%b, mFirstDeviceStatusUpdate=%b"

    .line 217
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzn;->zzam:Lcom/google/android/gms/cast/Cast$Listener;

    if-eqz v1, :cond_b

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/google/android/gms/cast/internal/zzn;->zzdp:Z

    if-eqz v0, :cond_b

    .line 219
    :cond_a
    iget v0, p0, Lcom/google/android/gms/cast/internal/zzn;->zzeb:I

    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/Cast$Listener;->onStandbyStateChanged(I)V

    .line 221
    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzn;->zzec:Lcom/google/android/gms/cast/zzah;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/internal/zzu;->zzfb()Lcom/google/android/gms/cast/zzah;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/internal/CastUtils;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 223
    invoke-virtual {p1}, Lcom/google/android/gms/cast/internal/zzu;->zzfb()Lcom/google/android/gms/cast/zzah;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzn;->zzec:Lcom/google/android/gms/cast/zzah;

    .line 224
    :cond_c
    iget-object p1, p0, Lcom/google/android/gms/cast/internal/zzn;->zzam:Lcom/google/android/gms/cast/Cast$Listener;

    .line 225
    iput-boolean v4, p0, Lcom/google/android/gms/cast/internal/zzn;->zzdp:Z

    return-void
.end method

.method private final zza(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;",
            ">;)V"
        }
    .end annotation

    .line 102
    sget-object v0, Lcom/google/android/gms/cast/internal/zzn;->zzacl:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzn;->zzacj:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    if-eqz v1, :cond_0

    .line 104
    new-instance v2, Lcom/google/android/gms/cast/internal/zzm;

    new-instance v3, Lcom/google/android/gms/common/api/Status;

    const/16 v4, 0x7d2

    invoke-direct {v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {v2, v3}, Lcom/google/android/gms/cast/internal/zzm;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;->setResult(Ljava/lang/Object;)V

    .line 105
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzn;->zzacj:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    .line 106
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/cast/internal/zzn;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzn;->zzach:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic zzbu()Lcom/google/android/gms/cast/internal/Logger;
    .locals 1

    .line 275
    sget-object v0, Lcom/google/android/gms/cast/internal/zzn;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/cast/internal/zzn;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzn;->zzdx:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic zzc(Lcom/google/android/gms/cast/internal/zzn;)V
    .locals 0

    .line 274
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzn;->zzew()V

    return-void
.end method

.method private final zzc(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    .line 119
    sget-object v0, Lcom/google/android/gms/cast/internal/zzn;->zzacm:Ljava/lang/Object;

    monitor-enter v0

    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzn;->zzack:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    if-eqz v1, :cond_0

    .line 121
    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x7d1

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;->setResult(Ljava/lang/Object;)V

    .line 122
    monitor-exit v0

    return-void

    .line 123
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzn;->zzack:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    .line 124
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic zzd(Lcom/google/android/gms/cast/internal/zzn;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;
    .locals 0

    .line 281
    iget-object p0, p0, Lcom/google/android/gms/cast/internal/zzn;->zzacj:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    return-object p0
.end method

.method private final zzd(I)V
    .locals 3

    .line 259
    sget-object v0, Lcom/google/android/gms/cast/internal/zzn;->zzacm:Ljava/lang/Object;

    monitor-enter v0

    .line 260
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzn;->zzack:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    if-eqz v1, :cond_0

    .line 261
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v2, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;->setResult(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 262
    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzn;->zzack:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    .line 263
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic zze(Lcom/google/android/gms/cast/internal/zzn;)Lcom/google/android/gms/cast/Cast$Listener;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/google/android/gms/cast/internal/zzn;->zzam:Lcom/google/android/gms/cast/Cast$Listener;

    return-object p0
.end method

.method private final zzew()V
    .locals 4

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/google/android/gms/cast/internal/zzn;->zzacf:Z

    const/4 v1, -0x1

    .line 13
    iput v1, p0, Lcom/google/android/gms/cast/internal/zzn;->zzea:I

    .line 14
    iput v1, p0, Lcom/google/android/gms/cast/internal/zzn;->zzeb:I

    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Lcom/google/android/gms/cast/internal/zzn;->zzdw:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 16
    iput-object v1, p0, Lcom/google/android/gms/cast/internal/zzn;->zzdx:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 17
    iput-wide v2, p0, Lcom/google/android/gms/cast/internal/zzn;->zzdy:D

    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzn;->zzq()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/cast/internal/zzn;->zzed:D

    .line 19
    iput-boolean v0, p0, Lcom/google/android/gms/cast/internal/zzn;->zzdz:Z

    .line 20
    iput-object v1, p0, Lcom/google/android/gms/cast/internal/zzn;->zzec:Lcom/google/android/gms/cast/zzah;

    return-void
.end method

.method private final zzex()Z
    .locals 1

    .line 239
    iget-boolean v0, p0, Lcom/google/android/gms/cast/internal/zzn;->zzacf:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzn;->zzace:Lcom/google/android/gms/cast/internal/zzp;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/internal/zzp;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic zzey()Ljava/lang/Object;
    .locals 1

    .line 280
    sget-object v0, Lcom/google/android/gms/cast/internal/zzn;->zzacl:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/cast/internal/zzn;)Ljava/util/Map;
    .locals 0

    .line 287
    iget-object p0, p0, Lcom/google/android/gms/cast/internal/zzn;->zzeg:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/cast/internal/zzn;)Lcom/google/android/gms/cast/CastDevice;
    .locals 0

    .line 288
    iget-object p0, p0, Lcom/google/android/gms/cast/internal/zzn;->zzee:Lcom/google/android/gms/cast/CastDevice;

    return-object p0
.end method

.method private final zzn()V
    .locals 3

    .line 175
    sget-object v0, Lcom/google/android/gms/cast/internal/zzn;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    const-string v1, "removing all MessageReceivedCallbacks"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzn;->zzeg:Ljava/util/Map;

    monitor-enter v0

    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzn;->zzeg:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 178
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final zzq()D
    .locals 6

    .line 240
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzn;->zzee:Lcom/google/android/gms/cast/CastDevice;

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/CastDevice;->hasCapability(I)Z

    move-result v0

    const-wide v1, 0x3f947ae147ae147bL    # 0.02

    if-eqz v0, :cond_0

    return-wide v1

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzn;->zzee:Lcom/google/android/gms/cast/CastDevice;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/google/android/gms/cast/CastDevice;->hasCapability(I)Z

    move-result v0

    const-wide v3, 0x3fa999999999999aL    # 0.05

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzn;->zzee:Lcom/google/android/gms/cast/CastDevice;

    const/4 v5, 0x1

    .line 243
    invoke-virtual {v0, v5}, Lcom/google/android/gms/cast/CastDevice;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 244
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzn;->zzee:Lcom/google/android/gms/cast/CastDevice;

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


# virtual methods
.method protected final synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    .line 269
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 270
    instance-of v1, v0, Lcom/google/android/gms/cast/internal/zzz;

    if-eqz v1, :cond_1

    .line 271
    check-cast v0, Lcom/google/android/gms/cast/internal/zzz;

    return-object v0

    .line 272
    :cond_1
    new-instance v0, Lcom/google/android/gms/cast/internal/zzac;

    invoke-direct {v0, p1}, Lcom/google/android/gms/cast/internal/zzac;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final disconnect()V
    .locals 6

    .line 35
    sget-object v0, Lcom/google/android/gms/cast/internal/zzn;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/cast/internal/zzn;->zzace:Lcom/google/android/gms/cast/internal/zzp;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzn;->isConnected()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "disconnect(); ServiceListener=%s, isConnected=%b"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzn;->zzace:Lcom/google/android/gms/cast/internal/zzp;

    const/4 v2, 0x0

    .line 37
    iput-object v2, p0, Lcom/google/android/gms/cast/internal/zzn;->zzace:Lcom/google/android/gms/cast/internal/zzp;

    if-eqz v1, :cond_1

    .line 38
    invoke-virtual {v1}, Lcom/google/android/gms/cast/internal/zzp;->zzez()Lcom/google/android/gms/cast/internal/zzn;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 41
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzn;->zzn()V

    .line 42
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzn;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/internal/zzz;

    .line 43
    invoke-interface {v0}, Lcom/google/android/gms/cast/internal/zzz;->disconnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-super {p0}, Lcom/google/android/gms/common/internal/GmsClient;->disconnect()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 47
    :goto_0
    :try_start_1
    sget-object v1, Lcom/google/android/gms/cast/internal/zzn;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    const-string v2, "Error while disconnecting the controller interface: %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v1, v0, v2, v4}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    invoke-super {p0}, Lcom/google/android/gms/common/internal/GmsClient;->disconnect()V

    return-void

    .line 50
    :goto_1
    invoke-super {p0}, Lcom/google/android/gms/common/internal/GmsClient;->disconnect()V

    .line 51
    throw v0

    :cond_1
    :goto_2
    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "already disposed, so short-circuiting"

    .line 39
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final getActiveInputState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 143
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzn;->checkConnected()V

    .line 144
    iget v0, p0, Lcom/google/android/gms/cast/internal/zzn;->zzea:I

    return v0
.end method

.method public final getApplicationMetadata()Lcom/google/android/gms/cast/ApplicationMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 168
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzn;->checkConnected()V

    .line 169
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzn;->zzdw:Lcom/google/android/gms/cast/ApplicationMetadata;

    return-object v0
.end method

.method public final getApplicationStatus()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 170
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzn;->checkConnected()V

    .line 171
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzn;->zzdx:Ljava/lang/String;

    return-object v0
.end method

.method public final getConnectionHint()Landroid/os/Bundle;
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzn;->zzaci:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 54
    iput-object v1, p0, Lcom/google/android/gms/cast/internal/zzn;->zzaci:Landroid/os/Bundle;

    return-object v0

    .line 56
    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/common/internal/GmsClient;->getConnectionHint()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getGetServiceRequestExtraArgs()Landroid/os/Bundle;
    .locals 5

    .line 59
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 60
    sget-object v1, Lcom/google/android/gms/cast/internal/zzn;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/cast/internal/zzn;->zzacg:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/google/android/gms/cast/internal/zzn;->zzach:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "getRemoteService(): mLastApplicationId=%s, mLastSessionId=%s"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzn;->zzee:Lcom/google/android/gms/cast/CastDevice;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/CastDevice;->putInBundle(Landroid/os/Bundle;)V

    .line 62
    iget-wide v1, p0, Lcom/google/android/gms/cast/internal/zzn;->zzacd:J

    const-string v3, "com.google.android.gms.cast.EXTRA_CAST_FLAGS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 63
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzn;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 65
    :cond_0
    new-instance v1, Lcom/google/android/gms/cast/internal/zzp;

    invoke-direct {v1, p0}, Lcom/google/android/gms/cast/internal/zzp;-><init>(Lcom/google/android/gms/cast/internal/zzn;)V

    iput-object v1, p0, Lcom/google/android/gms/cast/internal/zzn;->zzace:Lcom/google/android/gms/cast/internal/zzp;

    .line 66
    new-instance v2, Lcom/google/android/gms/common/internal/BinderWrapper;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/zza;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/gms/common/internal/BinderWrapper;-><init>(Landroid/os/IBinder;)V

    const-string v1, "listener"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 67
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzn;->zzacg:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "last_application_id"

    .line 68
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzn;->zzach:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "last_session_id"

    .line 70
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public final getMinApkVersion()I
    .locals 1

    const v0, 0xc35000

    return v0
.end method

.method protected final getServiceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    return-object v0
.end method

.method public final getStandbyState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzn;->checkConnected()V

    .line 146
    iget v0, p0, Lcom/google/android/gms/cast/internal/zzn;->zzeb:I

    return v0
.end method

.method protected final getStartServiceAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.cast.service.BIND_CAST_DEVICE_CONTROLLER_SERVICE"

    return-object v0
.end method

.method public final getVolume()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 139
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzn;->checkConnected()V

    .line 140
    iget-wide v0, p0, Lcom/google/android/gms/cast/internal/zzn;->zzdy:D

    return-wide v0
.end method

.method public final isMute()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 141
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzn;->checkConnected()V

    .line 142
    iget-boolean v0, p0, Lcom/google/android/gms/cast/internal/zzn;->zzdz:Z

    return v0
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    .line 172
    invoke-super {p0, p1}, Lcom/google/android/gms/common/internal/GmsClient;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 173
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzn;->zzn()V

    return-void
.end method

.method protected final onPostInitHandler(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 5

    .line 22
    sget-object v0, Lcom/google/android/gms/cast/internal/zzn;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "in onPostInitHandler; statusCode=%d"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x8fc

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    iput-boolean v4, p0, Lcom/google/android/gms/cast/internal/zzn;->zzacf:Z

    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/google/android/gms/cast/internal/zzn;->zzacf:Z

    .line 25
    iput-boolean v1, p0, Lcom/google/android/gms/cast/internal/zzn;->zzdq:Z

    .line 26
    iput-boolean v1, p0, Lcom/google/android/gms/cast/internal/zzn;->zzdp:Z

    :goto_1
    if-ne p1, v0, :cond_2

    .line 30
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzn;->zzaci:Landroid/os/Bundle;

    const-string v0, "com.google.android.gms.cast.EXTRA_APP_NO_LONGER_RUNNING"

    .line 31
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 p1, 0x0

    .line 33
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/internal/GmsClient;->onPostInitHandler(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    return-void
.end method

.method public final removeMessageReceivedCallbacks(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzn;->zzeg:Ljava/util/Map;

    monitor-enter v0

    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzn;->zzeg:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;

    .line 161
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 163
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzn;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/internal/zzz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/cast/internal/zzz;->zzad(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 166
    sget-object v1, Lcom/google/android/gms/cast/internal/zzn;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    const-string v2, "Error unregistering namespace (%s): %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 161
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 158
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Channel namespace cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final requestStatus()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzn;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/internal/zzz;

    .line 126
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzn;->zzex()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    invoke-interface {v0}, Lcom/google/android/gms/cast/internal/zzz;->requestStatus()V

    :cond_0
    return-void
.end method

.method public final setMessageReceivedCallbacks(Ljava/lang/String;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    invoke-static {p1}, Lcom/google/android/gms/cast/internal/CastUtils;->throwIfInvalidNamespace(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/internal/zzn;->removeMessageReceivedCallbacks(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 150
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzn;->zzeg:Ljava/util/Map;

    monitor-enter v0

    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzn;->zzeg:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzn;->getService()Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/cast/internal/zzz;

    .line 154
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzn;->zzex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-interface {p2, p1}, Lcom/google/android/gms/cast/internal/zzz;->zzac(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 152
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public final setMute(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzn;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/internal/zzz;

    .line 136
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzn;->zzex()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    iget-wide v1, p0, Lcom/google/android/gms/cast/internal/zzn;->zzdy:D

    iget-boolean v3, p0, Lcom/google/android/gms/cast/internal/zzn;->zzdz:Z

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/google/android/gms/cast/internal/zzz;->zza(ZDZ)V

    :cond_0
    return-void
.end method

.method public final setVolume(D)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzn;->getService()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/cast/internal/zzz;

    .line 132
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzn;->zzex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-wide v4, p0, Lcom/google/android/gms/cast/internal/zzn;->zzdy:D

    iget-boolean v6, p0, Lcom/google/android/gms/cast/internal/zzn;->zzdz:Z

    move-wide v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/cast/internal/zzz;->zza(DDZ)V

    :cond_0
    return-void

    .line 130
    :cond_1
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

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/cast/LaunchOptions;",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    invoke-direct {p0, p3}, Lcom/google/android/gms/cast/internal/zzn;->zza(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 89
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzn;->getService()Landroid/os/IInterface;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/cast/internal/zzz;

    .line 90
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzn;->zzex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/cast/internal/zzz;->zzd(Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;)V

    return-void

    :cond_0
    const/16 p1, 0x7e0

    .line 92
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/internal/zzn;->zzab(I)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    invoke-direct {p0, p2}, Lcom/google/android/gms/cast/internal/zzn;->zzc(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 114
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzn;->getService()Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/cast/internal/zzz;

    .line 115
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzn;->zzex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-interface {p2, p1}, Lcom/google/android/gms/cast/internal/zzz;->zzn(Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 p1, 0x7e0

    .line 117
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/internal/zzn;->zzd(I)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/zzbg;Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/cast/zzbg;",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    invoke-direct {p0, p4}, Lcom/google/android/gms/cast/internal/zzn;->zza(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    if-nez p3, :cond_0

    .line 96
    new-instance p3, Lcom/google/android/gms/cast/zzbg;

    invoke-direct {p3}, Lcom/google/android/gms/cast/zzbg;-><init>()V

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzn;->getService()Landroid/os/IInterface;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/cast/internal/zzz;

    .line 98
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzn;->zzex()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    invoke-interface {p4, p1, p2, p3}, Lcom/google/android/gms/cast/internal/zzz;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/zzbg;)V

    return-void

    :cond_1
    const/16 p1, 0x7e0

    .line 100
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/internal/zzn;->zzab(I)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 74
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/high16 v1, 0x80000

    if-gt v0, v1, :cond_1

    .line 77
    invoke-static {p1}, Lcom/google/android/gms/cast/internal/CastUtils;->throwIfInvalidNamespace(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzn;->zzdt:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 79
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/cast/internal/zzn;->zzef:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzn;->getService()Landroid/os/IInterface;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/cast/internal/zzz;

    .line 81
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzn;->zzex()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    invoke-interface {p3, p1, p2, v0, v1}, Lcom/google/android/gms/cast/internal/zzz;->zza(Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_0
    const/16 p1, 0x7e0

    .line 83
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/cast/internal/zzn;->zza(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 86
    iget-object p2, p0, Lcom/google/android/gms/cast/internal/zzn;->zzef:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    throw p1

    .line 75
    :cond_1
    sget-object p1, Lcom/google/android/gms/cast/internal/zzn;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "Message send failed. Message exceeds maximum size"

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/cast/internal/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Message exceeds maximum size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The message payload cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzab(I)V
    .locals 4

    .line 254
    sget-object v0, Lcom/google/android/gms/cast/internal/zzn;->zzacl:Ljava/lang/Object;

    monitor-enter v0

    .line 255
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzn;->zzacj:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    if-eqz v1, :cond_0

    .line 256
    new-instance v2, Lcom/google/android/gms/cast/internal/zzm;

    new-instance v3, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v3, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {v2, v3}, Lcom/google/android/gms/cast/internal/zzm;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;->setResult(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 257
    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzn;->zzacj:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    .line 258
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/internal/zzn;->zzc(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 108
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzn;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/cast/internal/zzz;

    .line 109
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzn;->zzex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-interface {p1}, Lcom/google/android/gms/cast/internal/zzz;->zzfd()V

    return-void

    :cond_0
    const/16 p1, 0x7e0

    .line 111
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/internal/zzn;->zzd(I)V

    return-void
.end method
