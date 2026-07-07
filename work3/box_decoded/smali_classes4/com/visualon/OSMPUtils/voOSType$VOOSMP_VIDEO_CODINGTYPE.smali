.class public final enum Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;
.super Ljava/lang/Enum;
.source "voOSType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/voOSType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VOOSMP_VIDEO_CODINGTYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

.field public static final enum VOOSMP_VIDEO_CodingDIVX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

.field public static final enum VOOSMP_VIDEO_CodingH263:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

.field public static final enum VOOSMP_VIDEO_CodingH264:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

.field public static final enum VOOSMP_VIDEO_CodingH265:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

.field public static final enum VOOSMP_VIDEO_CodingMJPEG:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

.field public static final enum VOOSMP_VIDEO_CodingMPEG2:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

.field public static final enum VOOSMP_VIDEO_CodingMPEG4:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

.field public static final enum VOOSMP_VIDEO_CodingRV:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

.field public static final enum VOOSMP_VIDEO_CodingS263:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

.field public static final enum VOOSMP_VIDEO_CodingUnused:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

.field public static final enum VOOSMP_VIDEO_CodingVC1:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

.field public static final enum VOOSMP_VIDEO_CodingVP6:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

.field public static final enum VOOSMP_VIDEO_CodingVP7:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

.field public static final enum VOOSMP_VIDEO_CodingVP8:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

.field public static final enum VOOSMP_VIDEO_CodingWMV:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

.field public static final enum VOOSMP_VIDEO_Coding_Max:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 824
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    const-string v1, "VOOSMP_VIDEO_CodingUnused"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_CodingUnused:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    .line 826
    new-instance v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    const-string v3, "VOOSMP_VIDEO_CodingMPEG2"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_CodingMPEG2:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    .line 828
    new-instance v3, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    const-string v5, "VOOSMP_VIDEO_CodingH263"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_CodingH263:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    .line 830
    new-instance v5, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    const-string v7, "VOOSMP_VIDEO_CodingS263"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_CodingS263:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    .line 832
    new-instance v7, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    const-string v9, "VOOSMP_VIDEO_CodingMPEG4"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_CodingMPEG4:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    .line 834
    new-instance v9, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    const-string v11, "VOOSMP_VIDEO_CodingH264"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_CodingH264:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    .line 836
    new-instance v11, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    const-string v13, "VOOSMP_VIDEO_CodingWMV"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_CodingWMV:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    .line 838
    new-instance v13, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    const-string v15, "VOOSMP_VIDEO_CodingRV"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_CodingRV:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    .line 840
    new-instance v15, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    const-string v14, "VOOSMP_VIDEO_CodingMJPEG"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_CodingMJPEG:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    .line 842
    new-instance v14, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    const-string v12, "VOOSMP_VIDEO_CodingDIVX"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_CodingDIVX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    .line 844
    new-instance v12, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    const-string v10, "VOOSMP_VIDEO_CodingVP6"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_CodingVP6:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    .line 846
    new-instance v10, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    const-string v8, "VOOSMP_VIDEO_CodingVP8"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_CodingVP8:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    .line 848
    new-instance v8, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    const-string v6, "VOOSMP_VIDEO_CodingVP7"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_CodingVP7:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    .line 850
    new-instance v6, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    const-string v4, "VOOSMP_VIDEO_CodingVC1"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_CodingVC1:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    .line 852
    new-instance v4, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    const-string v2, "VOOSMP_VIDEO_CodingH265"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_CodingH265:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    .line 854
    new-instance v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    const-string v6, "VOOSMP_VIDEO_Coding_Max"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    move-object/from16 v18, v8

    const v8, 0x7fffffff

    invoke-direct {v2, v6, v4, v8}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_Coding_Max:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    const/16 v6, 0x10

    new-array v6, v6, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    const/4 v8, 0x0

    aput-object v0, v6, v8

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v18, v6, v0

    const/16 v0, 0xd

    aput-object v16, v6, v0

    const/16 v0, 0xe

    aput-object v17, v6, v0

    aput-object v2, v6, v4

    .line 821
    sput-object v6, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->$VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 859
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 860
    iput p3, p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;
    .locals 1

    .line 870
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    move-result-object v0

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 871
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0

    .line 873
    :cond_0
    sget-object p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_Coding_Max:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;
    .locals 1

    .line 821
    const-class v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;
    .locals 1

    .line 821
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->$VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 865
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->value:I

    return v0
.end method
