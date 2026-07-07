.class public final enum Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;
.super Ljava/lang/Enum;
.source "VOOSMPType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayer/VOOSMPType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VO_OSMP_OUTPUT_CONTROL_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

.field public static final enum VO_OSMP_OUTPUT_CONTROL_TYPE_ACP:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

.field public static final enum VO_OSMP_OUTPUT_CONTROL_TYPE_ALL_DISPLAY:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

.field public static final enum VO_OSMP_OUTPUT_CONTROL_TYPE_ANTI_MIRRORING:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

.field public static final enum VO_OSMP_OUTPUT_CONTROL_TYPE_CGMS_A:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

.field public static final enum VO_OSMP_OUTPUT_CONTROL_TYPE_CIT_ANALOG:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

.field public static final enum VO_OSMP_OUTPUT_CONTROL_TYPE_CIT_DIGITAL:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

.field public static final enum VO_OSMP_OUTPUT_CONTROL_TYPE_DOT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

.field public static final enum VO_OSMP_OUTPUT_CONTROL_TYPE_DWIGHT_CAVENDISH:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

.field public static final enum VO_OSMP_OUTPUT_CONTROL_TYPE_HDCP:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

.field public static final enum VO_OSMP_OUTPUT_CONTROL_TYPE_HDMI:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

.field public static final enum VO_OSMP_OUTPUT_CONTROL_TYPE_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

.field public static final enum VO_OSMP_OUTPUT_CONTROL_TYPE_UNKNOWN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

.field private static final values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1350
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    const-string v1, "VO_OSMP_OUTPUT_CONTROL_TYPE_UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->VO_OSMP_OUTPUT_CONTROL_TYPE_UNKNOWN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    .line 1352
    new-instance v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    const-string v4, "VO_OSMP_OUTPUT_CONTROL_TYPE_HDCP"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->VO_OSMP_OUTPUT_CONTROL_TYPE_HDCP:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    .line 1354
    new-instance v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    const-string v6, "VO_OSMP_OUTPUT_CONTROL_TYPE_ANTI_MIRRORING"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v5, v7}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->VO_OSMP_OUTPUT_CONTROL_TYPE_ANTI_MIRRORING:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    .line 1356
    new-instance v6, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    const-string v8, "VO_OSMP_OUTPUT_CONTROL_TYPE_CIT_DIGITAL"

    const/4 v9, 0x3

    const/16 v10, 0x8

    invoke-direct {v6, v8, v9, v10}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->VO_OSMP_OUTPUT_CONTROL_TYPE_CIT_DIGITAL:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    .line 1358
    new-instance v8, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    const-string v11, "VO_OSMP_OUTPUT_CONTROL_TYPE_CIT_ANALOG"

    const/16 v12, 0x10

    invoke-direct {v8, v11, v7, v12}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->VO_OSMP_OUTPUT_CONTROL_TYPE_CIT_ANALOG:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    .line 1360
    new-instance v11, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    const-string v12, "VO_OSMP_OUTPUT_CONTROL_TYPE_DOT"

    const/4 v13, 0x5

    const/16 v14, 0x20

    invoke-direct {v11, v12, v13, v14}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->VO_OSMP_OUTPUT_CONTROL_TYPE_DOT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    .line 1362
    new-instance v12, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    const-string v14, "VO_OSMP_OUTPUT_CONTROL_TYPE_DWIGHT_CAVENDISH"

    const/4 v15, 0x6

    const/16 v13, 0x40

    invoke-direct {v12, v14, v15, v13}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->VO_OSMP_OUTPUT_CONTROL_TYPE_DWIGHT_CAVENDISH:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    .line 1364
    new-instance v13, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    const-string v14, "VO_OSMP_OUTPUT_CONTROL_TYPE_ACP"

    const/4 v15, 0x7

    const/16 v7, 0x80

    invoke-direct {v13, v14, v15, v7}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->VO_OSMP_OUTPUT_CONTROL_TYPE_ACP:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    .line 1366
    new-instance v7, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    const-string v14, "VO_OSMP_OUTPUT_CONTROL_TYPE_CGMS_A"

    const/16 v15, 0x100

    invoke-direct {v7, v14, v10, v15}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->VO_OSMP_OUTPUT_CONTROL_TYPE_CGMS_A:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    .line 1368
    new-instance v14, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    const-string v15, "VO_OSMP_OUTPUT_CONTROL_TYPE_HDMI"

    const/16 v10, 0x9

    const/16 v9, 0x200

    invoke-direct {v14, v15, v10, v9}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->VO_OSMP_OUTPUT_CONTROL_TYPE_HDMI:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    .line 1370
    new-instance v9, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    const-string v15, "VO_OSMP_OUTPUT_CONTROL_TYPE_ALL_DISPLAY"

    const/16 v10, 0xa

    const/16 v5, 0x400

    invoke-direct {v9, v15, v10, v5}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->VO_OSMP_OUTPUT_CONTROL_TYPE_ALL_DISPLAY:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    .line 1373
    new-instance v5, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    const-string v15, "VO_OSMP_OUTPUT_CONTROL_TYPE_MAX"

    const/16 v10, 0xb

    const v3, 0x7fffffff

    invoke-direct {v5, v15, v10, v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->VO_OSMP_OUTPUT_CONTROL_TYPE_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    const/16 v3, 0xc

    new-array v3, v3, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    aput-object v0, v3, v2

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v4, v3, v0

    const/4 v0, 0x3

    aput-object v6, v3, v0

    const/4 v0, 0x4

    aput-object v8, v3, v0

    const/4 v0, 0x5

    aput-object v11, v3, v0

    const/4 v0, 0x6

    aput-object v12, v3, v0

    const/4 v0, 0x7

    aput-object v13, v3, v0

    const/16 v0, 0x8

    aput-object v7, v3, v0

    const/16 v0, 0x9

    aput-object v14, v3, v0

    const/16 v0, 0xa

    aput-object v9, v3, v0

    aput-object v5, v3, v10

    .line 1347
    sput-object v3, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    .line 1375
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    move-result-object v0

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1379
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1380
    iput p3, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1390
    :goto_0
    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 1392
    aget-object v3, v2, v1

    invoke-virtual {v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->getValue()I

    move-result v3

    if-ne v3, p0, :cond_0

    .line 1393
    aget-object p0, v2, v1

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1396
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VOOSMP_OUTPUT_CONTROL_TYPE does not match. id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPType"

    invoke-static {v1, p0, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1397
    sget-object p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->VO_OSMP_OUTPUT_CONTROL_TYPE_UNKNOWN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;
    .locals 1

    .line 1347
    const-class v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;
    .locals 1

    .line 1347
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1385
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->value:I

    return v0
.end method
