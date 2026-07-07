.class public final enum Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;
.super Ljava/lang/Enum;
.source "VOOSMPType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayer/VOOSMPType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VO_OSMP_DISPLAY_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;

.field public static final enum VO_OSMP_DISPLAY_NULL:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;

.field public static final enum VO_OSMP_DISPLAY_PLAYER:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;

.field public static final enum VO_OSMP_DISPLAY_RENDER:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;

.field public static final enum VO_OSMP_DISPLAY_SOURCE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;

.field private static final values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1557
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;

    const-string v1, "VO_OSMP_DISPLAY_NULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;->VO_OSMP_DISPLAY_NULL:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;

    .line 1559
    new-instance v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;

    const-string v3, "VO_OSMP_DISPLAY_PLAYER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;->VO_OSMP_DISPLAY_PLAYER:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;

    .line 1561
    new-instance v3, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;

    const-string v5, "VO_OSMP_DISPLAY_SOURCE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;->VO_OSMP_DISPLAY_SOURCE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;

    .line 1563
    new-instance v5, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;

    const-string v7, "VO_OSMP_DISPLAY_RENDER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;->VO_OSMP_DISPLAY_RENDER:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 1555
    sput-object v7, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;

    .line 1565
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;

    move-result-object v0

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;->values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1569
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1570
    iput p3, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1580
    :goto_0
    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;->values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 1582
    aget-object v3, v2, v1

    invoke-virtual {v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;->getValue()I

    move-result v3

    if-ne p0, v3, :cond_0

    .line 1583
    aget-object p0, v2, v1

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 1586
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v0

    const-string p0, "@@@VOOSMPType"

    const-string v0, "VO_OSMP_DISPLAY_TYPE does not match. id = 0x%X"

    invoke-static {p0, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1587
    sget-object p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;->VO_OSMP_DISPLAY_NULL:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;
    .locals 1

    .line 1555
    const-class v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;
    .locals 1

    .line 1555
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1575
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;->value:I

    return v0
.end method
