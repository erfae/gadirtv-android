.class public final enum Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;
.super Ljava/lang/Enum;
.source "VOOSMPType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayer/VOOSMPType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VO_OSMP_SRC_FORMAT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

.field public static final enum VO_OSMP_SRC_AUTO_DETECT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

.field public static final enum VO_OSMP_SRC_FFLOCAL_MP4:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

.field public static final enum VO_OSMP_SRC_FFMOVIE_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

.field public static final enum VO_OSMP_SRC_FFSTREAMING_DASH:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

.field public static final enum VO_OSMP_SRC_FFSTREAMING_HLS:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

.field public static final enum VO_OSMP_SRC_FFSTREAMING_HTTPPD:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

.field public static final enum VO_OSMP_SRC_FFSTREAMING_PUSHPD:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

.field public static final enum VO_OSMP_SRC_FFSTREAMING_RTSP:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

.field public static final enum VO_OSMP_SRC_FFSTREAMING_SDP:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

.field public static final enum VO_OSMP_SRC_FFSTREAMING_SSSTR:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

.field private static final values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 622
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    const-string v1, "VO_OSMP_SRC_AUTO_DETECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->VO_OSMP_SRC_AUTO_DETECT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    .line 624
    new-instance v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    const-string v3, "VO_OSMP_SRC_FFLOCAL_MP4"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->VO_OSMP_SRC_FFLOCAL_MP4:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    .line 626
    new-instance v3, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    const-string v5, "VO_OSMP_SRC_FFSTREAMING_RTSP"

    const/4 v6, 0x2

    const v7, 0x8000100

    invoke-direct {v3, v5, v6, v7}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->VO_OSMP_SRC_FFSTREAMING_RTSP:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    .line 628
    new-instance v5, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    const-string v7, "VO_OSMP_SRC_FFSTREAMING_SDP"

    const/4 v8, 0x3

    const v9, 0x8000200

    invoke-direct {v5, v7, v8, v9}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->VO_OSMP_SRC_FFSTREAMING_SDP:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    .line 630
    new-instance v7, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    const-string v9, "VO_OSMP_SRC_FFSTREAMING_HLS"

    const/4 v10, 0x4

    const v11, 0x8000400

    invoke-direct {v7, v9, v10, v11}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->VO_OSMP_SRC_FFSTREAMING_HLS:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    .line 632
    new-instance v9, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    const-string v11, "VO_OSMP_SRC_FFSTREAMING_SSSTR"

    const/4 v12, 0x5

    const v13, 0x8000800

    invoke-direct {v9, v11, v12, v13}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->VO_OSMP_SRC_FFSTREAMING_SSSTR:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    .line 634
    new-instance v11, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    const-string v13, "VO_OSMP_SRC_FFSTREAMING_DASH"

    const/4 v14, 0x6

    const v15, 0x8001000

    invoke-direct {v11, v13, v14, v15}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->VO_OSMP_SRC_FFSTREAMING_DASH:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    .line 636
    new-instance v13, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    const-string v15, "VO_OSMP_SRC_FFSTREAMING_HTTPPD"

    const/4 v14, 0x7

    const v12, 0x8002000

    invoke-direct {v13, v15, v14, v12}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->VO_OSMP_SRC_FFSTREAMING_HTTPPD:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    .line 638
    new-instance v12, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    const-string v15, "VO_OSMP_SRC_FFSTREAMING_PUSHPD"

    const/16 v14, 0x8

    const/high16 v10, 0x8010000

    invoke-direct {v12, v15, v14, v10}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->VO_OSMP_SRC_FFSTREAMING_PUSHPD:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    .line 641
    new-instance v10, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    const-string v15, "VO_OSMP_SRC_FFMOVIE_MAX"

    const/16 v14, 0x9

    const/4 v8, -0x1

    invoke-direct {v10, v15, v14, v8}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->VO_OSMP_SRC_FFMOVIE_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    const/16 v8, 0xa

    new-array v8, v8, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    aput-object v3, v8, v6

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v12, v8, v0

    aput-object v10, v8, v14

    .line 619
    sput-object v8, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    .line 643
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    move-result-object v0

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 647
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 648
    iput p3, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 658
    :goto_0
    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 660
    aget-object v3, v2, v1

    invoke-virtual {v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->getValue()I

    move-result v3

    if-ne v3, p0, :cond_0

    .line 661
    aget-object p0, v2, v1

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 664
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VO_OSMP_SRC_FORMAT isn\'t match. id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPType"

    invoke-static {v1, p0, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 665
    sget-object p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->VO_OSMP_SRC_FFMOVIE_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;
    .locals 1

    .line 619
    const-class v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;
    .locals 1

    .line 619
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    invoke-virtual {v0}, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 653
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->value:I

    return v0
.end method
