.class public final Lcom/google/android/gms/internal/ads/zzalo;
.super Lcom/google/android/gms/internal/ads/zzazx;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzazx<",
        "Lcom/google/android/gms/internal/ads/zzalz;",
        ">;"
    }
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final zzdjj:Lcom/google/android/gms/internal/ads/zzals;

.field private zzdjk:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzals;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzazx;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzalo;->lock:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalo;->zzdjj:Lcom/google/android/gms/internal/ads/zzals;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzalo;)Lcom/google/android/gms/internal/ads/zzals;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzalo;->zzdjj:Lcom/google/android/gms/internal/ads/zzals;

    return-object p0
.end method


# virtual methods
.method public final release()V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalo;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzalo;->zzdjk:Z

    if-eqz v1, :cond_0

    .line 7
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzalo;->zzdjk:Z

    .line 9
    new-instance v1, Lcom/google/android/gms/internal/ads/zzalr;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzalr;-><init>(Lcom/google/android/gms/internal/ads/zzalo;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzazv;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzazv;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzazx;->zza(Lcom/google/android/gms/internal/ads/zzazu;Lcom/google/android/gms/internal/ads/zzazs;)V

    .line 10
    new-instance v1, Lcom/google/android/gms/internal/ads/zzalq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzalq;-><init>(Lcom/google/android/gms/internal/ads/zzalo;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzalt;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzalt;-><init>(Lcom/google/android/gms/internal/ads/zzalo;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzazx;->zza(Lcom/google/android/gms/internal/ads/zzazu;Lcom/google/android/gms/internal/ads/zzazs;)V

    .line 11
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
