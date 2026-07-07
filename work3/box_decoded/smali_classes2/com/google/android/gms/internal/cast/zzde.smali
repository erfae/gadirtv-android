.class public final Lcom/google/android/gms/internal/cast/zzde;
.super Lcom/google/android/gms/internal/cast/zzdd;
.source "com.google.android.gms:play-services-cast@@18.1.0"


# instance fields
.field private final synthetic zzaeq:Lcom/google/android/gms/internal/cast/zzdc;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/cast/zzdc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzde;->zzaeq:Lcom/google/android/gms/internal/cast/zzdc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdd;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisconnected()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzcz;->zzfj()Lcom/google/android/gms/cast/internal/Logger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onDisconnected"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzde;->zzaeq:Lcom/google/android/gms/internal/cast/zzdc;

    iget-object v0, v0, Lcom/google/android/gms/internal/cast/zzdc;->zzaen:Lcom/google/android/gms/internal/cast/zzcz;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzcz;->zza(Lcom/google/android/gms/internal/cast/zzcz;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzde;->zzaeq:Lcom/google/android/gms/internal/cast/zzdc;

    new-instance v1, Lcom/google/android/gms/internal/cast/zzdh;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/cast/zzdh;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/zzdc;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public final onError(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6
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

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzde;->zzaeq:Lcom/google/android/gms/internal/cast/zzdc;

    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zzdc;->zzaen:Lcom/google/android/gms/internal/cast/zzcz;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzcz;->zza(Lcom/google/android/gms/internal/cast/zzcz;)V

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzde;->zzaeq:Lcom/google/android/gms/internal/cast/zzdc;

    new-instance v0, Lcom/google/android/gms/internal/cast/zzdh;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->RESULT_INTERNAL_ERROR:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzdh;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/cast/zzdc;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
