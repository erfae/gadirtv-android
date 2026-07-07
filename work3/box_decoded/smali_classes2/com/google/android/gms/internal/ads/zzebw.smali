.class final Lcom/google/android/gms/internal/ads/zzebw;
.super Lcom/google/android/gms/internal/ads/zzead;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzead<",
        "Lcom/google/android/gms/internal/ads/zzega;",
        "Lcom/google/android/gms/internal/ads/zzefz;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zziaf:Lcom/google/android/gms/internal/ads/zzebu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzebu;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzebw;->zziaf:Lcom/google/android/gms/internal/ads/zzebu;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzead;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzels;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 9
    check-cast p1, Lcom/google/android/gms/internal/ads/zzega;

    return-void
.end method

.method public final synthetic zzd(Lcom/google/android/gms/internal/ads/zzels;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzega;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzefz;->zzbel()Lcom/google/android/gms/internal/ads/zzefz$zza;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzefz$zza;->zzb(Lcom/google/android/gms/internal/ads/zzega;)Lcom/google/android/gms/internal/ads/zzefz$zza;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzefz$zza;->zzfp(I)Lcom/google/android/gms/internal/ads/zzefz$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzekh$zza;->zzbhv()Lcom/google/android/gms/internal/ads/zzels;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzekh;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzefz;

    return-object p1
.end method

.method public final synthetic zzq(Lcom/google/android/gms/internal/ads/zzeiu;)Lcom/google/android/gms/internal/ads/zzels;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzeks;
        }
    .end annotation

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeju;->zzbhe()Lcom/google/android/gms/internal/ads/zzeju;

    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzega;->zzy(Lcom/google/android/gms/internal/ads/zzeiu;Lcom/google/android/gms/internal/ads/zzeju;)Lcom/google/android/gms/internal/ads/zzega;

    move-result-object p1

    return-object p1
.end method
