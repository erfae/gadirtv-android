.class public Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;
.super Lcom/google/vr/sdk/common/deps/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/vr/vrcore/common/api/IDaydreamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.vr.vrcore.common.api.IDaydreamListener"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/common/deps/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public applyColorfulFade(IJI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 45
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 47
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0xa

    .line 48
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    return-void
.end method

.method public applyFade(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 14
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    const/4 p1, 0x3

    .line 16
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    return-void
.end method

.method public deprecated_setLensOffsets(FFFF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 32
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 33
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 34
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 35
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeFloat(F)V

    const/16 p1, 0x8

    .line 36
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    return-void
.end method

.method public dumpDebugData()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x5

    .line 22
    invoke-virtual {p0, v1, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    return-void
.end method

.method public getTargetApiVersion()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v1, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;->transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 6
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1
.end method

.method public invokeCloseAction()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x7

    .line 29
    invoke-virtual {p0, v1, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    return-void
.end method

.method public recenterHeadTracking()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x4

    .line 19
    invoke-virtual {p0, v1, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    return-void
.end method

.method public requestStopTracking()Lcom/google/vr/vrcore/common/api/HeadTrackingState;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x2

    .line 9
    invoke-virtual {p0, v1, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;->transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 10
    sget-object v1, Lcom/google/vr/vrcore/common/api/HeadTrackingState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/vr/vrcore/common/api/HeadTrackingState;

    .line 11
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public resumeHeadTracking(Lcom/google/vr/vrcore/common/api/HeadTrackingState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 25
    invoke-static {v0, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x6

    .line 26
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    return-void
.end method

.method public setLensOffset(FFF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 39
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 40
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 41
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeFloat(F)V

    const/16 p1, 0x9

    .line 42
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    return-void
.end method
