.class public final Lcom/google/vr/vrcore/controller/api/ControllerTrackingStatusEvent;
.super Lcom/google/vr/vrcore/controller/api/ControllerEvent;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/vr/vrcore/controller/api/ControllerTrackingStatusEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_NOMINAL:I = 0x2

.field public static final FLAG_OCCLUDED:I = 0x4

.field public static final FLAG_OUT_OF_FOV:I = 0x8

.field public static final FLAG_UNKNOWN:I = 0x1


# instance fields
.field public trackingStatusFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/google/vr/vrcore/controller/api/ControllerTrackingStatusEvent$1;

    invoke-direct {v0}, Lcom/google/vr/vrcore/controller/api/ControllerTrackingStatusEvent$1;-><init>()V

    sput-object v0, Lcom/google/vr/vrcore/controller/api/ControllerTrackingStatusEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerTrackingStatusEvent;->trackingStatusFlags:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerTrackingStatusEvent;->trackingStatusFlags:I

    .line 6
    iput p1, p0, Lcom/google/vr/vrcore/controller/api/ControllerTrackingStatusEvent;->trackingStatusFlags:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerTrackingStatusEvent;->trackingStatusFlags:I

    .line 10
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerTrackingStatusEvent;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final copyFrom(Lcom/google/vr/vrcore/controller/api/ControllerEvent;)V
    .locals 1

    .line 32
    instance-of v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerTrackingStatusEvent;

    if-eqz v0, :cond_0

    .line 34
    invoke-super {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->copyFrom(Lcom/google/vr/vrcore/controller/api/ControllerEvent;)V

    .line 35
    check-cast p1, Lcom/google/vr/vrcore/controller/api/ControllerTrackingStatusEvent;

    .line 36
    iget p1, p1, Lcom/google/vr/vrcore/controller/api/ControllerTrackingStatusEvent;->trackingStatusFlags:I

    iput p1, p0, Lcom/google/vr/vrcore/controller/api/ControllerTrackingStatusEvent;->trackingStatusFlags:I

    return-void

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot copy ControllerTrackingStatusEvent from non-ControllerTrackingStatusEventinstance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getByteSize()I
    .locals 1

    .line 28
    invoke-super {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->getByteSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    add-int/2addr v0, v1

    .line 24
    invoke-super {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerTrackingStatusEvent;->trackingStatusFlags:I

    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 14
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/ControllerTrackingStatusEvent;->getByteSize()I

    move-result v1

    .line 15
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    invoke-super {p0, p1, p2}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 17
    iget p2, p0, Lcom/google/vr/vrcore/controller/api/ControllerTrackingStatusEvent;->trackingStatusFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p1

    sub-int/2addr p1, v0

    if-ne p1, v1, :cond_0

    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Parcelable implemented incorrectly, getByteSize() must return the correct size for each ControllerEvent subclass."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
