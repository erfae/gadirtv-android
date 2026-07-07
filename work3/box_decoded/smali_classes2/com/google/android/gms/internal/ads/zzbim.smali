.class public Lcom/google/android/gms/internal/ads/zzbim;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzbim$zza;
    }
.end annotation


# instance fields
.field private zzfol:Lcom/google/android/gms/internal/ads/zzbim$zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbim$zza;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbim;->zzfol:Lcom/google/android/gms/internal/ads/zzbim$zza;

    return-void
.end method


# virtual methods
.method public final zzafk()Lcom/google/android/gms/internal/ads/zzaws;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbim;->zzfol:Lcom/google/android/gms/internal/ads/zzbim$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbim$zza;->zzafk()Lcom/google/android/gms/internal/ads/zzaws;

    move-result-object v0

    return-object v0
.end method

.method public final zzafl()Lcom/google/android/gms/internal/ads/zzarq;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbim;->zzfol:Lcom/google/android/gms/internal/ads/zzbim$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbim$zza;->zzafl()Lcom/google/android/gms/internal/ads/zzarq;

    move-result-object v0

    return-object v0
.end method

.method public final zzafm()Lcom/google/android/gms/internal/ads/zzamy;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbim;->zzfol:Lcom/google/android/gms/internal/ads/zzbim$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbim$zza;->zzafm()Lcom/google/android/gms/internal/ads/zzamy;

    move-result-object v0

    return-object v0
.end method

.method public final zzafn()Lcom/google/android/gms/internal/ads/zzacl;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbim;->zzfol:Lcom/google/android/gms/internal/ads/zzbim$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbim$zza;->zzafn()Lcom/google/android/gms/internal/ads/zzacl;

    move-result-object v0

    return-object v0
.end method

.method public final zzahu()Lcom/google/android/gms/ads/internal/zzb;
    .locals 9

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbim;->zzfol:Lcom/google/android/gms/internal/ads/zzbim$zza;

    .line 5
    new-instance v8, Lcom/google/android/gms/ads/internal/zzb;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbim$zza;->zzafh()Lcom/google/android/gms/internal/ads/zzbdf;

    move-result-object v2

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbim$zza;->zzafi()Lcom/google/android/gms/internal/ads/zzbao;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzawn;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbim$zza;->zzafk()Lcom/google/android/gms/internal/ads/zzaws;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzawn;-><init>(Lcom/google/android/gms/internal/ads/zzaws;)V

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbim$zza;->zzafj()Lcom/google/android/gms/internal/ads/zztx;

    move-result-object v5

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbim$zza;->zzafl()Lcom/google/android/gms/internal/ads/zzarq;

    move-result-object v6

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbim$zza;->zzafn()Lcom/google/android/gms/internal/ads/zzacl;

    move-result-object v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/ads/internal/zzb;-><init>(Lcom/google/android/gms/internal/ads/zzbdf;Lcom/google/android/gms/internal/ads/zzbao;Lcom/google/android/gms/internal/ads/zzawt;Lcom/google/android/gms/internal/ads/zztx;Lcom/google/android/gms/internal/ads/zzarq;Lcom/google/android/gms/internal/ads/zzacl;)V

    return-object v8
.end method
