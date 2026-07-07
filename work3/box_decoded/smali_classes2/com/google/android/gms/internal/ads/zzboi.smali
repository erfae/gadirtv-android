.class public final Lcom/google/android/gms/internal/ads/zzboi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field public final zzfuy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzdyz<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzboc;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzboc;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyr;->zzag(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzboi;->zzfuy:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzdyz<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzboc;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzboi;->zzfuy:Ljava/util/List;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzcqz;)Lcom/google/android/gms/internal/ads/zzcqz;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcqz<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzboc;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzcqz<",
            "Lcom/google/android/gms/internal/ads/zzboi;",
            ">;"
        }
    .end annotation

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcrc;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbok;->zzdza:Lcom/google/android/gms/internal/ads/zzdvm;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzcrc;-><init>(Lcom/google/android/gms/internal/ads/zzcqz;Lcom/google/android/gms/internal/ads/zzdvm;)V

    return-object v0
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzcto;)Lcom/google/android/gms/internal/ads/zzcqz;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcto<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzboc;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzcqz<",
            "Lcom/google/android/gms/internal/ads/zzboi;",
            ">;"
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcrc;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzboh;->zzdza:Lcom/google/android/gms/internal/ads/zzdvm;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzcrc;-><init>(Lcom/google/android/gms/internal/ads/zzcqz;Lcom/google/android/gms/internal/ads/zzdvm;)V

    return-object v0
.end method
