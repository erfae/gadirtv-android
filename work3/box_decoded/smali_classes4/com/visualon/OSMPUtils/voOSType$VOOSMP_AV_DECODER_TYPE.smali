.class public final enum Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;
.super Ljava/lang/Enum;
.source "voOSType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/voOSType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VOOSMP_AV_DECODER_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

.field public static final enum VOOSMP_DECODER_TYPE_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

.field public static final enum VOOSMP_DEC_AUDIO_IOMX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

.field public static final enum VOOSMP_DEC_AUDIO_MEDIACODEC:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

.field public static final enum VOOSMP_DEC_AUDIO_SW:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

.field public static final enum VOOSMP_DEC_NONE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

.field public static final enum VOOSMP_DEC_VIDEO_HARDWARE_AUTO_SELECTED:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

.field public static final enum VOOSMP_DEC_VIDEO_IOMX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

.field public static final enum VOOSMP_DEC_VIDEO_MEDIACODEC:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

.field public static final enum VOOSMP_DEC_VIDEO_SW:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1904
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

    const-string v1, "VOOSMP_DEC_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->VOOSMP_DEC_NONE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

    .line 1907
    new-instance v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

    const-string v3, "VOOSMP_DEC_VIDEO_SW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->VOOSMP_DEC_VIDEO_SW:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

    .line 1909
    new-instance v3, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

    const-string v5, "VOOSMP_DEC_VIDEO_IOMX"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->VOOSMP_DEC_VIDEO_IOMX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

    .line 1911
    new-instance v5, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

    const-string v7, "VOOSMP_DEC_VIDEO_MEDIACODEC"

    const/4 v8, 0x3

    const/4 v9, 0x4

    invoke-direct {v5, v7, v8, v9}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->VOOSMP_DEC_VIDEO_MEDIACODEC:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

    .line 1915
    new-instance v7, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

    const-string v10, "VOOSMP_DEC_VIDEO_HARDWARE_AUTO_SELECTED"

    const/16 v11, 0x100

    invoke-direct {v7, v10, v9, v11}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->VOOSMP_DEC_VIDEO_HARDWARE_AUTO_SELECTED:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

    .line 1918
    new-instance v10, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

    const-string v11, "VOOSMP_DEC_AUDIO_SW"

    const/4 v12, 0x5

    const/high16 v13, 0x100000

    invoke-direct {v10, v11, v12, v13}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->VOOSMP_DEC_AUDIO_SW:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

    .line 1920
    new-instance v11, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

    const-string v13, "VOOSMP_DEC_AUDIO_MEDIACODEC"

    const/4 v14, 0x6

    const/high16 v15, 0x200000

    invoke-direct {v11, v13, v14, v15}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->VOOSMP_DEC_AUDIO_MEDIACODEC:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

    .line 1922
    new-instance v13, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

    const-string v15, "VOOSMP_DEC_AUDIO_IOMX"

    const/4 v14, 0x7

    const/high16 v12, 0x400000

    invoke-direct {v13, v15, v14, v12}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->VOOSMP_DEC_AUDIO_IOMX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

    .line 1925
    new-instance v12, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

    const-string v15, "VOOSMP_DECODER_TYPE_MAX"

    const/16 v14, 0x8

    const/4 v9, -0x1

    invoke-direct {v12, v15, v14, v9}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->VOOSMP_DECODER_TYPE_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

    const/16 v9, 0x9

    new-array v9, v9, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    const/4 v0, 0x4

    aput-object v7, v9, v0

    const/4 v0, 0x5

    aput-object v10, v9, v0

    const/4 v0, 0x6

    aput-object v11, v9, v0

    const/4 v0, 0x7

    aput-object v13, v9, v0

    aput-object v12, v9, v14

    .line 1901
    sput-object v9, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->$VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1931
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1932
    iput p3, p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1942
    :goto_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1944
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->getValue()I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 1945
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

    move-result-object p0

    aget-object p0, p0, v1

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1948
    :cond_1
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1949
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VOOSMP_AV_DECODER_TYPE does not match. id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@voOSType"

    invoke-static {v1, p0, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1951
    :cond_2
    sget-object p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->VOOSMP_DEC_NONE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;
    .locals 1

    .line 1901
    const-class v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;
    .locals 1

    .line 1901
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->$VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1937
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AV_DECODER_TYPE;->value:I

    return v0
.end method
