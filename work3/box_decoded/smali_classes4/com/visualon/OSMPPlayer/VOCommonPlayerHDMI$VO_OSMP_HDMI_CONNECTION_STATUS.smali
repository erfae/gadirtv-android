.class public final enum Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;
.super Ljava/lang/Enum;
.source "VOCommonPlayerHDMI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VO_OSMP_HDMI_CONNECTION_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;

.field public static final enum VO_OSMP_HDMISTATE_CONNECT:Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;

.field public static final enum VO_OSMP_HDMISTATE_DISCONNECT:Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;

.field public static final enum VO_OSMP_HDMISTATE_MAX:Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;

.field public static final enum VO_OSMP_HDMISTATE_UNKNOWN:Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 104
    new-instance v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;

    const-string v1, "VO_OSMP_HDMISTATE_DISCONNECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;->VO_OSMP_HDMISTATE_DISCONNECT:Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;

    .line 109
    new-instance v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;

    const-string v3, "VO_OSMP_HDMISTATE_CONNECT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;->VO_OSMP_HDMISTATE_CONNECT:Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;

    .line 114
    new-instance v3, Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;

    const-string v5, "VO_OSMP_HDMISTATE_UNKNOWN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;->VO_OSMP_HDMISTATE_UNKNOWN:Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;

    .line 116
    new-instance v5, Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;

    const-string v7, "VO_OSMP_HDMISTATE_MAX"

    const/4 v8, 0x3

    const v9, 0x7fffffff

    invoke-direct {v5, v7, v8, v9}, Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;->VO_OSMP_HDMISTATE_MAX:Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 99
    sput-object v7, Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;->$VALUES:[Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 122
    iput p3, p0, Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 132
    :goto_0
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;->values()[Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 134
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SCREEN_BRIGHTNESS_MODE;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SCREEN_BRIGHTNESS_MODE;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SCREEN_BRIGHTNESS_MODE;->getValue()I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 135
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;->values()[Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;

    move-result-object p0

    aget-object p0, p0, v1

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VO_OSMP_HDMI_CONNECTION_STATUS isn\'t match. id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VOCommonPlayerHDMI"

    invoke-static {v1, p0, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    sget-object p0, Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;->VO_OSMP_HDMISTATE_MAX:Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;
    .locals 1

    .line 99
    const-class v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;
    .locals 1

    .line 99
    sget-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;->$VALUES:[Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;

    invoke-virtual {v0}, [Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;->value:I

    return v0
.end method
