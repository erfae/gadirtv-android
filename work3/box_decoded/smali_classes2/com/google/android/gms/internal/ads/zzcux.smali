.class final Lcom/google/android/gms/internal/ads/zzcux;
.super Lcom/google/android/gms/internal/ads/zzapm;
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


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcuv;Lcom/google/android/gms/internal/ads/zzcrb;)V
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
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzapm;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcux;->zzgrp:Lcom/google/android/gms/internal/ads/zzcrb;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcuv;Lcom/google/android/gms/internal/ads/zzcrb;Lcom/google/android/gms/internal/ads/zzcuy;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcux;-><init>(Lcom/google/android/gms/internal/ads/zzcuv;Lcom/google/android/gms/internal/ads/zzcrb;)V

    return-void
.end method


# virtual methods
.method public final zzdm(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcux;->zzgrp:Lcom/google/android/gms/internal/ads/zzcrb;

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

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcux;->zzgrp:Lcom/google/android/gms/internal/ads/zzcrb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcrb;->zzgqp:Lcom/google/android/gms/internal/ads/zzbtc;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcst;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcst;->zzc(Lcom/google/android/gms/internal/ads/zzve;)V

    return-void
.end method

.method public final zzuw()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcux;->zzgrp:Lcom/google/android/gms/internal/ads/zzcrb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcrb;->zzgqp:Lcom/google/android/gms/internal/ads/zzbtc;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcst;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcst;->onAdLoaded()V

    return-void
.end method
