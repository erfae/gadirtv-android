.class final Lcom/google/android/gms/internal/ads/zzcxl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdyo<",
        "Lcom/google/android/gms/internal/ads/zzbme;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzgvq:Lcom/google/android/gms/internal/ads/zzbna;

.field final synthetic zzgvr:Lcom/google/android/gms/internal/ads/zzcxm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcxm;Lcom/google/android/gms/internal/ads/zzbna;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxl;->zzgvr:Lcom/google/android/gms/internal/ads/zzcxm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcxl;->zzgvq:Lcom/google/android/gms/internal/ads/zzbna;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    .line 13
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbme;

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxl;->zzgvr:Lcom/google/android/gms/internal/ads/zzcxm;

    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcxl;->zzgvr:Lcom/google/android/gms/internal/ads/zzcxm;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcxm;->zza(Lcom/google/android/gms/internal/ads/zzcxm;Lcom/google/android/gms/internal/ads/zzdyz;)Lcom/google/android/gms/internal/ads/zzdyz;

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcxl;->zzgvr:Lcom/google/android/gms/internal/ads/zzcxm;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcxm;->zza(Lcom/google/android/gms/internal/ads/zzcxm;)Lcom/google/android/gms/internal/ads/zzbme;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcxl;->zzgvr:Lcom/google/android/gms/internal/ads/zzcxm;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcxm;->zza(Lcom/google/android/gms/internal/ads/zzcxm;)Lcom/google/android/gms/internal/ads/zzbme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzboc;->destroy()V

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcxl;->zzgvr:Lcom/google/android/gms/internal/ads/zzcxm;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzcxm;->zza(Lcom/google/android/gms/internal/ads/zzcxm;Lcom/google/android/gms/internal/ads/zzbme;)Lcom/google/android/gms/internal/ads/zzbme;

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcxl;->zzgvr:Lcom/google/android/gms/internal/ads/zzcxm;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcxm;->zzb(Lcom/google/android/gms/internal/ads/zzcxm;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbme;->zzaiz()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbme;->zzaiz()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 22
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 23
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcxl;->zzgvr:Lcom/google/android/gms/internal/ads/zzcxm;

    .line 24
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcxm;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Banner view provided from "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " already has a parent view. Removing its old parent."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 25
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zzd;->zzfa(Ljava/lang/String;)V

    .line 26
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbme;->zzaiz()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 27
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabf;->zzcyp:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzboc;->zzakb()Lcom/google/android/gms/internal/ads/zzbvn;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcxl;->zzgvr:Lcom/google/android/gms/internal/ads/zzcxm;

    .line 31
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcxm;->zzd(Lcom/google/android/gms/internal/ads/zzcxm;)Lcom/google/android/gms/internal/ads/zzcxq;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbvn;->zza(Lcom/google/android/gms/internal/ads/zzcxq;)Lcom/google/android/gms/internal/ads/zzbvn;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcxl;->zzgvr:Lcom/google/android/gms/internal/ads/zzcxm;

    .line 32
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcxm;->zzc(Lcom/google/android/gms/internal/ads/zzcxm;)Lcom/google/android/gms/internal/ads/zzcyd;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbvn;->zza(Lcom/google/android/gms/internal/ads/zzcyd;)Lcom/google/android/gms/internal/ads/zzbvn;

    .line 33
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcxl;->zzgvr:Lcom/google/android/gms/internal/ads/zzcxm;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcxm;->zzb(Lcom/google/android/gms/internal/ads/zzcxm;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbme;->zzaiz()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 34
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzboc;->zzajj()V

    .line 35
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabf;->zzcyp:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 36
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 37
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 38
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcxl;->zzgvr:Lcom/google/android/gms/internal/ads/zzcxm;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcxm;->zze(Lcom/google/android/gms/internal/ads/zzcxm;)Lcom/google/android/gms/internal/ads/zzbgm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbgm;->zzaek()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcxl;->zzgvr:Lcom/google/android/gms/internal/ads/zzcxm;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcxm;->zzd(Lcom/google/android/gms/internal/ads/zzcxm;)Lcom/google/android/gms/internal/ads/zzcxq;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcxo;->zzb(Lcom/google/android/gms/internal/ads/zzcxq;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 39
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcxl;->zzgvr:Lcom/google/android/gms/internal/ads/zzcxm;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcxm;->zzf(Lcom/google/android/gms/internal/ads/zzcxm;)Lcom/google/android/gms/internal/ads/zzbua;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbme;->zzaji()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbua;->zzdx(I)V

    .line 40
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxl;->zzgvq:Lcom/google/android/gms/internal/ads/zzbna;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbna;->zzagh()Lcom/google/android/gms/internal/ads/zzboz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzboz;->zze(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzve;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcxl;->zzgvr:Lcom/google/android/gms/internal/ads/zzcxm;

    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcxl;->zzgvr:Lcom/google/android/gms/internal/ads/zzcxm;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzcxm;->zza(Lcom/google/android/gms/internal/ads/zzcxm;Lcom/google/android/gms/internal/ads/zzdyz;)Lcom/google/android/gms/internal/ads/zzdyz;

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcxl;->zzgvq:Lcom/google/android/gms/internal/ads/zzbna;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbna;->zzagi()Lcom/google/android/gms/internal/ads/zzbrx;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbrx;->zzk(Lcom/google/android/gms/internal/ads/zzve;)V

    .line 6
    sget-object v2, Lcom/google/android/gms/internal/ads/zzabf;->zzcyp:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v2

    .line 8
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcxl;->zzgvr:Lcom/google/android/gms/internal/ads/zzcxm;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcxm;->zze(Lcom/google/android/gms/internal/ads/zzcxm;)Lcom/google/android/gms/internal/ads/zzbgm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbgm;->zzaek()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcxn;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/zzcxn;-><init>(Lcom/google/android/gms/internal/ads/zzcxl;Lcom/google/android/gms/internal/ads/zzve;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcxl;->zzgvr:Lcom/google/android/gms/internal/ads/zzcxm;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcxm;->zzf(Lcom/google/android/gms/internal/ads/zzcxm;)Lcom/google/android/gms/internal/ads/zzbua;

    move-result-object v2

    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbua;->zzdx(I)V

    .line 11
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzve;->errorCode:I

    const-string v2, "BannerAdManagerShim.onFailure"

    invoke-static {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzdob;->zza(ILjava/lang/Throwable;Ljava/lang/String;)V

    .line 12
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
