.class public final Lcom/google/android/gms/internal/ads/zzccn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field zzgdj:Lcom/google/android/gms/internal/ads/zzafk;

.field zzgdk:Lcom/google/android/gms/internal/ads/zzafj;

.field zzgdl:Lcom/google/android/gms/internal/ads/zzafy;

.field zzgdm:Lcom/google/android/gms/internal/ads/zzafx;

.field zzgdn:Lcom/google/android/gms/internal/ads/zzajt;

.field final zzgdo:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzafq;",
            ">;"
        }
    .end annotation
.end field

.field final zzgdp:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzafp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzccn;->zzgdo:Landroidx/collection/SimpleArrayMap;

    .line 3
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzccn;->zzgdp:Landroidx/collection/SimpleArrayMap;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzafx;)Lcom/google/android/gms/internal/ads/zzccn;
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccn;->zzgdm:Lcom/google/android/gms/internal/ads/zzafx;

    return-object p0
.end method

.method public final zzany()Lcom/google/android/gms/internal/ads/zzccl;
    .locals 2

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/ads/zzccl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzccl;-><init>(Lcom/google/android/gms/internal/ads/zzccn;Lcom/google/android/gms/internal/ads/zzcco;)V

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzafj;)Lcom/google/android/gms/internal/ads/zzccn;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccn;->zzgdk:Lcom/google/android/gms/internal/ads/zzafj;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzafk;)Lcom/google/android/gms/internal/ads/zzccn;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccn;->zzgdj:Lcom/google/android/gms/internal/ads/zzafk;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzafy;)Lcom/google/android/gms/internal/ads/zzccn;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccn;->zzgdl:Lcom/google/android/gms/internal/ads/zzafy;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzajt;)Lcom/google/android/gms/internal/ads/zzccn;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccn;->zzgdn:Lcom/google/android/gms/internal/ads/zzajt;

    return-object p0
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzafq;Lcom/google/android/gms/internal/ads/zzafp;)Lcom/google/android/gms/internal/ads/zzccn;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccn;->zzgdo:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzccn;->zzgdp:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {p2, p1, p3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
