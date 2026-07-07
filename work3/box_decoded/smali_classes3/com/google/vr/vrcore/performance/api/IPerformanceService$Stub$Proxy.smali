.class public Lcom/google/vr/vrcore/performance/api/IPerformanceService$Stub$Proxy;
.super Lcom/google/vr/sdk/common/deps/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/vr/vrcore/performance/api/IPerformanceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/performance/api/IPerformanceService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.vr.vrcore.performance.api.IPerformanceService"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/common/deps/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addTrigger(Landroid/content/ComponentName;Lcom/google/vr/vrcore/performance/api/IThrottlingTriggerCallback;JFI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    invoke-virtual {p0}, Lcom/google/vr/vrcore/performance/api/IPerformanceService$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 15
    invoke-static {v0, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 16
    invoke-static {v0, p2}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 17
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 18
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeFloat(F)V

    .line 19
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x3

    .line 20
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/vrcore/performance/api/IPerformanceService$Stub$Proxy;->transactAndReadExceptionReturnVoid(ILandroid/os/Parcel;)V

    return-void
.end method

.method public getCurrentEstimatedThrottleWarningTime()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lcom/google/vr/vrcore/performance/api/IPerformanceService$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x2

    .line 10
    invoke-virtual {p0, v1, v0}, Lcom/google/vr/vrcore/performance/api/IPerformanceService$Stub$Proxy;->transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 12
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-wide v1
.end method

.method public getCurrentThrottlingRelativeTemperature(Lcom/google/vr/vrcore/performance/api/TimestampedTemperature;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/google/vr/vrcore/performance/api/IPerformanceService$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v1, v0}, Lcom/google/vr/vrcore/performance/api/IPerformanceService$Stub$Proxy;->transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/vr/vrcore/performance/api/TimestampedTemperature;->readFromParcel(Landroid/os/Parcel;)V

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void
.end method

.method public removeAllTriggers(Landroid/content/ComponentName;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    invoke-virtual {p0}, Lcom/google/vr/vrcore/performance/api/IPerformanceService$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 23
    invoke-static {v0, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x4

    .line 24
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/vrcore/performance/api/IPerformanceService$Stub$Proxy;->transactAndReadExceptionReturnVoid(ILandroid/os/Parcel;)V

    return-void
.end method
