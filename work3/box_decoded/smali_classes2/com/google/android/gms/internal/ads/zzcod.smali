.class public final Lcom/google/android/gms/internal/ads/zzcod;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcoi;


# instance fields
.field private final zzggb:Lcom/google/android/gms/internal/ads/zzdzc;

.field private final zzgnr:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzeps<",
            "Lcom/google/android/gms/internal/ads/zzcoi;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzgns:Lcom/google/android/gms/internal/ads/zzbuh;


# direct methods
.method public constructor <init>(Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzbuh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzeps<",
            "Lcom/google/android/gms/internal/ads/zzcoi;",
            ">;>;",
            "Lcom/google/android/gms/internal/ads/zzdzc;",
            "Lcom/google/android/gms/internal/ads/zzbuh;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcod;->zzgnr:Ljava/util/Map;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcod;->zzggb:Lcom/google/android/gms/internal/ads/zzdzc;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcod;->zzgns:Lcom/google/android/gms/internal/ads/zzbuh;

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzcod;)Lcom/google/android/gms/internal/ads/zzbuh;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcod;->zzgns:Lcom/google/android/gms/internal/ads/zzbuh;

    return-object p0
.end method


# virtual methods
.method public final zzh(Lcom/google/android/gms/internal/ads/zzatl;)Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzatl;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdyz<",
            "Lcom/google/android/gms/internal/ads/zzdnj;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcod;->zzgns:Lcom/google/android/gms/internal/ads/zzbuh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbuh;->zzd(Lcom/google/android/gms/internal/ads/zzatl;)V

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcme;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdok;->zzhjn:Lcom/google/android/gms/internal/ads/zzdok;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcme;-><init>(Lcom/google/android/gms/internal/ads/zzdok;)V

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyr;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object v0

    .line 9
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabf;->zzcyv:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 12
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 13
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcod;->zzgnr:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzeps;

    if-eqz v4, :cond_0

    .line 15
    const-class v5, Lcom/google/android/gms/internal/ads/zzcme;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzcog;

    invoke-direct {v6, v4, p1}, Lcom/google/android/gms/internal/ads/zzcog;-><init>(Lcom/google/android/gms/internal/ads/zzeps;Lcom/google/android/gms/internal/ads/zzatl;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcod;->zzggb:Lcom/google/android/gms/internal/ads/zzdzc;

    .line 16
    invoke-static {v0, v5, v6, v4}, Lcom/google/android/gms/internal/ads/zzdyr;->zzb(Lcom/google/android/gms/internal/ads/zzdyz;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdyb;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 18
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcof;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzcof;-><init>(Lcom/google/android/gms/internal/ads/zzcod;)V

    .line 19
    sget-object v1, Lcom/google/android/gms/internal/ads/zzazj;->zzegu:Lcom/google/android/gms/internal/ads/zzdzc;

    .line 20
    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdyr;->zza(Lcom/google/android/gms/internal/ads/zzdyz;Lcom/google/android/gms/internal/ads/zzdyo;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
