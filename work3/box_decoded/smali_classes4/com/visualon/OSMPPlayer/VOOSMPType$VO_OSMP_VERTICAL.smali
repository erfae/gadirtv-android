.class public final enum Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;
.super Ljava/lang/Enum;
.source "VOOSMPType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayer/VOOSMPType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VO_OSMP_VERTICAL"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

.field public static final enum VO_OSMP_BOTTOM:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

.field public static final enum VO_OSMP_MIDDLE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

.field public static final enum VO_OSMP_TOP:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

.field public static final enum VO_OSMP_VERTICAL_DEFAULT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

.field public static final enum VO_OSMP_VERTICAL_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

.field private static final values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1696
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

    const-string v1, "VO_OSMP_VERTICAL_DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;->VO_OSMP_VERTICAL_DEFAULT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

    .line 1698
    new-instance v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

    const-string v3, "VO_OSMP_TOP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;->VO_OSMP_TOP:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

    .line 1700
    new-instance v3, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

    const-string v5, "VO_OSMP_MIDDLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;->VO_OSMP_MIDDLE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

    .line 1702
    new-instance v5, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

    const-string v7, "VO_OSMP_BOTTOM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;->VO_OSMP_BOTTOM:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

    .line 1705
    new-instance v7, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

    const-string v9, "VO_OSMP_VERTICAL_MAX"

    const/4 v10, 0x4

    const/4 v11, -0x1

    invoke-direct {v7, v9, v10, v11}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;->VO_OSMP_VERTICAL_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 1693
    sput-object v9, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

    .line 1707
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

    move-result-object v0

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;->values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1711
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1712
    iput p3, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1722
    :goto_0
    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;->values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 1724
    aget-object v3, v2, v1

    invoke-virtual {v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;->getValue()I

    move-result v3

    if-ne p0, v3, :cond_0

    .line 1725
    aget-object p0, v2, v1

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 1728
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v0

    const-string p0, "@@@VOOSMPType"

    const-string v0, "VO_OSMP_VERTICAL does not match. id = 0x%X"

    invoke-static {p0, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1729
    sget-object p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;->VO_OSMP_VERTICAL_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;
    .locals 1

    .line 1693
    const-class v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;
    .locals 1

    .line 1693
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

    invoke-virtual {v0}, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1717
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;->value:I

    return v0
.end method
