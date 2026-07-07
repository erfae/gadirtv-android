.class public abstract Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;
.super Lcom/google/vr/sdk/common/deps/b;
.source "SourceFile"

# interfaces
.implements Lcom/google/vr/vrcore/common/api/IDaydreamManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/common/api/IDaydreamManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.vr.vrcore.common.api.IDaydreamManager"

.field static final TRANSACTION_deprecatedExitFromVr:I = 0xa

.field static final TRANSACTION_deprecatedLaunchInVr:I = 0x4

.field static final TRANSACTION_exitFromVr2:I = 0x11

.field static final TRANSACTION_handleInsertionIntoHeadset:I = 0xb

.field static final TRANSACTION_handleRemovalFromHeadset:I = 0xc

.field static final TRANSACTION_launchInVr:I = 0x7

.field static final TRANSACTION_launchVrHome:I = 0x8

.field static final TRANSACTION_launchVrTransition:I = 0x9

.field static final TRANSACTION_launchVrTransition2:I = 0xf

.field static final TRANSACTION_onExitingFromVr:I = 0xe

.field static final TRANSACTION_prepareVr:I = 0x3

.field static final TRANSACTION_prepareVr2:I = 0xd

.field static final TRANSACTION_prepareVr3:I = 0x10

.field static final TRANSACTION_registerDaydreamIntent:I = 0x5

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_unregisterDaydreamIntent:I = 0x6

.field static final TRANSACTION_unregisterListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.vr.vrcore.common.api.IDaydreamManager"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/common/deps/b;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/common/api/IDaydreamManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.vr.vrcore.common.api.IDaydreamManager"

    .line 5
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/google/vr/vrcore/common/api/IDaydreamManager;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Lcom/google/vr/vrcore/common/api/IDaydreamManager;

    return-object v0

    .line 8
    :cond_1
    new-instance v0, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 84
    :pswitch_0
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 85
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->exitFromVr2(Landroid/os/Bundle;)Z

    move-result p1

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-static {p3, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Z)V

    goto/16 :goto_0

    .line 77
    :pswitch_1
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 78
    new-instance p2, Lcom/google/vr/vrcore/common/api/HeadTrackingState;

    invoke-direct {p2}, Lcom/google/vr/vrcore/common/api/HeadTrackingState;-><init>()V

    .line 79
    invoke-virtual {p0, p1, p2}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->prepareVr3(Landroid/os/Bundle;Lcom/google/vr/vrcore/common/api/HeadTrackingState;)I

    move-result p1

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    invoke-static {p3, p2}, Lcom/google/vr/sdk/common/deps/c;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_0

    .line 74
    :pswitch_2
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 75
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->launchVrTransition2(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 72
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->onExitingFromVr()V

    goto/16 :goto_0

    .line 63
    :pswitch_4
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 65
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/app/PendingIntent;

    .line 66
    new-instance v0, Lcom/google/vr/vrcore/common/api/HeadTrackingState;

    invoke-direct {v0}, Lcom/google/vr/vrcore/common/api/HeadTrackingState;-><init>()V

    .line 67
    invoke-virtual {p0, p1, p4, p2, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->prepareVr2(Landroid/content/ComponentName;ILandroid/app/PendingIntent;Lcom/google/vr/vrcore/common/api/HeadTrackingState;)I

    move-result p1

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    invoke-static {p3, v0}, Lcom/google/vr/sdk/common/deps/c;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_0

    .line 61
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->handleRemovalFromHeadset()V

    goto/16 :goto_0

    .line 58
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 59
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->handleInsertionIntoHeadset([B)V

    goto/16 :goto_0

    .line 53
    :pswitch_7
    sget-object p1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    .line 54
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->deprecatedExitFromVr(Landroid/app/PendingIntent;)Z

    move-result p1

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-static {p3, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Z)V

    goto/16 :goto_0

    .line 48
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/vr/vrcore/common/api/ITransitionCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/common/api/ITransitionCallbacks;

    move-result-object p1

    .line 49
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->launchVrTransition(Lcom/google/vr/vrcore/common/api/ITransitionCallbacks;)Z

    move-result p1

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    invoke-static {p3, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Z)V

    goto/16 :goto_0

    .line 44
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->launchVrHome()Z

    move-result p1

    .line 45
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 46
    invoke-static {p3, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Z)V

    goto/16 :goto_0

    .line 38
    :pswitch_a
    sget-object p1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    .line 39
    sget-object p4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/content/ComponentName;

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->launchInVr(Landroid/app/PendingIntent;Landroid/content/ComponentName;)Z

    move-result p1

    .line 41
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 42
    invoke-static {p3, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Z)V

    goto :goto_0

    .line 36
    :pswitch_b
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->unregisterDaydreamIntent()V

    goto :goto_0

    .line 33
    :pswitch_c
    sget-object p1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    .line 34
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->registerDaydreamIntent(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 28
    :pswitch_d
    sget-object p1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    .line 29
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->deprecatedLaunchInVr(Landroid/app/PendingIntent;)Z

    move-result p1

    .line 30
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 31
    invoke-static {p3, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Z)V

    goto :goto_0

    .line 21
    :pswitch_e
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 22
    new-instance p2, Lcom/google/vr/vrcore/common/api/HeadTrackingState;

    invoke-direct {p2}, Lcom/google/vr/vrcore/common/api/HeadTrackingState;-><init>()V

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->prepareVr(Landroid/content/ComponentName;Lcom/google/vr/vrcore/common/api/HeadTrackingState;)I

    move-result p1

    .line 24
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 25
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    invoke-static {p3, p2}, Lcom/google/vr/sdk/common/deps/c;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 16
    :pswitch_f
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 17
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->unregisterListener(Landroid/content/ComponentName;)Z

    move-result p1

    .line 18
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 19
    invoke-static {p3, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Z)V

    goto :goto_0

    .line 10
    :pswitch_10
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/common/api/IDaydreamListener;

    move-result-object p2

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->registerListener(Landroid/content/ComponentName;Lcom/google/vr/vrcore/common/api/IDaydreamListener;)Z

    move-result p1

    .line 13
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 14
    invoke-static {p3, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Z)V

    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
