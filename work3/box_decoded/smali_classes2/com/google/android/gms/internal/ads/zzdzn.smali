.class final Lcom/google/android/gms/internal/ads/zzdzn;
.super Lcom/google/android/gms/internal/ads/zzdyy;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdyy<",
        "Lcom/google/android/gms/internal/ads/zzdyz<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field private final zzhyc:Lcom/google/android/gms/internal/ads/zzdxz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdxz<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final synthetic zzhyd:Lcom/google/android/gms/internal/ads/zzdzo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdzo;Lcom/google/android/gms/internal/ads/zzdxz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdxz<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzn;->zzhyd:Lcom/google/android/gms/internal/ads/zzdzo;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdyy;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdvv;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdxz;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzn;->zzhyc:Lcom/google/android/gms/internal/ads/zzdxz;

    return-void
.end method


# virtual methods
.method final isDone()Z
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzn;->zzhyd:Lcom/google/android/gms/internal/ads/zzdzo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdxo;->isDone()Z

    move-result v0

    return v0
.end method

.method final synthetic zzazk()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzn;->zzhyc:Lcom/google/android/gms/internal/ads/zzdxz;

    .line 13
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdxz;->zzata()Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdzn;->zzhyc:Lcom/google/android/gms/internal/ads/zzdxz;

    const-string v2, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    .line 14
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdvv;->zza(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdyz;

    return-object v0
.end method

.method final zzazl()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzn;->zzhyc:Lcom/google/android/gms/internal/ads/zzdxz;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzb(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdyz;

    if-nez p2, :cond_0

    .line 8
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdzn;->zzhyd:Lcom/google/android/gms/internal/ads/zzdzo;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzdxo;->setFuture(Lcom/google/android/gms/internal/ads/zzdyz;)Z

    return-void

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzn;->zzhyd:Lcom/google/android/gms/internal/ads/zzdzo;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdxo;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method
