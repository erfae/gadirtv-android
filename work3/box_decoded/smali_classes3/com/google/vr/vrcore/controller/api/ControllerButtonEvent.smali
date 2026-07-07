.class public final Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;
.super Lcom/google/vr/vrcore/controller/api/ControllerEvent;
.source "SourceFile"


# static fields
.field public static final ALL_BUTTONS:[I

.field public static final BUTTON_APP:I = 0x3

.field public static final BUTTON_CLICK:I = 0x1

.field public static final BUTTON_COUNT:I = 0x9

.field public static final BUTTON_GRIP:I = 0x8

.field public static final BUTTON_HOME:I = 0x2

.field public static final BUTTON_NONE:I = 0x0

.field public static final BUTTON_TRIGGER:I = 0x7

.field public static final BUTTON_VOLUME_DOWN:I = 0x6

.field public static final BUTTON_VOLUME_UP:I = 0x5

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public button:I

.field public down:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 32
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->ALL_BUTTONS:[I

    .line 33
    new-instance v0, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent$1;

    invoke-direct {v0}, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent$1;-><init>()V

    sput-object v0, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x5
        0x6
    .end array-data
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
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public static buttonToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/16 v0, 0x1d

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "[Unknown button: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string p0, "BUTTON_GRIP"

    return-object p0

    :pswitch_2
    const-string p0, "BUTTON_TRIGGER"

    return-object p0

    :pswitch_3
    const-string p0, "BUTTON_VOLUME_DOWN"

    return-object p0

    :pswitch_4
    const-string p0, "BUTTON_VOLUME_UP"

    return-object p0

    :pswitch_5
    const-string p0, "BUTTON_APP"

    return-object p0

    :pswitch_6
    const-string p0, "BUTTON_HOME"

    return-object p0

    :pswitch_7
    const-string p0, "BUTTON_CLICK"

    return-object p0

    :pswitch_8
    const-string p0, "BUTTON_NONE"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final copyFrom(Lcom/google/vr/vrcore/controller/api/ControllerEvent;)V
    .locals 1

    .line 25
    instance-of v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;

    if-eqz v0, :cond_0

    .line 27
    invoke-super {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->copyFrom(Lcom/google/vr/vrcore/controller/api/ControllerEvent;)V

    .line 28
    check-cast p1, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;

    .line 29
    iget v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->button:I

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->button:I

    .line 30
    iget-boolean p1, p1, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->down:Z

    iput-boolean p1, p0, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->down:Z

    return-void

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot copy ControllerButtonEvent from non-ControllerButtonEvent instance."

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

    .line 24
    invoke-super {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->getByteSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 10
    invoke-super {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->button:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->down:Z

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 6
    invoke-super {p0, p1, p2}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7
    iget p2, p0, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->button:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget-boolean p2, p0, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->down:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
