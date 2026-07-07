.class public final enum Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;
.super Ljava/lang/Enum;
.source "VOCommonPlayerDeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VO_OSMP_DEVICE_INFO_OS_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;

.field public static final enum VO_OSMP_DEVICE_INFO_OS_ANDROID:Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;

.field public static final enum VO_OSMP_DEVICE_INFO_OS_IOS:Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;

.field public static final enum VO_OSMP_DEVICE_INFO_OS_MAX:Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;

.field public static final enum VO_OSMP_DEVICE_INFO_OS_OSX:Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 27
    new-instance v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;

    const-string v1, "VO_OSMP_DEVICE_INFO_OS_IOS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;->VO_OSMP_DEVICE_INFO_OS_IOS:Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;

    .line 30
    new-instance v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;

    const-string v3, "VO_OSMP_DEVICE_INFO_OS_OSX"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;->VO_OSMP_DEVICE_INFO_OS_OSX:Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;

    .line 33
    new-instance v3, Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;

    const-string v5, "VO_OSMP_DEVICE_INFO_OS_ANDROID"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;->VO_OSMP_DEVICE_INFO_OS_ANDROID:Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;

    .line 36
    new-instance v5, Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;

    const-string v7, "VO_OSMP_DEVICE_INFO_OS_MAX"

    const/4 v8, 0x3

    const/4 v9, -0x1

    invoke-direct {v5, v7, v8, v9}, Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;->VO_OSMP_DEVICE_INFO_OS_MAX:Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 24
    sput-object v7, Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;->$VALUES:[Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput p3, p0, Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 51
    :goto_0
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;->values()[Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 52
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;->values()[Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;->getValue()I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 53
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;->values()[Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;

    move-result-object p0

    aget-object p0, p0, v1

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VO_OSMP_DEVICE_INFO_OS_TYPE isn\'t match. id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VOCommonPlayerDeviceInfo"

    .line 55
    invoke-static {v1, p0, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    sget-object p0, Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;->VO_OSMP_DEVICE_INFO_OS_MAX:Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;
    .locals 1

    .line 24
    const-class v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;
    .locals 1

    .line 24
    sget-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;->$VALUES:[Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;->value:I

    return v0
.end method
