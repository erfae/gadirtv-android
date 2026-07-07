.class public final Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;
.super Lcom/google/vr/vrcore/controller/api/ControllerEvent;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public qw:F

.field public qx:F

.field public qy:F

.field public qz:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent$1;

    invoke-direct {v0}, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent$1;-><init>()V

    sput-object v0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;-><init>()V

    .line 3
    iput p1, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qx:F

    .line 4
    iput p2, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qy:F

    .line 5
    iput p3, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qz:F

    .line 6
    iput p4, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qw:F

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;-><init>()V

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final copyFrom(Lcom/google/vr/vrcore/controller/api/ControllerEvent;)V
    .locals 1

    .line 36
    instance-of v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;

    if-eqz v0, :cond_0

    .line 38
    invoke-super {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->copyFrom(Lcom/google/vr/vrcore/controller/api/ControllerEvent;)V

    .line 39
    check-cast p1, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;

    .line 40
    iget v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qx:F

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qx:F

    .line 41
    iget v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qy:F

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qy:F

    .line 42
    iget v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qz:F

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qz:F

    .line 43
    iget p1, p1, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qw:F

    iput p1, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qw:F

    return-void

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot copy ControllerOrientationEvent from non-ControllerOrientationEvent instance."

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

    .line 35
    invoke-super {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->getByteSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public final normalize()V
    .locals 2

    .line 16
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qx:F

    mul-float v0, v0, v0

    iget v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qy:F

    mul-float v1, v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qz:F

    mul-float v1, v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qw:F

    mul-float v1, v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 17
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qx:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qx:F

    .line 18
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qy:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qy:F

    .line 19
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qz:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qz:F

    .line 20
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qw:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qw:F

    return-void
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 29
    invoke-super {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qx:F

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qy:F

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qz:F

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qw:F

    return-void
.end method

.method public final set(Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;)V
    .locals 1

    .line 11
    iget v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qx:F

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qx:F

    .line 12
    iget v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qy:F

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qy:F

    .line 13
    iget v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qz:F

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qz:F

    .line 14
    iget p1, p1, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qw:F

    iput p1, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qw:F

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 23
    invoke-super {p0, p1, p2}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 24
    iget p2, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qx:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 25
    iget p2, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qy:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 26
    iget p2, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qz:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 27
    iget p2, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qw:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
