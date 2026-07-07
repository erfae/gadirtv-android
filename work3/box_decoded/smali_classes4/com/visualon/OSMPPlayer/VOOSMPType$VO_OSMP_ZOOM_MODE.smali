.class public final enum Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;
.super Ljava/lang/Enum;
.source "VOOSMPType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayer/VOOSMPType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VO_OSMP_ZOOM_MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;

.field public static final enum VO_OSMP_ZOOM_FITWINDOW:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;

.field public static final enum VO_OSMP_ZOOM_LETTERBOX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;

.field public static final enum VO_OSMP_ZOOM_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;

.field public static final enum VO_OSMP_ZOOM_ORIGINAL:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;

.field public static final enum VO_OSMP_ZOOM_PANSCAN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;

.field public static final enum VO_OSMP_ZOOM_ZOOMIN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;

.field private static final values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 574
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;

    const-string v1, "VO_OSMP_ZOOM_LETTERBOX"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;->VO_OSMP_ZOOM_LETTERBOX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;

    .line 576
    new-instance v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;

    const-string v4, "VO_OSMP_ZOOM_PANSCAN"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;->VO_OSMP_ZOOM_PANSCAN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;

    .line 578
    new-instance v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;

    const-string v6, "VO_OSMP_ZOOM_FITWINDOW"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;->VO_OSMP_ZOOM_FITWINDOW:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;

    .line 580
    new-instance v6, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;

    const-string v8, "VO_OSMP_ZOOM_ORIGINAL"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;->VO_OSMP_ZOOM_ORIGINAL:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;

    .line 582
    new-instance v8, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;

    const-string v10, "VO_OSMP_ZOOM_ZOOMIN"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;->VO_OSMP_ZOOM_ZOOMIN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;

    .line 585
    new-instance v10, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;

    const-string v12, "VO_OSMP_ZOOM_MAX"

    const/4 v13, -0x1

    invoke-direct {v10, v12, v11, v13}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;->VO_OSMP_ZOOM_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;

    const/4 v12, 0x6

    new-array v12, v12, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;

    aput-object v0, v12, v2

    aput-object v1, v12, v3

    aput-object v4, v12, v5

    aput-object v6, v12, v7

    aput-object v8, v12, v9

    aput-object v10, v12, v11

    .line 571
    sput-object v12, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;

    .line 587
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;

    move-result-object v0

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;->values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 591
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 592
    iput p3, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 602
    :goto_0
    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;->values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 604
    aget-object v3, v2, v1

    invoke-virtual {v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;->getValue()I

    move-result v3

    if-ne v3, p0, :cond_0

    .line 605
    aget-object p0, v2, v1

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 608
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VO_OSMP_ZOOM_MODE isn\'t match. id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPType"

    invoke-static {v1, p0, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 609
    sget-object p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;->VO_OSMP_ZOOM_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;
    .locals 1

    .line 571
    const-class v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;
    .locals 1

    .line 571
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 597
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;->value:I

    return v0
.end method
