.class public Lcom/google/android/gms/cast/framework/media/CastMediaOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-cast-framework@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cast/framework/media/CastMediaOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzy:Lcom/google/android/gms/cast/internal/Logger;


# instance fields
.field private final zzpa:Ljava/lang/String;

.field private final zzpb:Ljava/lang/String;

.field private final zzpc:Lcom/google/android/gms/cast/framework/media/zzb;

.field private final zzpd:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

.field private final zzpe:Z

.field private final zzpf:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    const-string v1, "CastMediaOptions"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    .line 53
    new-instance v0, Lcom/google/android/gms/cast/framework/media/zza;

    invoke-direct {v0}, Lcom/google/android/gms/cast/framework/media/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Lcom/google/android/gms/cast/framework/media/NotificationOptions;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->zzpa:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->zzpb:Ljava/lang/String;

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p1, "com.google.android.gms.cast.framework.media.IImagePicker"

    .line 7
    invoke-interface {p3, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    .line 8
    instance-of p2, p1, Lcom/google/android/gms/cast/framework/media/zzb;

    if-eqz p2, :cond_1

    .line 9
    check-cast p1, Lcom/google/android/gms/cast/framework/media/zzb;

    goto :goto_0

    .line 10
    :cond_1
    new-instance p1, Lcom/google/android/gms/cast/framework/media/zzd;

    invoke-direct {p1, p3}, Lcom/google/android/gms/cast/framework/media/zzd;-><init>(Landroid/os/IBinder;)V

    .line 11
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->zzpc:Lcom/google/android/gms/cast/framework/media/zzb;

    .line 12
    iput-object p4, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->zzpd:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 13
    iput-boolean p5, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->zzpe:Z

    .line 14
    iput-boolean p6, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->zzpf:Z

    return-void
.end method


# virtual methods
.method public getExpandedControllerActivityClassName()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->zzpb:Ljava/lang/String;

    return-object v0
.end method

.method public getImagePicker()Lcom/google/android/gms/cast/framework/media/ImagePicker;
    .locals 5

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->zzpc:Lcom/google/android/gms/cast/framework/media/zzb;

    if-eqz v0, :cond_0

    .line 22
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/media/zzb;->zzbr()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/framework/media/ImagePicker;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 24
    sget-object v1, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "getWrappedClientObject"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/google/android/gms/cast/framework/media/zzb;

    .line 25
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Unable to call %s on %s."

    .line 26
    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaIntentReceiverClassName()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->zzpa:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaSessionEnabled()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->zzpf:Z

    return v0
.end method

.method public getNotificationOptions()Lcom/google/android/gms/cast/framework/media/NotificationOptions;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->zzpd:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 29
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getMediaIntentReceiverClassName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 32
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getExpandedControllerActivityClassName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 35
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 38
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->zzpc:Lcom/google/android/gms/cast/framework/media/zzb;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/google/android/gms/cast/framework/media/zzb;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    const/4 v2, 0x4

    .line 40
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x5

    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getNotificationOptions()Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    move-result-object v2

    .line 43
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x6

    .line 45
    iget-boolean v1, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->zzpe:Z

    .line 46
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/4 p2, 0x7

    .line 48
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getMediaSessionEnabled()Z

    move-result v1

    .line 49
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 50
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzbq()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->zzpe:Z

    return v0
.end method
