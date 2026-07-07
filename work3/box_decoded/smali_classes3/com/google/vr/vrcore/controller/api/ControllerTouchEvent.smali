.class public final Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;
.super Lcom/google/vr/vrcore/controller/api/ControllerEvent;
.source "SourceFile"


# static fields
.field public static final ACTION_CANCEL:I = 0x4

.field public static final ACTION_DOWN:I = 0x1

.field public static final ACTION_MOVE:I = 0x2

.field public static final ACTION_NONE:I = 0x0

.field public static final ACTION_UP:I = 0x3

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public action:I

.field public fingerId:I

.field public x:F

.field public y:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent$1;

    invoke-direct {v0}, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent$1;-><init>()V

    sput-object v0, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final copyFrom(Lcom/google/vr/vrcore/controller/api/ControllerEvent;)V
    .locals 1

    .line 19
    instance-of v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;

    if-eqz v0, :cond_0

    .line 21
    invoke-super {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->copyFrom(Lcom/google/vr/vrcore/controller/api/ControllerEvent;)V

    .line 22
    check-cast p1, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;

    .line 23
    iget v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->fingerId:I

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->fingerId:I

    .line 24
    iget v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->action:I

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->action:I

    .line 25
    iget v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->x:F

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->x:F

    .line 26
    iget p1, p1, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->y:F

    iput p1, p0, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->y:F

    return-void

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot copy ControllerTouchEvent from non-ControllerTouchEvent instance."

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

    .line 18
    invoke-super {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->getByteSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 12
    invoke-super {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->fingerId:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->action:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->x:F

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->y:F

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 6
    invoke-super {p0, p1, p2}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7
    iget p2, p0, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->fingerId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget p2, p0, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->action:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget p2, p0, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->x:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 10
    iget p2, p0, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->y:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
