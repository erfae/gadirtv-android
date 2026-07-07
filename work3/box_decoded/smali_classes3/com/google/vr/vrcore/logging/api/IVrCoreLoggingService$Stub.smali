.class public abstract Lcom/google/vr/vrcore/logging/api/IVrCoreLoggingService$Stub;
.super Lcom/google/vr/sdk/common/deps/b;
.source "SourceFile"

# interfaces
.implements Lcom/google/vr/vrcore/logging/api/IVrCoreLoggingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/logging/api/IVrCoreLoggingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/vrcore/logging/api/IVrCoreLoggingService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.vr.vrcore.logging.api.IVrCoreLoggingService"

.field static final TRANSACTION_log:I = 0x2

.field static final TRANSACTION_logBatched:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.vr.vrcore.logging.api.IVrCoreLoggingService"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/common/deps/b;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/logging/api/IVrCoreLoggingService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.vr.vrcore.logging.api.IVrCoreLoggingService"

    .line 5
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/google/vr/vrcore/logging/api/IVrCoreLoggingService;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Lcom/google/vr/vrcore/logging/api/IVrCoreLoggingService;

    return-object v0

    .line 8
    :cond_1
    new-instance v0, Lcom/google/vr/vrcore/logging/api/IVrCoreLoggingService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/vr/vrcore/logging/api/IVrCoreLoggingService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p3, 0x2

    if-eq p1, p3, :cond_1

    const/4 p3, 0x3

    if-eq p1, p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 13
    :cond_0
    sget-object p1, Lcom/google/vr/vrcore/logging/api/VREventParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/vr/vrcore/logging/api/VREventParcelable;

    .line 14
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/logging/api/IVrCoreLoggingService$Stub;->logBatched([Lcom/google/vr/vrcore/logging/api/VREventParcelable;)V

    goto :goto_0

    .line 10
    :cond_1
    sget-object p1, Lcom/google/vr/vrcore/logging/api/VREventParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/vr/vrcore/logging/api/VREventParcelable;

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/logging/api/IVrCoreLoggingService$Stub;->log(Lcom/google/vr/vrcore/logging/api/VREventParcelable;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
