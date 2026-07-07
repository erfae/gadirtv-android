.class public abstract Lcom/google/vr/vrcore/controller/api/IControllerService$Stub;
.super Lcom/google/vr/sdk/common/deps/b;
.source "SourceFile"

# interfaces
.implements Lcom/google/vr/vrcore/controller/api/IControllerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/controller/api/IControllerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/vrcore/controller/api/IControllerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.vr.vrcore.controller.api.IControllerService"

.field static final TRANSACTION_deprecatedOnHeadTrackingRecentered:I = 0x7

.field static final TRANSACTION_getMaintenanceService:I = 0xc

.field static final TRANSACTION_getNumberOfControllers:I = 0xa

.field static final TRANSACTION_initialize:I = 0x1

.field static final TRANSACTION_registerListener:I = 0x5

.field static final TRANSACTION_registerServiceListener:I = 0x8

.field static final TRANSACTION_request:I = 0xb

.field static final TRANSACTION_unregisterListener:I = 0x6

.field static final TRANSACTION_unregisterServiceListener:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.vr.vrcore.controller.api.IControllerService"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/common/deps/b;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/controller/api/IControllerService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.vr.vrcore.controller.api.IControllerService"

    .line 5
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/google/vr/vrcore/controller/api/IControllerService;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Lcom/google/vr/vrcore/controller/api/IControllerService;

    return-object v0

    .line 8
    :cond_1
    new-instance v0, Lcom/google/vr/vrcore/controller/api/IControllerService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/vr/vrcore/controller/api/IControllerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    if-eq p1, p4, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 48
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/IControllerService$Stub;->getMaintenanceService()Landroid/os/IBinder;

    move-result-object p1

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 43
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 44
    sget-object v0, Lcom/google/vr/vrcore/controller/api/ControllerRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/vr/vrcore/controller/api/ControllerRequest;

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/google/vr/vrcore/controller/api/IControllerService$Stub;->request(ILcom/google/vr/vrcore/controller/api/ControllerRequest;)V

    .line 46
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 39
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/IControllerService$Stub;->getNumberOfControllers()I

    move-result p1

    .line 40
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 41
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 34
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/vr/vrcore/controller/api/IControllerServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/controller/api/IControllerServiceListener;

    move-result-object p1

    .line 35
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/controller/api/IControllerService$Stub;->unregisterServiceListener(Lcom/google/vr/vrcore/controller/api/IControllerServiceListener;)Z

    move-result p1

    .line 36
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 37
    invoke-static {p3, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Z)V

    goto :goto_0

    .line 29
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/vr/vrcore/controller/api/IControllerServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/controller/api/IControllerServiceListener;

    move-result-object p1

    .line 30
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/controller/api/IControllerService$Stub;->registerServiceListener(Lcom/google/vr/vrcore/controller/api/IControllerServiceListener;)Z

    move-result p1

    .line 31
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 32
    invoke-static {p3, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Z)V

    goto :goto_0

    .line 27
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/IControllerService$Stub;->deprecatedOnHeadTrackingRecentered()V

    goto :goto_0

    .line 22
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/controller/api/IControllerService$Stub;->unregisterListener(Ljava/lang/String;)Z

    move-result p1

    .line 24
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 25
    invoke-static {p3, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Z)V

    goto :goto_0

    .line 15
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/vr/vrcore/controller/api/IControllerListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/controller/api/IControllerListener;

    move-result-object p2

    .line 18
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/vr/vrcore/controller/api/IControllerService$Stub;->registerListener(ILjava/lang/String;Lcom/google/vr/vrcore/controller/api/IControllerListener;)Z

    move-result p1

    .line 19
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 20
    invoke-static {p3, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Z)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/controller/api/IControllerService$Stub;->initialize(I)I

    move-result p1

    .line 12
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 13
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return p4

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
