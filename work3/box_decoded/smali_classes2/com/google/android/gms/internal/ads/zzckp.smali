.class public final Lcom/google/android/gms/internal/ads/zzckp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field private final zzczw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final synthetic zzgkh:Lcom/google/android/gms/internal/ads/zzckq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzckq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzgkh:Lcom/google/android/gms/internal/ads/zzckq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzczw:Ljava/util/Map;

    return-void
.end method

.method private final zzaqc()Lcom/google/android/gms/internal/ads/zzckp;
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzczw:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzgkh:Lcom/google/android/gms/internal/ads/zzckq;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzckq;->zza(Lcom/google/android/gms/internal/ads/zzckq;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzckp;)Lcom/google/android/gms/internal/ads/zzckp;
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzckp;->zzaqc()Lcom/google/android/gms/internal/ads/zzckp;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdmz;)Lcom/google/android/gms/internal/ads/zzckp;
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzczw:Ljava/util/Map;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdmz;->zzbvf:Ljava/lang/String;

    const-string v1, "gqi"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final zzaqd()V
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzgkh:Lcom/google/android/gms/internal/ads/zzckq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzckq;->zzb(Lcom/google/android/gms/internal/ads/zzckq;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcks;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcks;-><init>(Lcom/google/android/gms/internal/ads/zzckp;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzaqe()Ljava/lang/String;
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzgkh:Lcom/google/android/gms/internal/ads/zzckq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzckq;->zzc(Lcom/google/android/gms/internal/ads/zzckq;)Lcom/google/android/gms/internal/ads/zzckv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzczw:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcky;->zzp(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzaqf()V
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzgkh:Lcom/google/android/gms/internal/ads/zzckq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzckq;->zzc(Lcom/google/android/gms/internal/ads/zzckq;)Lcom/google/android/gms/internal/ads/zzckv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzczw:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcky;->zzo(Ljava/util/Map;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzdmu;)Lcom/google/android/gms/internal/ads/zzckp;
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzczw:Ljava/util/Map;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdmu;->zzdkx:Ljava/lang/String;

    const-string v1, "aai"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final zzr(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzckp;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzczw:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
