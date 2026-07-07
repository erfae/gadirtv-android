.class public final Lcom/google/android/gms/internal/ads/zzbly;
.super Lcom/google/android/gms/internal/ads/zzsj;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field private final zzbul:Lcom/google/android/gms/internal/ads/zzxg;

.field private final zzfsv:Lcom/google/android/gms/internal/ads/zzblv;

.field private final zzfsw:Lcom/google/android/gms/internal/ads/zzdir;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzblv;Lcom/google/android/gms/internal/ads/zzxg;Lcom/google/android/gms/internal/ads/zzdir;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsj;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbly;->zzfsv:Lcom/google/android/gms/internal/ads/zzblv;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbly;->zzbul:Lcom/google/android/gms/internal/ads/zzxg;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbly;->zzfsw:Lcom/google/android/gms/internal/ads/zzdir;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzsq;)V
    .locals 1

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbly;->zzfsw:Lcom/google/android/gms/internal/ads/zzdir;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzdir;->zza(Lcom/google/android/gms/internal/ads/zzsq;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbly;->zzfsv:Lcom/google/android/gms/internal/ads/zzblv;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzblv;->zza(Landroid/app/Activity;Lcom/google/android/gms/internal/ads/zzsq;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 12
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzsm;)V
    .locals 0

    return-void
.end method

.method public final zzdx()Lcom/google/android/gms/internal/ads/zzxg;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbly;->zzbul:Lcom/google/android/gms/internal/ads/zzxg;

    return-object v0
.end method

.method public final zzkh()Lcom/google/android/gms/internal/ads/zzyn;
    .locals 2

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabf;->zzcxv:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbly;->zzfsv:Lcom/google/android/gms/internal/ads/zzblv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzboc;->zzajz()Lcom/google/android/gms/internal/ads/zzbrp;

    move-result-object v0

    return-object v0
.end method
