.class public final Lcom/google/android/gms/internal/cast/zzdf;
.super Lcom/google/android/gms/internal/cast/zzdd;
.source "com.google.android.gms:play-services-cast@@18.1.0"


# instance fields
.field private final synthetic zzaeq:Lcom/google/android/gms/internal/cast/zzdc;

.field private final zzaer:Lcom/google/android/gms/internal/cast/zzdj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzdc;Lcom/google/android/gms/internal/cast/zzdj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdf;->zzaeq:Lcom/google/android/gms/internal/cast/zzdc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdd;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzdf;->zzaer:Lcom/google/android/gms/internal/cast/zzdj;

    return-void
.end method


# virtual methods
.method public final onError(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzcz;->zzfj()Lcom/google/android/gms/cast/internal/Logger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "onError: %d"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdf;->zzaeq:Lcom/google/android/gms/internal/cast/zzdc;

    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zzdc;->zzaen:Lcom/google/android/gms/internal/cast/zzcz;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzcz;->zza(Lcom/google/android/gms/internal/cast/zzcz;)V

    .line 47
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdf;->zzaeq:Lcom/google/android/gms/internal/cast/zzdc;

    new-instance v0, Lcom/google/android/gms/internal/cast/zzdh;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->RESULT_INTERNAL_ERROR:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzdh;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/cast/zzdc;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public final zza(IILandroid/view/Surface;)V
    .locals 9

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzcz;->zzfj()Lcom/google/android/gms/cast/internal/Logger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "onConnected"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdf;->zzaer:Lcom/google/android/gms/internal/cast/zzdj;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzdj;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "display"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/hardware/display/DisplayManager;

    if-nez v2, :cond_0

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzcz;->zzfj()Lcom/google/android/gms/cast/internal/Logger;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "Unable to get the display manager"

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdf;->zzaeq:Lcom/google/android/gms/internal/cast/zzdc;

    new-instance p2, Lcom/google/android/gms/internal/cast/zzdh;

    sget-object p3, Lcom/google/android/gms/common/api/Status;->RESULT_INTERNAL_ERROR:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/cast/zzdh;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/cast/zzdc;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdf;->zzaeq:Lcom/google/android/gms/internal/cast/zzdc;

    iget-object v0, v0, Lcom/google/android/gms/internal/cast/zzdc;->zzaen:Lcom/google/android/gms/internal/cast/zzcz;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzcz;->zza(Lcom/google/android/gms/internal/cast/zzcz;)V

    if-ge p1, p2, :cond_1

    move v0, p1

    goto :goto_0

    :cond_1
    move v0, p2

    :goto_0
    mul-int/lit16 v0, v0, 0x140

    .line 13
    div-int/lit16 v6, v0, 0x438

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdf;->zzaeq:Lcom/google/android/gms/internal/cast/zzdc;

    iget-object v0, v0, Lcom/google/android/gms/internal/cast/zzdc;->zzaen:Lcom/google/android/gms/internal/cast/zzcz;

    const/4 v8, 0x2

    const-string v3, "private_display"

    move v4, p1

    move v5, p2

    move-object v7, p3

    .line 16
    invoke-virtual/range {v2 .. v8}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;I)Landroid/hardware/display/VirtualDisplay;

    move-result-object p1

    .line 17
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/cast/zzcz;->zza(Lcom/google/android/gms/internal/cast/zzcz;Landroid/hardware/display/VirtualDisplay;)Landroid/hardware/display/VirtualDisplay;

    .line 18
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdf;->zzaeq:Lcom/google/android/gms/internal/cast/zzdc;

    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zzdc;->zzaen:Lcom/google/android/gms/internal/cast/zzcz;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzcz;->zzd(Lcom/google/android/gms/internal/cast/zzcz;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p1

    if-nez p1, :cond_2

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzcz;->zzfj()Lcom/google/android/gms/cast/internal/Logger;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "Unable to create virtual display"

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdf;->zzaeq:Lcom/google/android/gms/internal/cast/zzdc;

    new-instance p2, Lcom/google/android/gms/internal/cast/zzdh;

    sget-object p3, Lcom/google/android/gms/common/api/Status;->RESULT_INTERNAL_ERROR:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/cast/zzdh;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/cast/zzdc;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void

    .line 22
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdf;->zzaeq:Lcom/google/android/gms/internal/cast/zzdc;

    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zzdc;->zzaen:Lcom/google/android/gms/internal/cast/zzcz;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzcz;->zzd(Lcom/google/android/gms/internal/cast/zzcz;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object p1

    if-nez p1, :cond_3

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzcz;->zzfj()Lcom/google/android/gms/cast/internal/Logger;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "Virtual display does not have a display"

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdf;->zzaeq:Lcom/google/android/gms/internal/cast/zzdc;

    new-instance p2, Lcom/google/android/gms/internal/cast/zzdh;

    sget-object p3, Lcom/google/android/gms/common/api/Status;->RESULT_INTERNAL_ERROR:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/cast/zzdh;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/cast/zzdc;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void

    .line 27
    :cond_3
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdf;->zzaer:Lcom/google/android/gms/internal/cast/zzdj;

    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzdf;->zzaeq:Lcom/google/android/gms/internal/cast/zzdc;

    iget-object p2, p2, Lcom/google/android/gms/internal/cast/zzdc;->zzaen:Lcom/google/android/gms/internal/cast/zzcz;

    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzcz;->zzd(Lcom/google/android/gms/internal/cast/zzcz;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result p2

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzdj;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/cast/zzdn;

    invoke-interface {p1, p0, p2}, Lcom/google/android/gms/internal/cast/zzdn;->zza(Lcom/google/android/gms/internal/cast/zzdl;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 31
    :catch_0
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzcz;->zzfj()Lcom/google/android/gms/cast/internal/Logger;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "Unable to provision the route\'s new virtual Display"

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdf;->zzaeq:Lcom/google/android/gms/internal/cast/zzdc;

    new-instance p2, Lcom/google/android/gms/internal/cast/zzdh;

    sget-object p3, Lcom/google/android/gms/common/api/Status;->RESULT_INTERNAL_ERROR:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/cast/zzdh;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/cast/zzdc;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public final zzh()V
    .locals 4

    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzcz;->zzfj()Lcom/google/android/gms/cast/internal/Logger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "onConnectedWithDisplay"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdf;->zzaeq:Lcom/google/android/gms/internal/cast/zzdc;

    iget-object v0, v0, Lcom/google/android/gms/internal/cast/zzdc;->zzaen:Lcom/google/android/gms/internal/cast/zzcz;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzcz;->zzd(Lcom/google/android/gms/internal/cast/zzcz;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    if-nez v0, :cond_0

    .line 36
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzcz;->zzfj()Lcom/google/android/gms/cast/internal/Logger;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "There is no virtual display"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdf;->zzaeq:Lcom/google/android/gms/internal/cast/zzdc;

    new-instance v1, Lcom/google/android/gms/internal/cast/zzdh;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->RESULT_INTERNAL_ERROR:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/cast/zzdh;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/zzdc;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdf;->zzaeq:Lcom/google/android/gms/internal/cast/zzdc;

    iget-object v0, v0, Lcom/google/android/gms/internal/cast/zzdc;->zzaen:Lcom/google/android/gms/internal/cast/zzcz;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzcz;->zzd(Lcom/google/android/gms/internal/cast/zzcz;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 41
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzdf;->zzaeq:Lcom/google/android/gms/internal/cast/zzdc;

    new-instance v2, Lcom/google/android/gms/internal/cast/zzdh;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/cast/zzdh;-><init>(Landroid/view/Display;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/cast/zzdc;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void

    .line 42
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzcz;->zzfj()Lcom/google/android/gms/cast/internal/Logger;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Virtual display no longer has a display"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdf;->zzaeq:Lcom/google/android/gms/internal/cast/zzdc;

    new-instance v1, Lcom/google/android/gms/internal/cast/zzdh;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->RESULT_INTERNAL_ERROR:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/cast/zzdh;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/zzdc;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
