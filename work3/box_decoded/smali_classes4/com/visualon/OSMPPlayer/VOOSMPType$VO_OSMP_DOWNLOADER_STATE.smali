.class public final enum Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;
.super Ljava/lang/Enum;
.source "VOOSMPType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayer/VOOSMPType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VO_OSMP_DOWNLOADER_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;

.field public static final enum VO_OSMP_DOWNLOADER_STATE_DESTROYED:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;

.field public static final enum VO_OSMP_DOWNLOADER_STATE_DOWNLOADING:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;

.field public static final enum VO_OSMP_DOWNLOADER_STATE_INITIALIZED:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;

.field public static final enum VO_OSMP_DOWNLOADER_STATE_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;

.field public static final enum VO_OSMP_DOWNLOADER_STATE_OPENED:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;

.field public static final enum VO_OSMP_DOWNLOADER_STATE_OPENING:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;

.field public static final enum VO_OSMP_DOWNLOADER_STATE_PAUSED:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;

.field public static final enum VO_OSMP_DOWNLOADER_STATE_STOPPED:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;

.field public static final enum VO_OSMP_DOWNLOADER_STATE_UNINITIALIZED:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;

.field private static final values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 375
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;

    const-string v1, "VO_OSMP_DOWNLOADER_STATE_UNINITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;->VO_OSMP_DOWNLOADER_STATE_UNINITIALIZED:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;

    .line 377
    new-instance v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;

    const-string v3, "VO_OSMP_DOWNLOADER_STATE_INITIALIZED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;->VO_OSMP_DOWNLOADER_STATE_INITIALIZED:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;

    .line 379
    new-instance v3, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;

    const-string v5, "VO_OSMP_DOWNLOADER_STATE_OPENING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;->VO_OSMP_DOWNLOADER_STATE_OPENING:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;

    .line 381
    new-instance v5, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;

    const-string v7, "VO_OSMP_DOWNLOADER_STATE_OPENED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;->VO_OSMP_DOWNLOADER_STATE_OPENED:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;

    .line 383
    new-instance v7, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;

    const-string v9, "VO_OSMP_DOWNLOADER_STATE_DOWNLOADING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;->VO_OSMP_DOWNLOADER_STATE_DOWNLOADING:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;

    .line 385
    new-instance v9, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;

    const-string v11, "VO_OSMP_DOWNLOADER_STATE_PAUSED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;->VO_OSMP_DOWNLOADER_STATE_PAUSED:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;

    .line 392
    new-instance v11, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;

    const-string v13, "VO_OSMP_DOWNLOADER_STATE_STOPPED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;->VO_OSMP_DOWNLOADER_STATE_STOPPED:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;

    .line 394
    new-instance v13, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;

    const-string v15, "VO_OSMP_DOWNLOADER_STATE_DESTROYED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;->VO_OSMP_DOWNLOADER_STATE_DESTROYED:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;

    .line 396
    new-instance v15, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;

    const-string v14, "VO_OSMP_DOWNLOADER_STATE_MAX"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;->VO_OSMP_DOWNLOADER_STATE_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    .line 373
    sput-object v14, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;

    .line 398
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;

    move-result-object v0

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;->values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 402
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 403
    iput p3, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 413
    :goto_0
    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;->values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 415
    aget-object v3, v2, v1

    invoke-virtual {v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;->getValue()I

    move-result v3

    if-ne v3, p0, :cond_0

    .line 416
    aget-object p0, v2, v1

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 419
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VO_OSMP_DOWNLOADER_STATE isn\'t match. id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPType"

    invoke-static {v1, p0, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 420
    sget-object p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;->VO_OSMP_DOWNLOADER_STATE_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;
    .locals 1

    .line 373
    const-class v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;
    .locals 1

    .line 373
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 408
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;->value:I

    return v0
.end method
