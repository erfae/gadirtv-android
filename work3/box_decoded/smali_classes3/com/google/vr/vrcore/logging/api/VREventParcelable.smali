.class public Lcom/google/vr/vrcore/logging/api/VREventParcelable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/vr/vrcore/logging/api/VREventParcelable;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "VREventParcelable"


# instance fields
.field private event:Lcom/google/common/logging/nano/Vr$VREvent;

.field private eventCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/google/vr/vrcore/logging/api/VREventParcelable$1;

    invoke-direct {v0}, Lcom/google/vr/vrcore/logging/api/VREventParcelable$1;-><init>()V

    sput-object v0, Lcom/google/vr/vrcore/logging/api/VREventParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILcom/google/common/logging/nano/Vr$VREvent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/vr/vrcore/logging/api/VREventParcelable;->eventCode:I

    .line 3
    iput-object p2, p0, Lcom/google/vr/vrcore/logging/api/VREventParcelable;->event:Lcom/google/common/logging/nano/Vr$VREvent;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/vr/vrcore/logging/api/VREventParcelable;->eventCode:I

    .line 7
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 8
    array-length v0, p1

    if-lez v0, :cond_0

    .line 9
    invoke-static {p1}, Lcom/google/common/logging/nano/Vr$VREvent;->parseFrom([B)Lcom/google/common/logging/nano/Vr$VREvent;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/vrcore/logging/api/VREventParcelable;->event:Lcom/google/common/logging/nano/Vr$VREvent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 12
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x23

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Logging with empty VREvent. Error: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VREventParcelable"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/vr/vrcore/logging/api/VREventParcelable$1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/google/vr/vrcore/logging/api/VREventParcelable;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEvent()Lcom/google/common/logging/nano/Vr$VREvent;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/google/vr/vrcore/logging/api/VREventParcelable;->event:Lcom/google/common/logging/nano/Vr$VREvent;

    return-object v0
.end method

.method public getEventCode()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/google/vr/vrcore/logging/api/VREventParcelable;->eventCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 15
    iget p2, p0, Lcom/google/vr/vrcore/logging/api/VREventParcelable;->eventCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    iget-object p2, p0, Lcom/google/vr/vrcore/logging/api/VREventParcelable;->event:Lcom/google/common/logging/nano/Vr$VREvent;

    if-eqz p2, :cond_0

    .line 17
    invoke-static {p2}, Lcom/google/common/logging/nano/Vr$VREvent;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_0
    return-void
.end method
