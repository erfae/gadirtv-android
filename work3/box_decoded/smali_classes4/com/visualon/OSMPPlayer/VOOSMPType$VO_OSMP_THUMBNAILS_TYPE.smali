.class public final enum Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;
.super Ljava/lang/Enum;
.source "VOOSMPType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayer/VOOSMPType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VO_OSMP_THUMBNAILS_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;

.field public static final enum VO_OSMP_THUMBNAILS_DASH_JPG:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;

.field public static final enum VO_OSMP_THUMBNAILS_DASH_MP4:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;

.field public static final enum VO_OSMP_THUMBNAILS_EXTERNAL:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;

.field public static final enum VO_OSMP_THUMBNAILS_IFRAME:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;

.field public static final enum VO_OSMP_THUMBNAILS_TYPE_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;

.field private static final values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1772
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;

    const-string v1, "VO_OSMP_THUMBNAILS_EXTERNAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;->VO_OSMP_THUMBNAILS_EXTERNAL:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;

    .line 1773
    new-instance v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;

    const-string v3, "VO_OSMP_THUMBNAILS_IFRAME"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;->VO_OSMP_THUMBNAILS_IFRAME:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;

    .line 1774
    new-instance v3, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;

    const-string v5, "VO_OSMP_THUMBNAILS_DASH_MP4"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;->VO_OSMP_THUMBNAILS_DASH_MP4:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;

    .line 1775
    new-instance v5, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;

    const-string v7, "VO_OSMP_THUMBNAILS_DASH_JPG"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;->VO_OSMP_THUMBNAILS_DASH_JPG:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;

    .line 1776
    new-instance v7, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;

    const-string v9, "VO_OSMP_THUMBNAILS_TYPE_MAX"

    const/4 v10, 0x4

    const/16 v11, 0xff

    invoke-direct {v7, v9, v10, v11}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;->VO_OSMP_THUMBNAILS_TYPE_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 1770
    sput-object v9, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;

    .line 1778
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;

    move-result-object v0

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;->values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1782
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1783
    iput p3, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1793
    :goto_0
    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;->values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 1795
    aget-object v3, v2, v1

    invoke-virtual {v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;->getValue()I

    move-result v3

    if-ne p0, v3, :cond_0

    .line 1796
    aget-object p0, v2, v1

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 1799
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v0

    const-string p0, "@@@VOOSMPType"

    const-string v0, "VO_OSMP_THUMBNAILS_PREFERENCE does not match. id = 0x%X"

    invoke-static {p0, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1800
    sget-object p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;->VO_OSMP_THUMBNAILS_TYPE_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;
    .locals 1

    .line 1770
    const-class v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;
    .locals 1

    .line 1770
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1788
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;->value:I

    return v0
.end method
