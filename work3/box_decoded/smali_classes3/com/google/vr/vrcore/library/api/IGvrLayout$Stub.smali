.class public abstract Lcom/google/vr/vrcore/library/api/IGvrLayout$Stub;
.super Lcom/google/vr/sdk/common/deps/b;
.source "SourceFile"

# interfaces
.implements Lcom/google/vr/vrcore/library/api/IGvrLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/library/api/IGvrLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/vrcore/library/api/IGvrLayout$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.vr.vrcore.library.api.IGvrLayout"

.field static final TRANSACTION_enableAsyncReprojection:I = 0x9

.field static final TRANSACTION_enableCardboardTriggerEmulation:I = 0xa

.field static final TRANSACTION_getNativeGvrContext:I = 0x2

.field static final TRANSACTION_getRootView:I = 0x3

.field static final TRANSACTION_getUiLayout:I = 0x4

.field static final TRANSACTION_onBackPressed:I = 0xc

.field static final TRANSACTION_onPause:I = 0x5

.field static final TRANSACTION_onResume:I = 0x6

.field static final TRANSACTION_setOnDonNotNeededListener:I = 0xe

.field static final TRANSACTION_setPresentationView:I = 0x8

.field static final TRANSACTION_setReentryIntent:I = 0xd

.field static final TRANSACTION_setStereoModeEnabled:I = 0xb

.field static final TRANSACTION_shutdown:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.vr.vrcore.library.api.IGvrLayout"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/common/deps/b;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/library/api/IGvrLayout;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.vr.vrcore.library.api.IGvrLayout"

    .line 5
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/google/vr/vrcore/library/api/IGvrLayout;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Lcom/google/vr/vrcore/library/api/IGvrLayout;

    return-object v0

    .line 8
    :cond_1
    new-instance v0, Lcom/google/vr/vrcore/library/api/IGvrLayout$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/vr/vrcore/library/api/IGvrLayout$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 56
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/vr/vrcore/library/api/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/library/api/IObjectWrapper;

    move-result-object p1

    .line 57
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/library/api/IGvrLayout$Stub;->setOnDonNotNeededListener(Lcom/google/vr/vrcore/library/api/IObjectWrapper;)Z

    move-result p1

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-static {p3, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Z)V

    goto/16 :goto_0

    .line 52
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/vr/vrcore/library/api/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/library/api/IObjectWrapper;

    move-result-object p1

    .line 53
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/library/api/IGvrLayout$Stub;->setReentryIntent(Lcom/google/vr/vrcore/library/api/IObjectWrapper;)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 49
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/vr/vrcore/library/api/IGvrLayout$Stub;->onBackPressed()V

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 45
    :pswitch_3
    invoke-static {p2}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;)Z

    move-result p1

    .line 46
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/library/api/IGvrLayout$Stub;->setStereoModeEnabled(Z)V

    .line 47
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 40
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/vr/vrcore/library/api/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/library/api/IObjectWrapper;

    move-result-object p1

    .line 41
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/library/api/IGvrLayout$Stub;->enableCardboardTriggerEmulation(Lcom/google/vr/vrcore/library/api/IObjectWrapper;)Z

    move-result p1

    .line 42
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 43
    invoke-static {p3, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Z)V

    goto :goto_0

    .line 35
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 36
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/library/api/IGvrLayout$Stub;->enableAsyncReprojection(I)Z

    move-result p1

    .line 37
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 38
    invoke-static {p3, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Z)V

    goto :goto_0

    .line 31
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/vr/vrcore/library/api/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/library/api/IObjectWrapper;

    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/library/api/IGvrLayout$Stub;->setPresentationView(Lcom/google/vr/vrcore/library/api/IObjectWrapper;)V

    .line 33
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 28
    :pswitch_7
    invoke-virtual {p0}, Lcom/google/vr/vrcore/library/api/IGvrLayout$Stub;->shutdown()V

    .line 29
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 25
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/vr/vrcore/library/api/IGvrLayout$Stub;->onResume()V

    .line 26
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 22
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/vr/vrcore/library/api/IGvrLayout$Stub;->onPause()V

    .line 23
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 18
    :pswitch_a
    invoke-virtual {p0}, Lcom/google/vr/vrcore/library/api/IGvrLayout$Stub;->getUiLayout()Lcom/google/vr/vrcore/library/api/IGvrUiLayout;

    move-result-object p1

    .line 19
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 20
    invoke-static {p3, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_0

    .line 14
    :pswitch_b
    invoke-virtual {p0}, Lcom/google/vr/vrcore/library/api/IGvrLayout$Stub;->getRootView()Lcom/google/vr/vrcore/library/api/IObjectWrapper;

    move-result-object p1

    .line 15
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 16
    invoke-static {p3, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_0

    .line 10
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/vr/vrcore/library/api/IGvrLayout$Stub;->getNativeGvrContext()J

    move-result-wide p1

    .line 11
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 12
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
