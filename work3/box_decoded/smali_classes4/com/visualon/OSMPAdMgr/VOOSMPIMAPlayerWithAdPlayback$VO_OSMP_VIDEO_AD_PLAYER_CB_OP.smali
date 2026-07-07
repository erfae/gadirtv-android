.class public final enum Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;
.super Ljava/lang/Enum;
.source "VOOSMPIMAPlayerWithAdPlayback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VO_OSMP_VIDEO_AD_PLAYER_CB_OP"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;

.field public static final enum VO_OSMP_VIDEO_AD_PLAYER_CB_END:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;

.field public static final enum VO_OSMP_VIDEO_AD_PLAYER_CB_ERROR:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;

.field public static final enum VO_OSMP_VIDEO_AD_PLAYER_CB_MAX:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;

.field public static final enum VO_OSMP_VIDEO_AD_PLAYER_CB_PAUSE:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;

.field public static final enum VO_OSMP_VIDEO_AD_PLAYER_CB_PLAY:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;

.field public static final enum VO_OSMP_VIDEO_AD_PLAYER_CB_RESUME:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 44
    new-instance v0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;

    const-string v1, "VO_OSMP_VIDEO_AD_PLAYER_CB_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;->VO_OSMP_VIDEO_AD_PLAYER_CB_ERROR:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;

    .line 45
    new-instance v1, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;

    const-string v3, "VO_OSMP_VIDEO_AD_PLAYER_CB_PLAY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;->VO_OSMP_VIDEO_AD_PLAYER_CB_PLAY:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;

    .line 46
    new-instance v3, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;

    const-string v5, "VO_OSMP_VIDEO_AD_PLAYER_CB_PAUSE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;->VO_OSMP_VIDEO_AD_PLAYER_CB_PAUSE:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;

    .line 47
    new-instance v5, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;

    const-string v7, "VO_OSMP_VIDEO_AD_PLAYER_CB_RESUME"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;->VO_OSMP_VIDEO_AD_PLAYER_CB_RESUME:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;

    .line 48
    new-instance v7, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;

    const-string v9, "VO_OSMP_VIDEO_AD_PLAYER_CB_END"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;->VO_OSMP_VIDEO_AD_PLAYER_CB_END:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;

    .line 49
    new-instance v9, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;

    const-string v11, "VO_OSMP_VIDEO_AD_PLAYER_CB_MAX"

    const/4 v12, 0x5

    const/4 v13, -0x1

    invoke-direct {v9, v11, v12, v13}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;->VO_OSMP_VIDEO_AD_PLAYER_CB_MAX:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 42
    sput-object v11, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;->$VALUES:[Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput p3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;->mValue:I

    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 63
    :goto_0
    invoke-static {}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;->values()[Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 64
    invoke-static {}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;->values()[Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;->getValue()I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 65
    invoke-static {}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;->values()[Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;

    move-result-object p0

    aget-object p0, p0, v1

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VO_OSMP_VIDEO_AD_PLAYER_CB_OP does not match. id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPIMAPlayerWithAdPlayback"

    .line 67
    invoke-static {v1, p0, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    sget-object p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;->VO_OSMP_VIDEO_AD_PLAYER_CB_MAX:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;
    .locals 1

    .line 42
    const-class v0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;
    .locals 1

    .line 42
    sget-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;->$VALUES:[Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;

    invoke-virtual {v0}, [Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;->mValue:I

    return v0
.end method
