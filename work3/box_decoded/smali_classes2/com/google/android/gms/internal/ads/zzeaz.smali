.class public final Lcom/google/android/gms/internal/ads/zzeaz;
.super Lcom/google/android/gms/internal/ads/zzeae;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzeae<",
        "Lcom/google/android/gms/internal/ads/zzedi;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 4

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzedi;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzeag;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzebb;

    const-class v3, Lcom/google/android/gms/internal/ads/zzdzt;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzebb;-><init>(Ljava/lang/Class;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzeae;-><init>(Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/zzeag;)V

    return-void
.end method


# virtual methods
.method public final getKeyType()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    return-object v0
.end method

.method public final zzazv()Lcom/google/android/gms/internal/ads/zzefh$zzb;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzefh$zzb;->zzidx:Lcom/google/android/gms/internal/ads/zzefh$zzb;

    return-object v0
.end method

.method public final zzazy()Lcom/google/android/gms/internal/ads/zzead;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzead<",
            "Lcom/google/android/gms/internal/ads/zzedj;",
            "Lcom/google/android/gms/internal/ads/zzedi;",
            ">;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeba;

    const-class v1, Lcom/google/android/gms/internal/ads/zzedj;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzeba;-><init>(Lcom/google/android/gms/internal/ads/zzeaz;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final synthetic zze(Lcom/google/android/gms/internal/ads/zzels;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/zzedi;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzedi;->getVersion()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeic;->zzz(II)V

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzebd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzebd;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzedi;->zzbau()Lcom/google/android/gms/internal/ads/zzedm;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebd;->zza(Lcom/google/android/gms/internal/ads/zzedm;)V

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzecu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzecu;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzedi;->zzbav()Lcom/google/android/gms/internal/ads/zzefc;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzecu;->zza(Lcom/google/android/gms/internal/ads/zzefc;)V

    return-void
.end method

.method public final synthetic zzr(Lcom/google/android/gms/internal/ads/zzeiu;)Lcom/google/android/gms/internal/ads/zzels;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzeks;
        }
    .end annotation

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeju;->zzbhe()Lcom/google/android/gms/internal/ads/zzeju;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzedi;->zze(Lcom/google/android/gms/internal/ads/zzeiu;Lcom/google/android/gms/internal/ads/zzeju;)Lcom/google/android/gms/internal/ads/zzedi;

    move-result-object p1

    return-object p1
.end method
