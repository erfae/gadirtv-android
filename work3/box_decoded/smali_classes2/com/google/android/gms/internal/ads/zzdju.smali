.class public final Lcom/google/android/gms/internal/ads/zzdju;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdkl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/internal/ads/zzbre<",
        "TAdT;>;AdT:",
        "Lcom/google/android/gms/internal/ads/zzboc;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdkl<",
        "TR;",
        "Lcom/google/android/gms/internal/ads/zzdjy<",
        "TAdT;>;>;"
    }
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final zzhez:Lcom/google/android/gms/internal/ads/zzdpd;

.field private zzhfa:Lcom/google/android/gms/internal/ads/zzdyo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdyo<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdpd;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdjz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdjz;-><init>(Lcom/google/android/gms/internal/ads/zzdju;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdju;->zzhfa:Lcom/google/android/gms/internal/ads/zzdyo;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdju;->zzhez:Lcom/google/android/gms/internal/ads/zzdpd;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdju;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdkm;Lcom/google/android/gms/internal/ads/zzdkn;)Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdkm;",
            "Lcom/google/android/gms/internal/ads/zzdkn<",
            "TR;>;)",
            "Lcom/google/android/gms/internal/ads/zzdyz<",
            "Lcom/google/android/gms/internal/ads/zzdjy<",
            "TAdT;>;>;"
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdkf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdju;->zzhez:Lcom/google/android/gms/internal/ads/zzdpd;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzdkm;->zzhfk:Lcom/google/android/gms/internal/ads/zzdkk;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdju;->executor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, v2, p2, v3}, Lcom/google/android/gms/internal/ads/zzdkf;-><init>(Lcom/google/android/gms/internal/ads/zzdpd;Lcom/google/android/gms/internal/ads/zzdkk;Lcom/google/android/gms/internal/ads/zzdkn;Ljava/util/concurrent/Executor;)V

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdkf;->zzaud()Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyi;->zzg(Lcom/google/android/gms/internal/ads/zzdyz;)Lcom/google/android/gms/internal/ads/zzdyi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdjx;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdjx;-><init>(Lcom/google/android/gms/internal/ads/zzdju;Lcom/google/android/gms/internal/ads/zzdkm;Lcom/google/android/gms/internal/ads/zzdkn;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdju;->executor:Ljava/util/concurrent/Executor;

    .line 9
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdyi;->zzb(Lcom/google/android/gms/internal/ads/zzdyb;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdyi;

    move-result-object p1

    const-class p2, Ljava/lang/Exception;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdjw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdjw;-><init>(Lcom/google/android/gms/internal/ads/zzdju;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdju;->executor:Ljava/util/concurrent/Executor;

    .line 10
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzdyi;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdvm;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdyi;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zza(Lcom/google/android/gms/internal/ads/zzdkm;Lcom/google/android/gms/internal/ads/zzdkn;Lcom/google/android/gms/internal/ads/zzdkj;)Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzdkj;->zzhex:Lcom/google/android/gms/internal/ads/zzdpq;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzdkj;->zzgnh:Lcom/google/android/gms/internal/ads/zzatl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 16
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdju;->zzhez:Lcom/google/android/gms/internal/ads/zzdpd;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzdpd;->zza(Lcom/google/android/gms/internal/ads/zzdpq;)Lcom/google/android/gms/internal/ads/zzdpn;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-nez v0, :cond_1

    .line 20
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdyr;->zzag(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz v2, :cond_2

    if-eqz p3, :cond_2

    .line 22
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdkm;->zzhfk:Lcom/google/android/gms/internal/ads/zzdkk;

    .line 23
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzdkn;->zzc(Lcom/google/android/gms/internal/ads/zzdkk;)Lcom/google/android/gms/internal/ads/zzbrd;

    move-result-object p1

    .line 24
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbrd;->zzafp()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbre;

    .line 25
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbre;->zzagh()Lcom/google/android/gms/internal/ads/zzboz;

    move-result-object p1

    .line 26
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzboz;->zzc(Lcom/google/android/gms/internal/ads/zzatl;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdju;->zzhfa:Lcom/google/android/gms/internal/ads/zzdyo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdju;->executor:Ljava/util/concurrent/Executor;

    .line 27
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzdyr;->zza(Lcom/google/android/gms/internal/ads/zzdyz;Lcom/google/android/gms/internal/ads/zzdyo;Ljava/util/concurrent/Executor;)V

    .line 28
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdjy;

    invoke-direct {p1, v0, p3, v2}, Lcom/google/android/gms/internal/ads/zzdjy;-><init>(Lcom/google/android/gms/internal/ads/zzdpq;Lcom/google/android/gms/internal/ads/zzatl;Lcom/google/android/gms/internal/ads/zzdpn;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyr;->zzag(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic zzaty()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
