.class final Lcom/google/android/gms/internal/ads/zzebx;
.super Lcom/google/android/gms/internal/ads/zzeag;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzeag<",
        "Lcom/google/android/gms/internal/ads/zzdzt;",
        "Lcom/google/android/gms/internal/ads/zzefz;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzeag;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzah(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzefz;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzefz;->zzbek()Lcom/google/android/gms/internal/ads/zzega;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzega;->zzben()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeah;->zzhh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzeai;

    move-result-object v1

    .line 5
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzeai;->zzhj(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdzt;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/google/android/gms/internal/ads/zzebv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzefz;->zzbek()Lcom/google/android/gms/internal/ads/zzega;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzega;->zzbeo()Lcom/google/android/gms/internal/ads/zzefn;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzebv;-><init>(Lcom/google/android/gms/internal/ads/zzefn;Lcom/google/android/gms/internal/ads/zzdzt;)V

    return-object v1
.end method
