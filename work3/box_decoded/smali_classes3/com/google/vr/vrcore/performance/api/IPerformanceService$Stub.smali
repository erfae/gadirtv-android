.class public abstract Lcom/google/vr/vrcore/performance/api/IPerformanceService$Stub;
.super Lcom/google/vr/sdk/common/deps/b;
.source "SourceFile"

# interfaces
.implements Lcom/google/vr/vrcore/performance/api/IPerformanceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/performance/api/IPerformanceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/vrcore/performance/api/IPerformanceService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.vr.vrcore.performance.api.IPerformanceService"

.field static final TRANSACTION_addTrigger:I = 0x3

.field static final TRANSACTION_getCurrentEstimatedThrottleWarningTime:I = 0x2

.field static final TRANSACTION_getCurrentThrottlingRelativeTemperature:I = 0x1

.field static final TRANSACTION_removeAllTriggers:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.vr.vrcore.performance.api.IPerformanceService"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/common/deps/b;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/performance/api/IPerformanceService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.vr.vrcore.performance.api.IPerformanceService"

    .line 5
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/google/vr/vrcore/performance/api/IPerformanceService;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Lcom/google/vr/vrcore/performance/api/IPerformanceService;

    return-object v0

    .line 8
    :cond_1
    new-instance v0, Lcom/google/vr/vrcore/performance/api/IPerformanceService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/vr/vrcore/performance/api/IPerformanceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x1

    if-eq p1, p4, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 27
    :cond_0
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 28
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/performance/api/IPerformanceService$Stub;->removeAllTriggers(Landroid/content/ComponentName;)V

    .line 29
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 19
    :cond_1
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/content/ComponentName;

    .line 20
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/vr/vrcore/performance/api/IThrottlingTriggerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/performance/api/IThrottlingTriggerCallback;

    move-result-object v2

    .line 21
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 22
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object v0, p0

    .line 24
    invoke-virtual/range {v0 .. v6}, Lcom/google/vr/vrcore/performance/api/IPerformanceService$Stub;->addTrigger(Landroid/content/ComponentName;Lcom/google/vr/vrcore/performance/api/IThrottlingTriggerCallback;JFI)V

    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p0}, Lcom/google/vr/vrcore/performance/api/IPerformanceService$Stub;->getCurrentEstimatedThrottleWarningTime()J

    move-result-wide p1

    .line 16
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 17
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 10
    :cond_3
    new-instance p1, Lcom/google/vr/vrcore/performance/api/TimestampedTemperature;

    invoke-direct {p1}, Lcom/google/vr/vrcore/performance/api/TimestampedTemperature;-><init>()V

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/performance/api/IPerformanceService$Stub;->getCurrentThrottlingRelativeTemperature(Lcom/google/vr/vrcore/performance/api/TimestampedTemperature;)V

    .line 12
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 13
    invoke-static {p3, p1}, Lcom/google/vr/sdk/common/deps/c;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    :goto_0
    return p4
.end method
