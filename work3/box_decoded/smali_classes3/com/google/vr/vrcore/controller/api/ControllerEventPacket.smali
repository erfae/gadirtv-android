.class public Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;",
            ">;"
        }
    .end annotation
.end field

.field protected static final MAX_EVENTS:I = 0x10

.field private static final SERIALIZED_FORMAT_VERSION:I = 0x1

.field private static pool:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;",
            ">;"
        }
    .end annotation
.end field

.field private static poolLock:Ljava/lang/Object;


# instance fields
.field private accelEventCount:I

.field private accelEvents:[Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;

.field private buttonEventCount:I

.field private buttonEvents:[Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;

.field private gyroEventCount:I

.field private gyroEvents:[Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;

.field private orientationEventCount:I

.field private orientationEvents:[Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;

.field private touchEventCount:I

.field private touchEvents:[Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 180
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->pool:Ljava/util/ArrayDeque;

    .line 181
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->poolLock:Ljava/lang/Object;

    .line 182
    new-instance v0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket$1;

    invoke-direct {v0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket$1;-><init>()V

    sput-object v0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;

    .line 2
    iput-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->accelEvents:[Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;

    new-array v1, v0, [Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;

    .line 3
    iput-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEvents:[Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;

    new-array v1, v0, [Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;

    .line 4
    iput-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->gyroEvents:[Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;

    new-array v1, v0, [Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;

    .line 5
    iput-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->orientationEvents:[Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;

    new-array v1, v0, [Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;

    .line 6
    iput-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->touchEvents:[Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 8
    iget-object v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->accelEvents:[Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;

    new-instance v3, Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;

    invoke-direct {v3}, Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;-><init>()V

    aput-object v3, v2, v1

    .line 9
    iget-object v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEvents:[Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;

    new-instance v3, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;

    invoke-direct {v3}, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;-><init>()V

    aput-object v3, v2, v1

    .line 10
    iget-object v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->gyroEvents:[Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;

    new-instance v3, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;

    invoke-direct {v3}, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;-><init>()V

    aput-object v3, v2, v1

    .line 11
    iget-object v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->orientationEvents:[Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;

    new-instance v3, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;

    invoke-direct {v3}, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;-><init>()V

    aput-object v3, v2, v1

    .line 12
    iget-object v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->touchEvents:[Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;

    new-instance v3, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;

    invoke-direct {v3}, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->clear()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;-><init>()V

    .line 17
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public static obtain()Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;
    .locals 2

    .line 97
    sget-object v0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->poolLock:Ljava/lang/Object;

    monitor-enter v0

    .line 98
    :try_start_0
    sget-object v1, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->pool:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;

    invoke-direct {v1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;-><init>()V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->pool:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 99
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static setControllerIndex(II[Lcom/google/vr/vrcore/controller/api/ControllerEvent;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 177
    aget-object v1, p2, v0

    iput p0, v1, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->controllerId:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addAccelEvent()Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;
    .locals 3

    .line 82
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->accelEventCount:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->accelEvents:[Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->accelEventCount:I

    aget-object v0, v1, v0

    return-object v0

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ControllerEventPacket capacity exceeded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addButtonEvent()Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;
    .locals 3

    .line 85
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEventCount:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEvents:[Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEventCount:I

    aget-object v0, v1, v0

    return-object v0

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ControllerEventPacket capacity exceeded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addGyroEvent()Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;
    .locals 3

    .line 88
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->gyroEventCount:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->gyroEvents:[Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->gyroEventCount:I

    aget-object v0, v1, v0

    return-object v0

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ControllerEventPacket capacity exceeded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addOrientationEvent()Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;
    .locals 3

    .line 91
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->orientationEventCount:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->orientationEvents:[Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->orientationEventCount:I

    aget-object v0, v1, v0

    return-object v0

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ControllerEventPacket capacity exceeded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addTouchEvent()Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;
    .locals 3

    .line 94
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->touchEventCount:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->touchEvents:[Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->touchEventCount:I

    aget-object v0, v1, v0

    return-object v0

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ControllerEventPacket capacity exceeded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected calculateParcelByteLength()I
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x18

    const/4 v2, 0x0

    .line 108
    :goto_0
    iget v3, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->accelEventCount:I

    if-ge v2, v3, :cond_0

    .line 109
    iget-object v3, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->accelEvents:[Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;->getByteSize()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 111
    :goto_1
    iget v3, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEventCount:I

    if-ge v2, v3, :cond_1

    .line 112
    iget-object v3, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEvents:[Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->getByteSize()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 114
    :goto_2
    iget v3, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->gyroEventCount:I

    if-ge v2, v3, :cond_2

    .line 115
    iget-object v3, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->gyroEvents:[Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;->getByteSize()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 117
    :goto_3
    iget v3, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->orientationEventCount:I

    if-ge v2, v3, :cond_3

    .line 118
    iget-object v3, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->orientationEvents:[Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->getByteSize()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 120
    :cond_3
    :goto_4
    iget v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->touchEventCount:I

    if-ge v0, v2, :cond_4

    .line 121
    iget-object v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->touchEvents:[Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->getByteSize()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    return v1
.end method

.method protected checkIsValidEventCount(I)V
    .locals 3

    if-ltz p1, :cond_0

    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    return-void

    .line 174
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid event count: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->accelEventCount:I

    .line 33
    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEventCount:I

    .line 34
    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->gyroEventCount:I

    .line 35
    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->orientationEventCount:I

    .line 36
    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->touchEventCount:I

    return-void
.end method

.method public copyFrom(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;)V
    .locals 3

    .line 19
    iget v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->accelEventCount:I

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->accelEventCount:I

    .line 20
    iget v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEventCount:I

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEventCount:I

    .line 21
    iget v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->gyroEventCount:I

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->gyroEventCount:I

    .line 22
    iget v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->orientationEventCount:I

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->orientationEventCount:I

    .line 23
    iget v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->touchEventCount:I

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->touchEventCount:I

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 25
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->accelEvents:[Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->accelEvents:[Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;->copyFrom(Lcom/google/vr/vrcore/controller/api/ControllerEvent;)V

    .line 26
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEvents:[Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEvents:[Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->copyFrom(Lcom/google/vr/vrcore/controller/api/ControllerEvent;)V

    .line 27
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->gyroEvents:[Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->gyroEvents:[Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;->copyFrom(Lcom/google/vr/vrcore/controller/api/ControllerEvent;)V

    .line 28
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->orientationEvents:[Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->orientationEvents:[Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->copyFrom(Lcom/google/vr/vrcore/controller/api/ControllerEvent;)V

    .line 29
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->touchEvents:[Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->touchEvents:[Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->copyFrom(Lcom/google/vr/vrcore/controller/api/ControllerEvent;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccelEvent(I)Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;
    .locals 1

    if-ltz p1, :cond_0

    .line 67
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->accelEventCount:I

    if-ge p1, v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->accelEvents:[Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;

    aget-object p1, v0, p1

    return-object p1

    .line 68
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getAccelEventCount()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->accelEventCount:I

    return v0
.end method

.method public getButtonEvent(I)Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;
    .locals 1

    if-ltz p1, :cond_0

    .line 70
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEventCount:I

    if-ge p1, v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEvents:[Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;

    aget-object p1, v0, p1

    return-object p1

    .line 71
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getButtonEventCount()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEventCount:I

    return v0
.end method

.method public getGyroEvent(I)Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;
    .locals 1

    if-ltz p1, :cond_0

    .line 73
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->gyroEventCount:I

    if-ge p1, v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->gyroEvents:[Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;

    aget-object p1, v0, p1

    return-object p1

    .line 74
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getGyroEventCount()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->gyroEventCount:I

    return v0
.end method

.method public getOrientationEvent(I)Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;
    .locals 1

    if-ltz p1, :cond_0

    .line 76
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->orientationEventCount:I

    if-ge p1, v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->orientationEvents:[Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;

    aget-object p1, v0, p1

    return-object p1

    .line 77
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getOrientationEventCount()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->orientationEventCount:I

    return v0
.end method

.method public getTouchEvent(I)Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;
    .locals 1

    if-ltz p1, :cond_0

    .line 79
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->touchEventCount:I

    if-ge p1, v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->touchEvents:[Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;

    aget-object p1, v0, p1

    return-object p1

    .line 80
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getTouchEventCount()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->touchEventCount:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->accelEventCount:I

    .line 148
    invoke-virtual {p0, v0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->checkIsValidEventCount(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 149
    :goto_0
    iget v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->accelEventCount:I

    if-ge v1, v2, :cond_0

    .line 150
    iget-object v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->accelEvents:[Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;->readFromParcel(Landroid/os/Parcel;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEventCount:I

    .line 153
    invoke-virtual {p0, v1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->checkIsValidEventCount(I)V

    const/4 v1, 0x0

    .line 154
    :goto_1
    iget v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEventCount:I

    if-ge v1, v2, :cond_1

    .line 155
    iget-object v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEvents:[Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->readFromParcel(Landroid/os/Parcel;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 157
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->gyroEventCount:I

    .line 158
    invoke-virtual {p0, v1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->checkIsValidEventCount(I)V

    const/4 v1, 0x0

    .line 159
    :goto_2
    iget v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->gyroEventCount:I

    if-ge v1, v2, :cond_2

    .line 160
    iget-object v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->gyroEvents:[Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;->readFromParcel(Landroid/os/Parcel;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 162
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->orientationEventCount:I

    .line 163
    invoke-virtual {p0, v1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->checkIsValidEventCount(I)V

    const/4 v1, 0x0

    .line 164
    :goto_3
    iget v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->orientationEventCount:I

    if-ge v1, v2, :cond_3

    .line 165
    iget-object v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->orientationEvents:[Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->readFromParcel(Landroid/os/Parcel;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 167
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->touchEventCount:I

    .line 168
    invoke-virtual {p0, v1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->checkIsValidEventCount(I)V

    .line 169
    :goto_4
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->touchEventCount:I

    if-ge v0, v1, :cond_4

    .line 170
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->touchEvents:[Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->readFromParcel(Landroid/os/Parcel;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method public recycle()V
    .locals 2

    .line 100
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->clear()V

    .line 101
    sget-object v0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->poolLock:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_0
    sget-object v1, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->pool:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p0}, Ljava/util/ArrayDeque;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    sget-object v1, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->pool:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setEventsControllerIndex(I)V
    .locals 2

    .line 56
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->accelEventCount:I

    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->accelEvents:[Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;

    invoke-static {p1, v0, v1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->setControllerIndex(II[Lcom/google/vr/vrcore/controller/api/ControllerEvent;)V

    .line 57
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEventCount:I

    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEvents:[Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;

    invoke-static {p1, v0, v1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->setControllerIndex(II[Lcom/google/vr/vrcore/controller/api/ControllerEvent;)V

    .line 58
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->gyroEventCount:I

    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->gyroEvents:[Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;

    invoke-static {p1, v0, v1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->setControllerIndex(II[Lcom/google/vr/vrcore/controller/api/ControllerEvent;)V

    .line 59
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->orientationEventCount:I

    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->orientationEvents:[Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;

    invoke-static {p1, v0, v1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->setControllerIndex(II[Lcom/google/vr/vrcore/controller/api/ControllerEvent;)V

    .line 60
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->touchEventCount:I

    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->touchEvents:[Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;

    invoke-static {p1, v0, v1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->setControllerIndex(II[Lcom/google/vr/vrcore/controller/api/ControllerEvent;)V

    return-void
.end method

.method public toCompatibilityMode()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 40
    :goto_0
    iget v4, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEventCount:I

    const/4 v5, 0x1

    if-ge v1, v4, :cond_2

    .line 41
    iget-object v4, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEvents:[Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->button:I

    const/4 v6, 0x7

    if-eq v4, v6, :cond_0

    iget-object v4, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEvents:[Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->button:I

    const/16 v6, 0x8

    if-ne v4, v6, :cond_1

    .line 43
    :cond_0
    iget-object v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEvents:[Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->down:Z

    or-int/2addr v3, v2

    const/4 v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_5

    const/4 v1, 0x0

    .line 46
    :goto_1
    iget v4, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEventCount:I

    if-ge v1, v4, :cond_4

    .line 47
    iget-object v4, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEvents:[Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->button:I

    if-ne v4, v5, :cond_3

    .line 48
    iget-object v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEvents:[Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;

    aget-object v2, v2, v1

    iget-boolean v4, v2, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->down:Z

    or-int/2addr v4, v3

    iput-boolean v4, v2, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->down:Z

    const/4 v2, 0x0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    .line 52
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->addButtonEvent()Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;

    move-result-object v0

    .line 53
    iput v5, v0, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->button:I

    .line 54
    iput-boolean v3, v0, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->down:Z

    :cond_5
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v0, 0x1

    .line 124
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->accelEventCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 126
    :goto_0
    iget v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->accelEventCount:I

    if-ge v1, v2, :cond_0

    .line 127
    iget-object v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->accelEvents:[Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :cond_0
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEventCount:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    .line 130
    :goto_1
    iget v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEventCount:I

    if-ge v1, v2, :cond_1

    .line 131
    iget-object v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEvents:[Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 133
    :cond_1
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->gyroEventCount:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    .line 134
    :goto_2
    iget v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->gyroEventCount:I

    if-ge v1, v2, :cond_2

    .line 135
    iget-object v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->gyroEvents:[Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 137
    :cond_2
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->orientationEventCount:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    .line 138
    :goto_3
    iget v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->orientationEventCount:I

    if-ge v1, v2, :cond_3

    .line 139
    iget-object v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->orientationEvents:[Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 141
    :cond_3
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->touchEventCount:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    :goto_4
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->touchEventCount:I

    if-ge v0, v1, :cond_4

    .line 143
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->touchEvents:[Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method
