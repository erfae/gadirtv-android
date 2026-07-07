.class final Lcom/google/android/gms/internal/cast/zzks;
.super Lcom/google/android/gms/internal/cast/zzkt;
.source "com.google.android.gms:play-services-cast@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/cast/zzkt<",
        "Lcom/google/android/gms/internal/cast/zzlc$zze;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzkt;-><init>()V

    return-void
.end method


# virtual methods
.method final zza(Ljava/util/Map$Entry;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)I"
        }
    .end annotation

    .line 12
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/cast/zzlc$zze;

    .line 13
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method final zza(Lcom/google/android/gms/internal/cast/zzon;Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/cast/zzon;",
            "Ljava/util/Map$Entry<",
            "**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/cast/zzlc$zze;

    .line 16
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method final zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/cast/zzku;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/cast/zzku<",
            "Lcom/google/android/gms/internal/cast/zzlc$zze;",
            ">;"
        }
    .end annotation

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/cast/zzlc$zzb;

    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zzlc$zzb;->zzbnb:Lcom/google/android/gms/internal/cast/zzku;

    return-object p1
.end method

.method final zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/cast/zzku;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/cast/zzku<",
            "Lcom/google/android/gms/internal/cast/zzlc$zze;",
            ">;"
        }
    .end annotation

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/cast/zzlc$zzb;

    .line 5
    iget-object v0, p1, Lcom/google/android/gms/internal/cast/zzlc$zzb;->zzbnb:Lcom/google/android/gms/internal/cast/zzku;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzku;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p1, Lcom/google/android/gms/internal/cast/zzlc$zzb;->zzbnb:Lcom/google/android/gms/internal/cast/zzku;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzku;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cast/zzku;

    iput-object v0, p1, Lcom/google/android/gms/internal/cast/zzlc$zzb;->zzbnb:Lcom/google/android/gms/internal/cast/zzku;

    .line 7
    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zzlc$zzb;->zzbnb:Lcom/google/android/gms/internal/cast/zzku;

    return-object p1
.end method

.method final zze(Ljava/lang/Object;)V
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzkt;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/cast/zzku;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzku;->zzib()V

    return-void
.end method

.method final zze(Lcom/google/android/gms/internal/cast/zzml;)Z
    .locals 0

    .line 2
    instance-of p1, p1, Lcom/google/android/gms/internal/cast/zzlc$zzb;

    return p1
.end method
