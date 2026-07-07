.class public abstract Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub;
.super Lcom/google/vr/sdk/common/deps/b;
.source "SourceFile"

# interfaces
.implements Lcom/google/vr/vrcore/common/api/IDaydreamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/common/api/IDaydreamListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.vr.vrcore.common.api.IDaydreamListener"

.field static final TRANSACTION_applyColorfulFade:I = 0xa

.field static final TRANSACTION_applyFade:I = 0x3

.field static final TRANSACTION_deprecated_setLensOffsets:I = 0x8

.field static final TRANSACTION_dumpDebugData:I = 0x5

.field static final TRANSACTION_getTargetApiVersion:I = 0x1

.field static final TRANSACTION_invokeCloseAction:I = 0x7

.field static final TRANSACTION_recenterHeadTracking:I = 0x4

.field static final TRANSACTION_requestStopTracking:I = 0x2

.field static final TRANSACTION_resumeHeadTracking:I = 0x6

.field static final TRANSACTION_setLensOffset:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.vr.vrcore.common.api.IDaydreamListener"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/common/deps/b;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/common/api/IDaydreamListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.vr.vrcore.common.api.IDaydreamListener"

    .line 5
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/google/vr/vrcore/common/api/IDaydreamListener;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Lcom/google/vr/vrcore/common/api/IDaydreamListener;

    return-object v0

    .line 8
    :cond_1
    new-instance v0, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 42
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 43
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 44
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 45
    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub;->applyColorfulFade(IJI)V

    goto :goto_0

    .line 37
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 38
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p3

    .line 39
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p2

    .line 40
    invoke-virtual {p0, p1, p3, p2}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub;->setLensOffset(FFF)V

    goto :goto_0

    .line 31
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 32
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p3

    .line 33
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p4

    .line 34
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p2

    .line 35
    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub;->deprecated_setLensOffsets(FFFF)V

    goto :goto_0

    .line 29
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub;->invokeCloseAction()V

    goto :goto_0

    .line 26
    :pswitch_4
    sget-object p1, Lcom/google/vr/vrcore/common/api/HeadTrackingState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/vr/sdk/common/deps/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/vr/vrcore/common/api/HeadTrackingState;

    .line 27
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub;->resumeHeadTracking(Lcom/google/vr/vrcore/common/api/HeadTrackingState;)V

    goto :goto_0

    .line 24
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub;->dumpDebugData()V

    goto :goto_0

    .line 22
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub;->recenterHeadTracking()V

    goto :goto_0

    .line 18
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 19
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p2

    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub;->applyFade(IJ)V

    goto :goto_0

    .line 14
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub;->requestStopTracking()Lcom/google/vr/vrcore/common/api/HeadTrackingState;

    move-result-object p1

    .line 15
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 16
    invoke-static {p3, p1}, Lcom/google/vr/sdk/common/deps/c;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 10
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub;->getTargetApiVersion()I

    move-result p1

    .line 11
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 12
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
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
