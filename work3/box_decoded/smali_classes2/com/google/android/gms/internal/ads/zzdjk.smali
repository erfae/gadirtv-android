.class public final Lcom/google/android/gms/internal/ads/zzdjk;
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
        "Lcom/google/android/gms/internal/ads/zzdpn<",
        "TAdT;>;>;"
    }
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private zzheh:Lcom/google/android/gms/internal/ads/zzbre;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdzb;->zzazo()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjk;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdkm;Lcom/google/android/gms/internal/ads/zzdkn;)Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdkm;",
            "Lcom/google/android/gms/internal/ads/zzdkn<",
            "TR;>;)",
            "Lcom/google/android/gms/internal/ads/zzdyz<",
            "Lcom/google/android/gms/internal/ads/zzdpn<",
            "TAdT;>;>;"
        }
    .end annotation

    .line 4
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdkm;->zzhfk:Lcom/google/android/gms/internal/ads/zzdkk;

    .line 5
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzdkn;->zzc(Lcom/google/android/gms/internal/ads/zzdkk;)Lcom/google/android/gms/internal/ads/zzbrd;

    move-result-object p2

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdkt;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkt;-><init>(Z)V

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzbrd;->zza(Lcom/google/android/gms/internal/ads/zzdkt;)Lcom/google/android/gms/internal/ads/zzbrd;

    .line 7
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbrd;->zzafp()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzbre;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjk;->zzheh:Lcom/google/android/gms/internal/ads/zzbre;

    .line 8
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbre;->zzagh()Lcom/google/android/gms/internal/ads/zzboz;

    move-result-object p2

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdpn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdpn;-><init>()V

    .line 10
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzdkm;->zzhfj:Lcom/google/android/gms/internal/ads/zzatl;

    if-eqz v1, :cond_0

    .line 11
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdkm;->zzhfj:Lcom/google/android/gms/internal/ads/zzatl;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzboz;->zza(Lcom/google/android/gms/internal/ads/zzatl;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzboz;->zzaki()Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    .line 13
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyi;->zzg(Lcom/google/android/gms/internal/ads/zzdyz;)Lcom/google/android/gms/internal/ads/zzdyi;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdjn;

    invoke-direct {v1, p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzdjn;-><init>(Lcom/google/android/gms/internal/ads/zzdjk;Lcom/google/android/gms/internal/ads/zzdpn;Lcom/google/android/gms/internal/ads/zzboz;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjk;->executor:Ljava/util/concurrent/Executor;

    .line 14
    invoke-virtual {p1, v1, p2}, Lcom/google/android/gms/internal/ads/zzdyi;->zzb(Lcom/google/android/gms/internal/ads/zzdyb;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdyi;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdjm;

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzdjm;-><init>(Lcom/google/android/gms/internal/ads/zzdpn;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjk;->executor:Ljava/util/concurrent/Executor;

    .line 15
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzdyi;->zza(Lcom/google/android/gms/internal/ads/zzdvm;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdyi;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzaty()Ljava/lang/Object;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjk;->zzheh:Lcom/google/android/gms/internal/ads/zzbre;

    return-object v0
.end method
