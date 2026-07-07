.class public final Lcom/google/android/gms/cast/framework/zzj;
.super Lcom/google/android/gms/internal/cast/zzb;
.source "com.google.android.gms:play-services-cast-framework@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/cast/framework/zzh;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.cast.framework.ICastContext"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/cast/zzb;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 33
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    const/16 p1, 0xb

    .line 35
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/cast/zzb;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zzaf()Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/cast/zzb;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 5
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/cast/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 6
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final zzag()Lcom/google/android/gms/cast/framework/zzt;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x5

    .line 9
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/cast/zzb;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string v2, "com.google.android.gms.cast.framework.ISessionManager"

    .line 13
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 14
    instance-of v3, v2, Lcom/google/android/gms/cast/framework/zzt;

    if-eqz v3, :cond_1

    .line 15
    move-object v1, v2

    check-cast v1, Lcom/google/android/gms/cast/framework/zzt;

    goto :goto_0

    .line 16
    :cond_1
    new-instance v2, Lcom/google/android/gms/cast/framework/zzw;

    invoke-direct {v2, v1}, Lcom/google/android/gms/cast/framework/zzw;-><init>(Landroid/os/IBinder;)V

    move-object v1, v2

    .line 18
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final zzah()Lcom/google/android/gms/cast/framework/zzn;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x6

    .line 21
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/cast/zzb;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string v2, "com.google.android.gms.cast.framework.IDiscoveryManager"

    .line 25
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 26
    instance-of v3, v2, Lcom/google/android/gms/cast/framework/zzn;

    if-eqz v3, :cond_1

    .line 27
    move-object v1, v2

    check-cast v1, Lcom/google/android/gms/cast/framework/zzn;

    goto :goto_0

    .line 28
    :cond_1
    new-instance v2, Lcom/google/android/gms/cast/framework/zzq;

    invoke-direct {v2, v1}, Lcom/google/android/gms/cast/framework/zzq;-><init>(Landroid/os/IBinder;)V

    move-object v1, v2

    .line 30
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final zzy()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0xc

    .line 38
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/cast/zzb;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzd;->zza(Landroid/os/Parcel;)Z

    move-result v1

    .line 40
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1
.end method
