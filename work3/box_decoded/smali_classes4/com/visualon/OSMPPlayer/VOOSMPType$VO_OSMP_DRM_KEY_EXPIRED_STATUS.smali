.class public final enum Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;
.super Ljava/lang/Enum;
.source "VOOSMPType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayer/VOOSMPType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VO_OSMP_DRM_KEY_EXPIRED_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;

.field public static final enum VO_OSMP_DRM_KEY_CLEAR_CONTENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;

.field public static final enum VO_OSMP_DRM_KEY_EXPIRED_ERROR:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;

.field public static final enum VO_OSMP_DRM_KEY_EXPIRED_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;

.field public static final enum VO_OSMP_DRM_KEY_EXPIRED_NOT_PREPARE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;

.field public static final enum VO_OSMP_DRM_KEY_EXPIRED_YES:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;

.field public static final enum VO_OSMP_DRM_KEY_LIB_NOT_LOADED:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;

.field public static final enum VO_OSMP_DRM_KEY_NOT_FOUND:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;

.field public static final enum VO_OSMP_DRM_KEY_UNSUPPORTED:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;

.field public static final enum VO_OSMP_DRM_KEY_VALID:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;

.field private static final values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1597
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;

    const-string v1, "VO_OSMP_DRM_KEY_VALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;->VO_OSMP_DRM_KEY_VALID:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;

    .line 1599
    new-instance v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;

    const-string v3, "VO_OSMP_DRM_KEY_EXPIRED_YES"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;->VO_OSMP_DRM_KEY_EXPIRED_YES:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;

    .line 1601
    new-instance v3, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;

    const-string v5, "VO_OSMP_DRM_KEY_EXPIRED_NOT_PREPARE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;->VO_OSMP_DRM_KEY_EXPIRED_NOT_PREPARE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;

    .line 1603
    new-instance v5, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;

    const-string v7, "VO_OSMP_DRM_KEY_EXPIRED_ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;->VO_OSMP_DRM_KEY_EXPIRED_ERROR:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;

    .line 1610
    new-instance v7, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;

    const-string v9, "VO_OSMP_DRM_KEY_NOT_FOUND"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;->VO_OSMP_DRM_KEY_NOT_FOUND:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;

    .line 1612
    new-instance v9, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;

    const-string v11, "VO_OSMP_DRM_KEY_CLEAR_CONTENT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;->VO_OSMP_DRM_KEY_CLEAR_CONTENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;

    .line 1614
    new-instance v11, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;

    const-string v13, "VO_OSMP_DRM_KEY_UNSUPPORTED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;->VO_OSMP_DRM_KEY_UNSUPPORTED:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;

    .line 1616
    new-instance v13, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;

    const-string v15, "VO_OSMP_DRM_KEY_LIB_NOT_LOADED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;->VO_OSMP_DRM_KEY_LIB_NOT_LOADED:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;

    .line 1618
    new-instance v15, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;

    const-string v14, "VO_OSMP_DRM_KEY_EXPIRED_MAX"

    const/16 v12, 0x8

    const v10, 0x7fffffff

    invoke-direct {v15, v14, v12, v10}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;->VO_OSMP_DRM_KEY_EXPIRED_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    aput-object v5, v10, v8

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    aput-object v15, v10, v12

    .line 1594
    sput-object v10, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;

    .line 1620
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;

    move-result-object v0

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;->values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1624
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1625
    iput p3, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1635
    :goto_0
    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;->values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 1637
    aget-object v3, v2, v1

    invoke-virtual {v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;->getValue()I

    move-result v3

    if-ne p0, v3, :cond_0

    .line 1638
    aget-object p0, v2, v1

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 1641
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v0

    const-string p0, "@@@VOOSMPType"

    const-string v0, "VO_OSMP_DRM_KEY_EXPIRED_STATUS does not match. id = 0x%X"

    invoke-static {p0, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1642
    sget-object p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;->VO_OSMP_DRM_KEY_EXPIRED_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;
    .locals 1

    .line 1594
    const-class v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;
    .locals 1

    .line 1594
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;

    invoke-virtual {v0}, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1630
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;->value:I

    return v0
.end method
