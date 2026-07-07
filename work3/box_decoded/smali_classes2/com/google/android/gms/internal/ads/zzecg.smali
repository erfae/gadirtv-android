.class final Lcom/google/android/gms/internal/ads/zzecg;
.super Lcom/google/android/gms/internal/ads/zzeag;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzeag<",
        "Lcom/google/android/gms/internal/ads/zzeaa;",
        "Lcom/google/android/gms/internal/ads/zzeeu;",
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
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeeu;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeeu;->zzbcc()Lcom/google/android/gms/internal/ads/zzeeq;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeeq;->zzbce()Lcom/google/android/gms/internal/ads/zzeev;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeev;->zzbcr()Lcom/google/android/gms/internal/ads/zzeey;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzeco;->zza(Lcom/google/android/gms/internal/ads/zzeey;)Lcom/google/android/gms/internal/ads/zzehg;

    move-result-object v2

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeeu;->zzbcm()Lcom/google/android/gms/internal/ads/zzeiu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeiu;->toByteArray()[B

    move-result-object v3

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeeu;->zzbcn()Lcom/google/android/gms/internal/ads/zzeiu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeiu;->toByteArray()[B

    move-result-object p1

    .line 9
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzehe;->zza(Lcom/google/android/gms/internal/ads/zzehg;[B[B)Ljava/security/interfaces/ECPublicKey;

    move-result-object v5

    .line 10
    new-instance v9, Lcom/google/android/gms/internal/ads/zzecq;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeeq;->zzbcf()Lcom/google/android/gms/internal/ads/zzeem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeem;->zzbbz()Lcom/google/android/gms/internal/ads/zzefn;

    move-result-object p1

    invoke-direct {v9, p1}, Lcom/google/android/gms/internal/ads/zzecq;-><init>(Lcom/google/android/gms/internal/ads/zzefn;)V

    .line 12
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeha;

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeev;->zzbct()Lcom/google/android/gms/internal/ads/zzeiu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeiu;->toByteArray()[B

    move-result-object v6

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeev;->zzbcs()Lcom/google/android/gms/internal/ads/zzefa;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzeco;->zza(Lcom/google/android/gms/internal/ads/zzefa;)Ljava/lang/String;

    move-result-object v7

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeeq;->zzbcg()Lcom/google/android/gms/internal/ads/zzeek;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeco;->zza(Lcom/google/android/gms/internal/ads/zzeek;)Lcom/google/android/gms/internal/ads/zzehf;

    move-result-object v8

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzeha;-><init>(Ljava/security/interfaces/ECPublicKey;[BLjava/lang/String;Lcom/google/android/gms/internal/ads/zzehf;Lcom/google/android/gms/internal/ads/zzegy;)V

    return-object p1
.end method
