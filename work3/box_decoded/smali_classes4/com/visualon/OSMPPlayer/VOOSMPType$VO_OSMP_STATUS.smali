.class public final enum Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;
.super Ljava/lang/Enum;
.source "VOOSMPType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayer/VOOSMPType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VO_OSMP_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

.field public static final enum VO_OSMP_STATUS_INITIALIZING:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

.field public static final enum VO_OSMP_STATUS_LOADING:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

.field public static final enum VO_OSMP_STATUS_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

.field public static final enum VO_OSMP_STATUS_PAUSED:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

.field public static final enum VO_OSMP_STATUS_PLAYING:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

.field public static final enum VO_OSMP_STATUS_STOPPED:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

.field private static final values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 468
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    const-string v1, "VO_OSMP_STATUS_INITIALIZING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->VO_OSMP_STATUS_INITIALIZING:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    .line 470
    new-instance v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    const-string v3, "VO_OSMP_STATUS_LOADING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->VO_OSMP_STATUS_LOADING:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    .line 472
    new-instance v3, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    const-string v5, "VO_OSMP_STATUS_PLAYING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->VO_OSMP_STATUS_PLAYING:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    .line 474
    new-instance v5, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    const-string v7, "VO_OSMP_STATUS_PAUSED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->VO_OSMP_STATUS_PAUSED:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    .line 476
    new-instance v7, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    const-string v9, "VO_OSMP_STATUS_STOPPED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->VO_OSMP_STATUS_STOPPED:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    .line 479
    new-instance v9, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    const-string v11, "VO_OSMP_STATUS_MAX"

    const/4 v12, 0x5

    const/4 v13, -0x1

    invoke-direct {v9, v11, v12, v13}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->VO_OSMP_STATUS_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 465
    sput-object v11, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    .line 483
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    move-result-object v0

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 486
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 487
    iput p3, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 497
    :goto_0
    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 499
    aget-object v3, v2, v1

    invoke-virtual {v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->getValue()I

    move-result v3

    if-ne v3, p0, :cond_0

    .line 500
    aget-object p0, v2, v1

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 503
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VO_OSMP_STATUS isn\'t match. id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPType"

    invoke-static {v1, p0, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 504
    sget-object p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->VO_OSMP_STATUS_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;
    .locals 1

    .line 465
    const-class v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;
    .locals 1

    .line 465
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    invoke-virtual {v0}, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 492
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->value:I

    return v0
.end method
