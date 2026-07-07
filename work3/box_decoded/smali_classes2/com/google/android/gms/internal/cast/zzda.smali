.class final Lcom/google/android/gms/internal/cast/zzda;
.super Lcom/google/android/gms/internal/cast/zzdc;
.source "com.google.android.gms:play-services-cast@@18.1.0"


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzcz;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/cast/zzdc;-><init>(Lcom/google/android/gms/internal/cast/zzcz;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/cast/zzdj;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzdc;->zza(Lcom/google/android/gms/internal/cast/zzdj;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzdj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/cast/zzde;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cast/zzde;-><init>(Lcom/google/android/gms/internal/cast/zzdc;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/cast/zzdj;->zza(Lcom/google/android/gms/internal/cast/zzdl;)V

    return-void
.end method
