.class public Lcom/google/vr/vrcore/controller/api/ControllerRequest;
.super Lcom/google/vr/vrcore/base/api/ParcelableProto;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/vr/vrcore/base/api/ParcelableProto<",
        "Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/vr/vrcore/controller/api/ControllerRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_VIBRATION_DURATION_MS:I = 0x2710


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/google/vr/vrcore/controller/api/ControllerRequest$1;

    invoke-direct {v0}, Lcom/google/vr/vrcore/controller/api/ControllerRequest$1;-><init>()V

    sput-object v0, Lcom/google/vr/vrcore/controller/api/ControllerRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/vr/vrcore/base/api/ParcelableProto;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/vr/vrcore/base/api/ParcelableProto;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/vr/vrcore/base/api/ParcelableProto;-><init>([B)V

    return-void
.end method

.method private static varargs checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    if-nez p0, :cond_1

    .line 26
    array-length p0, p2

    if-nez p0, :cond_0

    .line 27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 28
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 9
    :cond_0
    instance-of v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerRequest;

    if-eqz v0, :cond_1

    .line 10
    check-cast p1, Lcom/google/vr/vrcore/controller/api/ControllerRequest;

    invoke-virtual {p1}, Lcom/google/vr/vrcore/controller/api/ControllerRequest;->getData()[B

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/ControllerRequest;->getData()[B

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getValidatedRequest()Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;
    .locals 7

    .line 12
    const-class v0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;

    invoke-virtual {p0, v0}, Lcom/google/vr/vrcore/controller/api/ControllerRequest;->parseToProto(Ljava/lang/Class;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "Failed to parse request proto data."

    .line 13
    invoke-static {v3, v5, v4}, Lcom/google/vr/vrcore/controller/api/ControllerRequest;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iget-object v3, v0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;->vibration:Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;

    if-eqz v3, :cond_6

    .line 15
    iget-object v3, v0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;->vibration:Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;

    .line 16
    invoke-virtual {v3}, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->getDurationMs()I

    move-result v4

    if-ltz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "Vibration duration should be non-negative"

    invoke-static {v4, v6, v5}, Lcom/google/vr/vrcore/controller/api/ControllerRequest;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-virtual {v3}, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->getDurationMs()I

    move-result v4

    const/16 v5, 0x2710

    if-gt v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    new-array v6, v1, [Ljava/lang/Object;

    .line 19
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v2

    const-string v5, "Vibration duration can be at most %d"

    .line 20
    invoke-static {v4, v5, v6}, Lcom/google/vr/vrcore/controller/api/ControllerRequest;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 21
    invoke-virtual {v3}, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->getVolumePercentage()I

    move-result v4

    if-ltz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "Volume should be positive"

    invoke-static {v4, v6, v5}, Lcom/google/vr/vrcore/controller/api/ControllerRequest;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 22
    invoke-virtual {v3}, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->getVolumePercentage()I

    move-result v4

    const/16 v5, 0x64

    if-gt v4, v5, :cond_4

    const/4 v4, 0x1

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "Volume should be at most 100."

    invoke-static {v4, v6, v5}, Lcom/google/vr/vrcore/controller/api/ControllerRequest;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 23
    invoke-virtual {v3}, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->getFrequencyHz()I

    move-result v3

    if-lez v3, :cond_5

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Vibration frequency be positive"

    invoke-static {v1, v3, v2}, Lcom/google/vr/vrcore/controller/api/ControllerRequest;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    return-object v0
.end method
