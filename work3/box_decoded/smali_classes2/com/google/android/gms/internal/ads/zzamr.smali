.class final Lcom/google/android/gms/internal/ads/zzamr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaih;


# instance fields
.field private final synthetic zzdki:Lcom/google/android/gms/internal/ads/zzamm;

.field private final zzdkl:Lcom/google/android/gms/internal/ads/zzalo;

.field private final zzdkm:Lcom/google/android/gms/internal/ads/zzazq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzazq<",
            "TO;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzamm;Lcom/google/android/gms/internal/ads/zzalo;Lcom/google/android/gms/internal/ads/zzazq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzalo;",
            "Lcom/google/android/gms/internal/ads/zzazq<",
            "TO;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzdki:Lcom/google/android/gms/internal/ads/zzamm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzdkl:Lcom/google/android/gms/internal/ads/zzalo;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzdkm:Lcom/google/android/gms/internal/ads/zzazq;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    .line 18
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzdkm:Lcom/google/android/gms/internal/ads/zzazq;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzama;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzama;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzazq;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzdkm:Lcom/google/android/gms/internal/ads/zzazq;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzama;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzama;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzazq;->setException(Ljava/lang/Throwable;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzdkl:Lcom/google/android/gms/internal/ads/zzalo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzalo;->release()V

    return-void

    :catchall_0
    move-exception p1

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzdkl:Lcom/google/android/gms/internal/ads/zzalo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzalo;->release()V

    .line 26
    throw p1

    .line 23
    :catch_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzdkl:Lcom/google/android/gms/internal/ads/zzalo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzalo;->release()V

    return-void
.end method

.method public final zzc(Lorg/json/JSONObject;)V
    .locals 2

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzdkm:Lcom/google/android/gms/internal/ads/zzazq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzdki:Lcom/google/android/gms/internal/ads/zzamm;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzamm;->zza(Lcom/google/android/gms/internal/ads/zzamm;)Lcom/google/android/gms/internal/ads/zzamf;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzd(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzazq;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzdkl:Lcom/google/android/gms/internal/ads/zzalo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzalo;->release()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzdkm:Lcom/google/android/gms/internal/ads/zzazq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzazq;->setException(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzdkl:Lcom/google/android/gms/internal/ads/zzalo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzalo;->release()V

    return-void

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzdkl:Lcom/google/android/gms/internal/ads/zzalo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzalo;->release()V

    .line 16
    throw p1

    .line 9
    :catch_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzdkl:Lcom/google/android/gms/internal/ads/zzalo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzalo;->release()V

    return-void
.end method
