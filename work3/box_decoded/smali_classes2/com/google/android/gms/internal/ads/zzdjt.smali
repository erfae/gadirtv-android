.class final Lcom/google/android/gms/internal/ads/zzdjt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdqc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/internal/ads/zzbre<",
        "TAdT;>;AdT:",
        "Lcom/google/android/gms/internal/ads/zzboc;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdqc<",
        "TAdT;>;"
    }
.end annotation


# instance fields
.field private final zzhey:Lcom/google/android/gms/internal/ads/zzdkl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdkl<",
            "TR;",
            "Lcom/google/android/gms/internal/ads/zzdpn<",
            "TAdT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdkl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdkl<",
            "TR;",
            "Lcom/google/android/gms/internal/ads/zzdpn<",
            "TAdT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjt;->zzhey:Lcom/google/android/gms/internal/ads/zzdkl;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdqb;)Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdqb;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdyz<",
            "Lcom/google/android/gms/internal/ads/zzdpn<",
            "TAdT;>;>;"
        }
    .end annotation

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdjs;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjt;->zzhey:Lcom/google/android/gms/internal/ads/zzdkl;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzdjs;->zzhew:Lcom/google/android/gms/internal/ads/zzdkm;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdjs;->zzhev:Lcom/google/android/gms/internal/ads/zzdkn;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdkl;->zza(Lcom/google/android/gms/internal/ads/zzdkm;Lcom/google/android/gms/internal/ads/zzdkn;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzdpn;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdpn<",
            "TAdT;>;)V"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjt;->zzhey:Lcom/google/android/gms/internal/ads/zzdkl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdkl;->zzaty()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbre;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbre;->zzagh()Lcom/google/android/gms/internal/ads/zzboz;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/zzdpn;->zzhmb:Lcom/google/android/gms/internal/ads/zzboz;

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
