.class public final enum Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;
.super Ljava/lang/Enum;
.source "VOCommonPlayerListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VO_OSMP_SRC_CUSTOMERTAGID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;

.field public static final enum VO_OSMP_SRC_CUSTOMERTAGID_MAX:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;

.field public static final enum VO_OSMP_SRC_CUSTOMERTAGID_TIMEDTAG:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;

.field public static final enum VO_OSMP_SRC_CUSTOMERTAG_DASH_EMSG_BOX:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;

.field private static final values:[Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 421
    new-instance v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;

    const-string v1, "VO_OSMP_SRC_CUSTOMERTAGID_TIMEDTAG"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;->VO_OSMP_SRC_CUSTOMERTAGID_TIMEDTAG:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;

    .line 430
    new-instance v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;

    const-string v4, "VO_OSMP_SRC_CUSTOMERTAG_DASH_EMSG_BOX"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;->VO_OSMP_SRC_CUSTOMERTAG_DASH_EMSG_BOX:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;

    .line 433
    new-instance v4, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;

    const-string v6, "VO_OSMP_SRC_CUSTOMERTAGID_MAX"

    const/4 v7, -0x1

    invoke-direct {v4, v6, v5, v7}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;->VO_OSMP_SRC_CUSTOMERTAGID_MAX:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;

    const/4 v6, 0x3

    new-array v6, v6, [Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    .line 418
    sput-object v6, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;->$VALUES:[Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;

    .line 435
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;->values()[Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;

    move-result-object v0

    sput-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;->values:[Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 440
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 441
    iput p3, p0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 451
    :goto_0
    sget-object v2, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;->values:[Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 453
    aget-object v3, v2, v1

    invoke-virtual {v3}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;->getValue()I

    move-result v3

    if-ne v3, p0, :cond_0

    .line 454
    aget-object p0, v2, v1

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 457
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VO_OSMP_SRC_CUSTOMERTAGID isn\'t match. id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VOCommonPlayerListener"

    invoke-static {v1, p0, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 458
    sget-object p0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;->VO_OSMP_SRC_CUSTOMERTAGID_MAX:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;
    .locals 1

    .line 418
    const-class v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;
    .locals 1

    .line 418
    sget-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;->$VALUES:[Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;

    invoke-virtual {v0}, [Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 446
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;->value:I

    return v0
.end method
