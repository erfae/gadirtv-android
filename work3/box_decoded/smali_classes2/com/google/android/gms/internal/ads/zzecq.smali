.class final Lcom/google/android/gms/internal/ads/zzecq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzegy;


# instance fields
.field private final zziar:Ljava/lang/String;

.field private final zzias:I

.field private zziat:Lcom/google/android/gms/internal/ads/zzedy;

.field private zziau:Lcom/google/android/gms/internal/ads/zzedi;

.field private zziav:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzefn;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzefn;->zzbdf()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzecq;->zziar:Ljava/lang/String;

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzeav;->zzhzk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzefn;->zzbdg()Lcom/google/android/gms/internal/ads/zzeiu;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeju;->zzbhe()Lcom/google/android/gms/internal/ads/zzeju;

    move-result-object v1

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzedz;->zzl(Lcom/google/android/gms/internal/ads/zzeiu;Lcom/google/android/gms/internal/ads/zzeju;)Lcom/google/android/gms/internal/ads/zzedz;

    move-result-object v0

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeap;->zzb(Lcom/google/android/gms/internal/ads/zzefn;)Lcom/google/android/gms/internal/ads/zzels;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzedy;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzecq;->zziat:Lcom/google/android/gms/internal/ads/zzedy;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzedz;->getKeySize()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzecq;->zzias:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzeks; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 11
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid KeyFormat protobuf, expected AesGcmKeyFormat"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 12
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzeav;->zzhzj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 14
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzefn;->zzbdg()Lcom/google/android/gms/internal/ads/zzeiu;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeju;->zzbhe()Lcom/google/android/gms/internal/ads/zzeju;

    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzedj;->zzf(Lcom/google/android/gms/internal/ads/zzeiu;Lcom/google/android/gms/internal/ads/zzeju;)Lcom/google/android/gms/internal/ads/zzedj;

    move-result-object v0

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeap;->zzb(Lcom/google/android/gms/internal/ads/zzefn;)Lcom/google/android/gms/internal/ads/zzels;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzedi;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzecq;->zziau:Lcom/google/android/gms/internal/ads/zzedi;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzedj;->zzbay()Lcom/google/android/gms/internal/ads/zzedn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzedn;->getKeySize()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzecq;->zziav:I

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzedj;->zzbaz()Lcom/google/android/gms/internal/ads/zzefd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzefd;->getKeySize()I

    move-result p1

    .line 19
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzecq;->zziav:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzecq;->zzias:I
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzeks; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 22
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid KeyFormat protobuf, expected AesCtrHmacAeadKeyFormat"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 23
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v1, "unsupported AEAD DEM key type: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final zzbal()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzecq;->zzias:I

    return v0
.end method

.method public final zzm([B)Lcom/google/android/gms/internal/ads/zzdzt;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 25
    array-length v0, p1

    .line 26
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzecq;->zzias:I

    if-ne v0, v1, :cond_2

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzecq;->zziar:Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzeav;->zzhzk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzedy;->zzbbq()Lcom/google/android/gms/internal/ads/zzedy$zza;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzecq;->zziat:Lcom/google/android/gms/internal/ads/zzedy;

    .line 31
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzekh$zza;->zza(Lcom/google/android/gms/internal/ads/zzekh;)Lcom/google/android/gms/internal/ads/zzekh$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzedy$zza;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzecq;->zzias:I

    .line 32
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzeiu;->zzh([BII)Lcom/google/android/gms/internal/ads/zzeiu;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzedy$zza;->zzw(Lcom/google/android/gms/internal/ads/zzeiu;)Lcom/google/android/gms/internal/ads/zzedy$zza;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzekh$zza;->zzbhv()Lcom/google/android/gms/internal/ads/zzels;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzekh;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzedy;

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzecq;->zziar:Ljava/lang/String;

    const-class v1, Lcom/google/android/gms/internal/ads/zzdzt;

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzeap;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzels;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdzt;

    return-object p1

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzecq;->zziar:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzeav;->zzhzj:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzecq;->zziav:I

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 37
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzecq;->zziav:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzecq;->zzias:I

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 38
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzedm;->zzbbc()Lcom/google/android/gms/internal/ads/zzedm$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzecq;->zziau:Lcom/google/android/gms/internal/ads/zzedi;

    .line 39
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzedi;->zzbau()Lcom/google/android/gms/internal/ads/zzedm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzekh$zza;->zza(Lcom/google/android/gms/internal/ads/zzekh;)Lcom/google/android/gms/internal/ads/zzekh$zza;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzedm$zza;

    .line 40
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeiu;->zzt([B)Lcom/google/android/gms/internal/ads/zzeiu;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzedm$zza;->zzu(Lcom/google/android/gms/internal/ads/zzeiu;)Lcom/google/android/gms/internal/ads/zzedm$zza;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzekh$zza;->zzbhv()Lcom/google/android/gms/internal/ads/zzels;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzekh;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzedm;

    .line 42
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzefc;->zzbcx()Lcom/google/android/gms/internal/ads/zzefc$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzecq;->zziau:Lcom/google/android/gms/internal/ads/zzedi;

    .line 43
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzedi;->zzbav()Lcom/google/android/gms/internal/ads/zzefc;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzekh$zza;->zza(Lcom/google/android/gms/internal/ads/zzekh;)Lcom/google/android/gms/internal/ads/zzekh$zza;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzefc$zza;

    .line 44
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeiu;->zzt([B)Lcom/google/android/gms/internal/ads/zzeiu;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzefc$zza;->zzae(Lcom/google/android/gms/internal/ads/zzeiu;)Lcom/google/android/gms/internal/ads/zzefc$zza;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzekh$zza;->zzbhv()Lcom/google/android/gms/internal/ads/zzels;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzekh;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzefc;

    .line 46
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzedi;->zzbaw()Lcom/google/android/gms/internal/ads/zzedi$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzecq;->zziau:Lcom/google/android/gms/internal/ads/zzedi;

    .line 47
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzedi;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzedi$zza;->zzew(I)Lcom/google/android/gms/internal/ads/zzedi$zza;

    move-result-object v1

    .line 48
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzedi$zza;->zzc(Lcom/google/android/gms/internal/ads/zzedm;)Lcom/google/android/gms/internal/ads/zzedi$zza;

    move-result-object v0

    .line 49
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzedi$zza;->zzc(Lcom/google/android/gms/internal/ads/zzefc;)Lcom/google/android/gms/internal/ads/zzedi$zza;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzekh$zza;->zzbhv()Lcom/google/android/gms/internal/ads/zzels;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzekh;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzedi;

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzecq;->zziar:Ljava/lang/String;

    const-class v1, Lcom/google/android/gms/internal/ads/zzdzt;

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzeap;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzels;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdzt;

    return-object p1

    .line 52
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown DEM key type"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Symmetric key has incorrect length"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
