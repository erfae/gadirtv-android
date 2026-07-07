.class public abstract Lcom/google/vr/vrcore/common/api/IVrCoreSdkService$Stub;
.super Lcom/google/vr/sdk/common/deps/b;
.source "SourceFile"

# interfaces
.implements Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/vrcore/common/api/IVrCoreSdkService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.vr.vrcore.common.api.IVrCoreSdkService"

.field static final TRANSACTION_getDaydreamManager:I = 0x2

.field static final TRANSACTION_getLoggingService:I = 0x4

.field static final TRANSACTION_initialize:I = 0x1

.field static final TRANSACTION_setClientOptions:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.vr.vrcore.common.api.IVrCoreSdkService"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/common/deps/b;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.vr.vrcore.common.api.IVrCoreSdkService"

    .line 5
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;

    return-object v0

    .line 8
    :cond_1
    new-instance v0, Lcom/google/vr/vrcore/common/api/IVrCoreSdkService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/vr/vrcore/common/api/IVrCoreSdkService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
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

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IVrCoreSdkService$Stub;->getLoggingService()Lcom/google/vr/vrcore/logging/api/IVrCoreLoggingService;

    move-result-object p1

    .line 26
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 27
    invoke-static {p3, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_0

    .line 19
    :cond_1
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 20
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/google/vr/vrcore/common/api/IVrCoreSdkService$Stub;->setClientOptions(Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result p1

    .line 22
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 23
    invoke-static {p3, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Z)V

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IVrCoreSdkService$Stub;->getDaydreamManager()Lcom/google/vr/vrcore/common/api/IDaydreamManager;

    move-result-object p1

    .line 16
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 17
    invoke-static {p3, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/common/api/IVrCoreSdkService$Stub;->initialize(I)Z

    move-result p1

    .line 12
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 13
    invoke-static {p3, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Z)V

    :goto_0
    return p4
.end method
