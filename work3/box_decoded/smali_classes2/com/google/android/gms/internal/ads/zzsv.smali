.class public final Lcom/google/android/gms/internal/ads/zzsv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.5.0"


# instance fields
.field private final context:Landroid/content/Context;

.field private final orientation:I

.field private final zzacp:Lcom/google/android/gms/internal/ads/zzvl;

.field private final zzacr:Lcom/google/android/gms/internal/ads/zzza;

.field private zzbul:Lcom/google/android/gms/internal/ads/zzxg;

.field private final zzbum:Ljava/lang/String;

.field private final zzbun:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

.field private final zzbuo:Lcom/google/android/gms/internal/ads/zzanj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzza;ILcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzanj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzanj;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsv;->zzbuo:Lcom/google/android/gms/internal/ads/zzanj;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsv;->context:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzsv;->zzbum:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzsv;->zzacr:Lcom/google/android/gms/internal/ads/zzza;

    .line 6
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzsv;->orientation:I

    .line 7
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzsv;->zzbun:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    .line 9
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvl;->zzcho:Lcom/google/android/gms/internal/ads/zzvl;

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsv;->zzacp:Lcom/google/android/gms/internal/ads/zzvl;

    return-void
.end method


# virtual methods
.method public final zzmt()V
    .locals 5

    .line 13
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvn;->zzpq()Lcom/google/android/gms/internal/ads/zzvn;

    move-result-object v0

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqb()Lcom/google/android/gms/internal/ads/zzvx;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzsv;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzsv;->zzbum:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzsv;->zzbuo:Lcom/google/android/gms/internal/ads/zzanj;

    .line 15
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzvx;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvn;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzani;)Lcom/google/android/gms/internal/ads/zzxg;

    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsv;->zzbul:Lcom/google/android/gms/internal/ads/zzxg;

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/ads/zzvw;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzsv;->orientation:I

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzvw;-><init>(I)V

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsv;->zzbul:Lcom/google/android/gms/internal/ads/zzxg;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzxg;->zza(Lcom/google/android/gms/internal/ads/zzvw;)V

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsv;->zzbul:Lcom/google/android/gms/internal/ads/zzxg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzsf;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzsv;->zzbun:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzsf;-><init>(Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzxg;->zza(Lcom/google/android/gms/internal/ads/zzsl;)V

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsv;->zzbul:Lcom/google/android/gms/internal/ads/zzxg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsv;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzsv;->zzacr:Lcom/google/android/gms/internal/ads/zzza;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzvl;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzza;)Lcom/google/android/gms/internal/ads/zzvk;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzxg;->zza(Lcom/google/android/gms/internal/ads/zzvk;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 23
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaza;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
