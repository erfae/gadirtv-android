.class final Lcom/google/android/gms/internal/ads/zzcua;
.super Lcom/google/android/gms/internal/ads/zzapl;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field private zzgrp:Lcom/google/android/gms/internal/ads/zzcrb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzcrb<",
            "Lcom/google/android/gms/internal/ads/zzapo;",
            "Lcom/google/android/gms/internal/ads/zzcst;",
            ">;"
        }
    .end annotation
.end field

.field private final synthetic zzgsr:Lcom/google/android/gms/internal/ads/zzcty;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcty;Lcom/google/android/gms/internal/ads/zzcrb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcrb<",
            "Lcom/google/android/gms/internal/ads/zzapo;",
            "Lcom/google/android/gms/internal/ads/zzcst;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzgsr:Lcom/google/android/gms/internal/ads/zzcty;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzapl;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzgrp:Lcom/google/android/gms/internal/ads/zzcrb;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcty;Lcom/google/android/gms/internal/ads/zzcrb;Lcom/google/android/gms/internal/ads/zzctx;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcua;-><init>(Lcom/google/android/gms/internal/ads/zzcty;Lcom/google/android/gms/internal/ads/zzcrb;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzaob;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzgsr:Lcom/google/android/gms/internal/ads/zzcty;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcty;->zza(Lcom/google/android/gms/internal/ads/zzcty;Lcom/google/android/gms/internal/ads/zzaob;)Lcom/google/android/gms/internal/ads/zzaob;

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzgrp:Lcom/google/android/gms/internal/ads/zzcrb;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcrb;->zzgqp:Lcom/google/android/gms/internal/ads/zzbtc;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcst;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcst;->onAdLoaded()V

    return-void
.end method

.method public final zzdm(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzgrp:Lcom/google/android/gms/internal/ads/zzcrb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcrb;->zzgqp:Lcom/google/android/gms/internal/ads/zzbtc;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcst;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcst;->zzc(ILjava/lang/String;)V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzve;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzgrp:Lcom/google/android/gms/internal/ads/zzcrb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcrb;->zzgqp:Lcom/google/android/gms/internal/ads/zzbtc;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcst;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcst;->zzc(Lcom/google/android/gms/internal/ads/zzve;)V

    return-void
.end method
