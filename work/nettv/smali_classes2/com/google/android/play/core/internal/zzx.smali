.class public abstract Lcom/google/android/play/core/internal/zzx;
.super Lcom/google/android/play/core/internal/zzl;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/internal/zzy;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionService"

    invoke-direct {p0, v0}, Lcom/google/android/play/core/internal/zzl;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zza(ILandroid/os/Parcel;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionServiceCallback"

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2
    invoke-static {p2, p1}, Lcom/google/android/play/core/internal/zzm;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {p2, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/google/android/play/core/internal/zzz;

    if-eqz v1, :cond_2

    .line 6
    move-object v1, v0

    check-cast v1, Lcom/google/android/play/core/internal/zzz;

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/google/android/play/core/internal/zzz;

    invoke-direct {v1, p2}, Lcom/google/android/play/core/internal/zzz;-><init>(Landroid/os/IBinder;)V

    .line 7
    :goto_0
    invoke-interface {p0, p1, v1}, Lcom/google/android/play/core/internal/zzy;->zzb(Landroid/os/Bundle;Lcom/google/android/play/core/internal/zzz;)V

    goto :goto_2

    .line 8
    :cond_3
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/play/core/internal/zzm;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_4

    goto :goto_1

    .line 10
    :cond_4
    invoke-interface {p2, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 11
    instance-of v1, v0, Lcom/google/android/play/core/internal/zzz;

    if-eqz v1, :cond_5

    .line 12
    move-object v1, v0

    check-cast v1, Lcom/google/android/play/core/internal/zzz;

    goto :goto_1

    :cond_5
    new-instance v1, Lcom/google/android/play/core/internal/zzz;

    invoke-direct {v1, p2}, Lcom/google/android/play/core/internal/zzz;-><init>(Landroid/os/IBinder;)V

    .line 13
    :goto_1
    invoke-interface {p0, p1, v1}, Lcom/google/android/play/core/internal/zzy;->zzc(Landroid/os/Bundle;Lcom/google/android/play/core/internal/zzz;)V

    :goto_2
    const/4 p1, 0x1

    return p1
.end method
