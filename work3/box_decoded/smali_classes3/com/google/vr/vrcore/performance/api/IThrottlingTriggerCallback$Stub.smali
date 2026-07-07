.class public abstract Lcom/google/vr/vrcore/performance/api/IThrottlingTriggerCallback$Stub;
.super Lcom/google/vr/sdk/common/deps/b;
.source "SourceFile"

# interfaces
.implements Lcom/google/vr/vrcore/performance/api/IThrottlingTriggerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/performance/api/IThrottlingTriggerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/vrcore/performance/api/IThrottlingTriggerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.vr.vrcore.performance.api.IThrottlingTriggerCallback"

.field static final TRANSACTION_onTriggerActivated:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.vr.vrcore.performance.api.IThrottlingTriggerCallback"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/common/deps/b;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/performance/api/IThrottlingTriggerCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.vr.vrcore.performance.api.IThrottlingTriggerCallback"

    .line 5
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/google/vr/vrcore/performance/api/IThrottlingTriggerCallback;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Lcom/google/vr/vrcore/performance/api/IThrottlingTriggerCallback;

    return-object v0

    .line 8
    :cond_1
    new-instance v0, Lcom/google/vr/vrcore/performance/api/IThrottlingTriggerCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/vr/vrcore/performance/api/IThrottlingTriggerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    .line 10
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 11
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 12
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/vr/vrcore/performance/api/IThrottlingTriggerCallback$Stub;->onTriggerActivated(FJ)V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
