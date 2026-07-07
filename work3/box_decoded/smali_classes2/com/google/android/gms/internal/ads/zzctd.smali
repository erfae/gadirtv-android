.class final Lcom/google/android/gms/internal/ads/zzctd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcaf;


# instance fields
.field private zzfwm:Lcom/google/android/gms/internal/ads/zzbsl;

.field private final zzfwn:Lcom/google/android/gms/internal/ads/zzdmu;

.field private final zzgsf:Lcom/google/android/gms/internal/ads/zzapo;

.field private final zzgsg:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdmu;Lcom/google/android/gms/internal/ads/zzapo;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzctd;->zzfwm:Lcom/google/android/gms/internal/ads/zzbsl;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctd;->zzfwn:Lcom/google/android/gms/internal/ads/zzdmu;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzctd;->zzgsf:Lcom/google/android/gms/internal/ads/zzapo;

    .line 5
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzctd;->zzgsg:Z

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbsl;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctd;->zzfwm:Lcom/google/android/gms/internal/ads/zzbsl;

    return-void
.end method

.method public final zza(ZLandroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcai;
        }
    .end annotation

    .line 7
    :try_start_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzctd;->zzgsg:Z

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzctd;->zzgsf:Lcom/google/android/gms/internal/ads/zzapo;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzapo;->zzaa(Lcom/google/android/gms/dynamic/IObjectWrapper;)Z

    move-result p1

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzctd;->zzgsf:Lcom/google/android/gms/internal/ads/zzapo;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzapo;->zzz(Lcom/google/android/gms/dynamic/IObjectWrapper;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz p1, :cond_3

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzctd;->zzfwm:Lcom/google/android/gms/internal/ads/zzbsl;

    if-nez p1, :cond_1

    return-void

    .line 17
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabf;->zzcqh:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p1

    .line 19
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzctd;->zzfwn:Lcom/google/android/gms/internal/ads/zzdmu;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzdmu;->zzhhj:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 20
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzctd;->zzfwm:Lcom/google/android/gms/internal/ads/zzbsl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbsl;->onAdImpression()V

    :cond_2
    return-void

    .line 14
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcai;

    const-string p2, "Adapter failed to show."

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzcai;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 12
    new-instance p2, Lcom/google/android/gms/internal/ads/zzcai;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzcai;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
