.class public final enum Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;
.super Ljava/lang/Enum;
.source "VOOSMPType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayer/VOOSMPType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VO_OSMP_SOURCE_STREAMTYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

.field public static final enum VO_OSMP_SS_AUDIO:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

.field public static final enum VO_OSMP_SS_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

.field public static final enum VO_OSMP_SS_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

.field public static final enum VO_OSMP_SS_SUBTITLE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

.field public static final enum VO_OSMP_SS_VIDEO:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

.field private static final values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 429
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

    const-string v1, "VO_OSMP_SS_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;->VO_OSMP_SS_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

    .line 431
    new-instance v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

    const-string v3, "VO_OSMP_SS_AUDIO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;->VO_OSMP_SS_AUDIO:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

    .line 433
    new-instance v3, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

    const-string v5, "VO_OSMP_SS_VIDEO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;->VO_OSMP_SS_VIDEO:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

    .line 435
    new-instance v5, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

    const-string v7, "VO_OSMP_SS_SUBTITLE"

    const/4 v8, 0x3

    const/16 v9, 0x9

    invoke-direct {v5, v7, v8, v9}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;->VO_OSMP_SS_SUBTITLE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

    .line 437
    new-instance v7, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

    const-string v9, "VO_OSMP_SS_MAX"

    const/4 v10, 0x4

    const v11, 0x7fffffff

    invoke-direct {v7, v9, v10, v11}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;->VO_OSMP_SS_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 427
    sput-object v9, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

    .line 439
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

    move-result-object v0

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;->values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 442
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 443
    iput p3, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;
    .locals 2

    .line 453
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;->values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 454
    aget-object p0, v0, p0

    return-object p0

    .line 456
    :cond_0
    sget-object p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;->VO_OSMP_SS_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;
    .locals 1

    .line 427
    const-class v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;
    .locals 1

    .line 427
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 448
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;->value:I

    return v0
.end method
