.class public Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final GVR_CONTROLLER_ENABLE_ACCEL:I = 0x8

.field public static final GVR_CONTROLLER_ENABLE_GESTURES:I = 0x10

.field public static final GVR_CONTROLLER_ENABLE_GYRO:I = 0x4

.field public static final GVR_CONTROLLER_ENABLE_ORIENTATION:I = 0x1

.field public static final GVR_CONTROLLER_ENABLE_TOUCH:I = 0x2


# instance fields
.field public enableAccel:Z

.field public enableGestures:Z

.field public enableGyro:Z

.field public enableOrientation:Z

.field public enableTouch:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions$1;

    invoke-direct {v0}, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions$1;-><init>()V

    sput-object v0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;->enableOrientation:Z

    .line 3
    iput-boolean v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;->enableTouch:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 7
    iput-boolean v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;->enableOrientation:Z

    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 9
    iput-boolean v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;->enableTouch:Z

    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    .line 11
    iput-boolean v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;->enableGyro:Z

    :cond_2
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_3

    .line 13
    iput-boolean v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;->enableAccel:Z

    :cond_3
    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_4

    .line 15
    iput-boolean v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;->enableGestures:Z

    :cond_4
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;->enableOrientation:Z

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;->enableGyro:Z

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;->enableAccel:Z

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;->enableTouch:Z

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    iput-boolean v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;->enableGestures:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 33
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;->enableOrientation:Z

    .line 34
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;->enableGyro:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;->enableAccel:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;->enableTouch:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;->enableGestures:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "ori=%b, gyro=%b, accel=%b, touch=%b, gestures=%b"

    .line 35
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 21
    iget-boolean p2, p0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;->enableOrientation:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    iget-boolean p2, p0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;->enableGyro:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    iget-boolean p2, p0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;->enableAccel:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    iget-boolean p2, p0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;->enableTouch:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    iget-boolean p2, p0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;->enableGestures:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
