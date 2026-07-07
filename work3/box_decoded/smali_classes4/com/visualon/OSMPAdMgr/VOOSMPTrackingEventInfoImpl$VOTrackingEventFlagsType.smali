.class final enum Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;
.super Ljava/lang/Enum;
.source "VOOSMPTrackingEventInfoImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "VOTrackingEventFlagsType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

.field public static final enum TEF_AD:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

.field public static final enum TEF_LIVE:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

.field public static final enum TEF_MIDROLL:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

.field public static final enum TEF_NONE:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

.field public static final enum TEF_POSTROLL:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

.field public static final enum TEF_PREROLL:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

.field public static final enum TEF_SE_AD_BREAK:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

.field public static final enum TEF_SE_CONTENT:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

.field public static final enum TEF_SE_CONTENT_TO_CONTENT:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

.field public static final enum TEF_SE_PERIOD:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

.field public static final enum TEF_SE_VIDEO:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 36
    new-instance v0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

    const-string v1, "TEF_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;->TEF_NONE:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

    .line 39
    new-instance v1, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

    const-string v3, "TEF_AD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;->TEF_AD:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

    .line 41
    new-instance v3, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

    const-string v5, "TEF_PREROLL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;->TEF_PREROLL:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

    .line 43
    new-instance v5, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

    const-string v7, "TEF_MIDROLL"

    const/4 v8, 0x3

    const/4 v9, 0x4

    invoke-direct {v5, v7, v8, v9}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;->TEF_MIDROLL:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

    .line 45
    new-instance v7, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

    const-string v10, "TEF_POSTROLL"

    const/16 v11, 0x8

    invoke-direct {v7, v10, v9, v11}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;->TEF_POSTROLL:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

    .line 48
    new-instance v10, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

    const-string v12, "TEF_SE_PERIOD"

    const/4 v13, 0x5

    const/16 v14, 0x10

    invoke-direct {v10, v12, v13, v14}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;->TEF_SE_PERIOD:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

    .line 50
    new-instance v12, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

    const-string v14, "TEF_SE_AD_BREAK"

    const/4 v15, 0x6

    const/16 v13, 0x20

    invoke-direct {v12, v14, v15, v13}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;->TEF_SE_AD_BREAK:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

    .line 52
    new-instance v13, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

    const-string v14, "TEF_SE_VIDEO"

    const/4 v15, 0x7

    const/16 v9, 0x40

    invoke-direct {v13, v14, v15, v9}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;->TEF_SE_VIDEO:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

    .line 54
    new-instance v9, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

    const-string v14, "TEF_SE_CONTENT"

    const/16 v15, 0x80

    invoke-direct {v9, v14, v11, v15}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;->TEF_SE_CONTENT:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

    .line 57
    new-instance v14, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

    const-string v15, "TEF_SE_CONTENT_TO_CONTENT"

    const/16 v11, 0x9

    const/16 v8, 0x100

    invoke-direct {v14, v15, v11, v8}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;->TEF_SE_CONTENT_TO_CONTENT:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

    .line 59
    new-instance v8, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

    const-string v15, "TEF_LIVE"

    const/16 v11, 0xa

    const/16 v6, 0x200

    invoke-direct {v8, v15, v11, v6}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;->TEF_LIVE:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

    const/16 v6, 0xb

    new-array v6, v6, [Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

    aput-object v0, v6, v2

    aput-object v1, v6, v4

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v10, v6, v0

    const/4 v0, 0x6

    aput-object v12, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v9, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    aput-object v8, v6, v11

    .line 34
    sput-object v6, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;->$VALUES:[Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 70
    iput p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;->mValue:I

    .line 63
    iput p3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;
    .locals 1

    .line 34
    const-class v0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;
    .locals 1

    .line 34
    sget-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;->$VALUES:[Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

    invoke-virtual {v0}, [Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventInfoImpl$VOTrackingEventFlagsType;->mValue:I

    return v0
.end method
