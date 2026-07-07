.class public Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;
.super Lcom/google/vr/sdk/common/deps/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/vr/vrcore/common/api/IDaydreamManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.vr.vrcore.common.api.IDaydreamManager"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/common/deps/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public deprecatedExitFromVr(Landroid/app/PendingIntent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 56
    invoke-static {v0, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0xa

    .line 57
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;->transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 58
    invoke-static {p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;)Z

    move-result v0

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return v0
.end method

.method public deprecatedLaunchInVr(Landroid/app/PendingIntent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 25
    invoke-static {v0, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x4

    .line 26
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;->transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 27
    invoke-static {p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;)Z

    move-result v0

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return v0
.end method

.method public exitFromVr2(Landroid/os/Bundle;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 94
    invoke-static {v0, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x11

    .line 95
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;->transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 96
    invoke-static {p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;)Z

    move-result v0

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return v0
.end method

.method public handleInsertionIntoHeadset([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 62
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    const/16 p1, 0xb

    .line 63
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    return-void
.end method

.method public handleRemovalFromHeadset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0xc

    .line 66
    invoke-virtual {p0, v1, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    return-void
.end method

.method public launchInVr(Landroid/app/PendingIntent;Landroid/content/ComponentName;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 38
    invoke-static {v0, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 39
    invoke-static {v0, p2}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x7

    .line 40
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;->transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 41
    invoke-static {p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;)Z

    move-result p2

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return p2
.end method

.method public launchVrHome()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x8

    .line 45
    invoke-virtual {p0, v1, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;->transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 46
    invoke-static {v0}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;)Z

    move-result v1

    .line 47
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1
.end method

.method public launchVrTransition(Lcom/google/vr/vrcore/common/api/ITransitionCallbacks;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 50
    invoke-static {v0, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x9

    .line 51
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;->transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 52
    invoke-static {p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;)Z

    move-result v0

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return v0
.end method

.method public launchVrTransition2(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 82
    invoke-static {v0, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0xf

    .line 83
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    return-void
.end method

.method public onExitingFromVr()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0xe

    .line 79
    invoke-virtual {p0, v1, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    return-void
.end method

.method public prepareVr(Landroid/content/ComponentName;Lcom/google/vr/vrcore/common/api/HeadTrackingState;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 17
    invoke-static {v0, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x3

    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;->transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    invoke-virtual {p2, p1}, Lcom/google/vr/vrcore/common/api/HeadTrackingState;->readFromParcel(Landroid/os/Parcel;)V

    .line 22
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return v0
.end method

.method public prepareVr2(Landroid/content/ComponentName;ILandroid/app/PendingIntent;Lcom/google/vr/vrcore/common/api/HeadTrackingState;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 69
    invoke-static {v0, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 70
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    invoke-static {v0, p3}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0xd

    .line 72
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;->transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_0

    .line 75
    invoke-virtual {p4, p1}, Lcom/google/vr/vrcore/common/api/HeadTrackingState;->readFromParcel(Landroid/os/Parcel;)V

    .line 76
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return p2
.end method

.method public prepareVr3(Landroid/os/Bundle;Lcom/google/vr/vrcore/common/api/HeadTrackingState;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 86
    invoke-static {v0, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x10

    .line 87
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;->transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {p2, p1}, Lcom/google/vr/vrcore/common/api/HeadTrackingState;->readFromParcel(Landroid/os/Parcel;)V

    .line 91
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return v0
.end method

.method public registerDaydreamIntent(Landroid/app/PendingIntent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 31
    invoke-static {v0, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x5

    .line 32
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    return-void
.end method

.method public registerListener(Landroid/content/ComponentName;Lcom/google/vr/vrcore/common/api/IDaydreamListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 4
    invoke-static {v0, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 5
    invoke-static {v0, p2}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;->transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;)Z

    move-result p2

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return p2
.end method

.method public unregisterDaydreamIntent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x6

    .line 35
    invoke-virtual {p0, v1, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    return-void
.end method

.method public unregisterListener(Landroid/content/ComponentName;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 11
    invoke-static {v0, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x2

    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;->transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 13
    invoke-static {p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;)Z

    move-result v0

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return v0
.end method
