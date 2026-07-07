.class public final Lcom/google/android/gms/internal/ads/zzebd;
.super Lcom/google/android/gms/internal/ads/zzeae;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzeae<",
        "Lcom/google/android/gms/internal/ads/zzedm;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 4

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzedm;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzeag;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzebc;

    const-class v3, Lcom/google/android/gms/internal/ads/zzehr;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzebc;-><init>(Ljava/lang/Class;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzeae;-><init>(Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/zzeag;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzebd;Lcom/google/android/gms/internal/ads/zzedq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzebd;->zza(Lcom/google/android/gms/internal/ads/zzedq;)V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzedm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzedm;->getVersion()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeic;->zzz(II)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzedm;->zzbam()Lcom/google/android/gms/internal/ads/zzeiu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeiu;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeic;->zzft(I)V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzedm;->zzbbb()Lcom/google/android/gms/internal/ads/zzedq;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzebd;->zza(Lcom/google/android/gms/internal/ads/zzedq;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzedq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzedq;->zzbbh()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzedq;->zzbbh()I

    move-result p0

    const/16 v0, 0x10

    if-gt p0, v0, :cond_0

    return-void

    .line 11
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid IV size"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getKeyType()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrKey"

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
            "Lcom/google/android/gms/internal/ads/zzedn;",
            "Lcom/google/android/gms/internal/ads/zzedm;",
            ">;"
        }
    .end annotation

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzebf;

    const-class v1, Lcom/google/android/gms/internal/ads/zzedn;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzebf;-><init>(Lcom/google/android/gms/internal/ads/zzebd;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final synthetic zze(Lcom/google/android/gms/internal/ads/zzels;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 13
    check-cast p1, Lcom/google/android/gms/internal/ads/zzedm;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzebd;->zza(Lcom/google/android/gms/internal/ads/zzedm;)V

    return-void
.end method

.method public final synthetic zzr(Lcom/google/android/gms/internal/ads/zzeiu;)Lcom/google/android/gms/internal/ads/zzels;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzeks;
        }
    .end annotation

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeju;->zzbhe()Lcom/google/android/gms/internal/ads/zzeju;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzedm;->zzg(Lcom/google/android/gms/internal/ads/zzeiu;Lcom/google/android/gms/internal/ads/zzeju;)Lcom/google/android/gms/internal/ads/zzedm;

    move-result-object p1

    return-object p1
.end method
