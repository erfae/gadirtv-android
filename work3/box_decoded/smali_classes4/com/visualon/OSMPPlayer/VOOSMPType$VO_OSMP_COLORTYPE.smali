.class public final enum Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;
.super Ljava/lang/Enum;
.source "VOOSMPType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayer/VOOSMPType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VO_OSMP_COLORTYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;

.field public static final enum VO_OSMP_COLOR_ARGB32_PACKED:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;

.field public static final enum VO_OSMP_COLOR_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;

.field public static final enum VO_OSMP_COLOR_RGB32_PACKED:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;

.field public static final enum VO_OSMP_COLOR_RGB565_PACKED:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;

.field private static final values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 298
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;

    const-string v1, "VO_OSMP_COLOR_RGB565_PACKED"

    const/4 v2, 0x0

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;->VO_OSMP_COLOR_RGB565_PACKED:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;

    .line 300
    new-instance v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;

    const-string v3, "VO_OSMP_COLOR_RGB32_PACKED"

    const/4 v4, 0x1

    const/16 v5, 0x17

    invoke-direct {v1, v3, v4, v5}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;->VO_OSMP_COLOR_RGB32_PACKED:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;

    .line 302
    new-instance v3, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;

    const-string v5, "VO_OSMP_COLOR_ARGB32_PACKED"

    const/4 v6, 0x2

    const/16 v7, 0x1a

    invoke-direct {v3, v5, v6, v7}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;->VO_OSMP_COLOR_ARGB32_PACKED:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;

    .line 305
    new-instance v5, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;

    const-string v7, "VO_OSMP_COLOR_MAX"

    const/4 v8, 0x3

    const/4 v9, -0x1

    invoke-direct {v5, v7, v8, v9}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;->VO_OSMP_COLOR_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 295
    sput-object v7, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;

    .line 307
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;

    move-result-object v0

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;->values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 311
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 312
    iput p3, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 322
    :goto_0
    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;->values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 324
    aget-object v3, v2, v1

    invoke-virtual {v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;->getValue()I

    move-result v3

    if-ne v3, p0, :cond_0

    .line 325
    aget-object p0, v2, v1

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 328
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VO_OSMP_COLORTYPE isn\'t match. id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPType"

    invoke-static {v1, p0, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    sget-object p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;->VO_OSMP_COLOR_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;
    .locals 1

    .line 295
    const-class v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;
    .locals 1

    .line 295
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 317
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;->value:I

    return v0
.end method
