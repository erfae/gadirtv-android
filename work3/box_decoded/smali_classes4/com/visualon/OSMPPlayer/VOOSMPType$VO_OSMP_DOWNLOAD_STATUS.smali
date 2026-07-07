.class public final enum Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;
.super Ljava/lang/Enum;
.source "VOOSMPType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayer/VOOSMPType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VO_OSMP_DOWNLOAD_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

.field public static final enum VO_OSMP_DOWNLOAD_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

.field public static final enum VO_OSMP_DOWNLOAD_PROGRESS:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

.field public static final enum VO_OSMP_DOWNLOAD_STALL:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

.field public static final enum VO_OSMP_DOWNLOAD_SUSPEND:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

.field private static final values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 340
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

    const-string v1, "VO_OSMP_DOWNLOAD_STALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;->VO_OSMP_DOWNLOAD_STALL:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

    .line 342
    new-instance v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

    const-string v3, "VO_OSMP_DOWNLOAD_PROGRESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;->VO_OSMP_DOWNLOAD_PROGRESS:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

    .line 344
    new-instance v3, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

    const-string v5, "VO_OSMP_DOWNLOAD_SUSPEND"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;->VO_OSMP_DOWNLOAD_SUSPEND:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

    .line 346
    new-instance v5, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

    const-string v7, "VO_OSMP_DOWNLOAD_MAX"

    const/4 v8, 0x3

    const/4 v9, -0x1

    invoke-direct {v5, v7, v8, v9}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;->VO_OSMP_DOWNLOAD_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 337
    sput-object v7, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

    .line 348
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

    move-result-object v0

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;->values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 352
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 353
    iput p3, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;
    .locals 3

    const/4 v0, 0x0

    .line 363
    :goto_0
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;->values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 365
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;->getValue()I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 366
    aget-object p0, v1, v0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 369
    :cond_1
    sget-object p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;->VO_OSMP_DOWNLOAD_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;
    .locals 1

    .line 337
    const-class v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;
    .locals 1

    .line 337
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

    invoke-virtual {v0}, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 358
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;->value:I

    return v0
.end method
