.class public final enum Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;
.super Ljava/lang/Enum;
.source "voOSType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/voOSType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VOOSMP_PREFERENCE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

.field public static final enum VOOSMP_PREF_BA_START_DEFAULT:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

.field public static final enum VOOSMP_PREF_BA_START_FAST:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

.field public static final enum VOOSMP_PREF_CONNECTION_IPV4_PRIOR:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

.field public static final enum VOOSMP_PREF_CONNECTION_IPV6_PRIOR:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

.field public static final enum VOOSMP_PREF_DECODE_1ST_FRAME_ASAP:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

.field public static final enum VOOSMP_PREF_DECODE_1ST_FRAME_NORMAL:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

.field public static final enum VOOSMP_PREF_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

.field public static final enum VOOSMP_PREF_NO_STOP_KEEP_LAST_FRAME:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

.field public static final enum VOOSMP_PREF_SEI_POST_PROCESS_LOW_RES_ENHANCEMENT_OFF:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

.field public static final enum VOOSMP_PREF_SEI_POST_PROCESS_LOW_RES_ENHANCEMENT_ON:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

.field public static final enum VOOSMP_PREF_STOP_KEEP_LAST_FRAME:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 2275
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    const-string v1, "VOOSMP_PREF_STOP_KEEP_LAST_FRAME"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->VOOSMP_PREF_STOP_KEEP_LAST_FRAME:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    .line 2277
    new-instance v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    const-string v4, "VOOSMP_PREF_NO_STOP_KEEP_LAST_FRAME"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->VOOSMP_PREF_NO_STOP_KEEP_LAST_FRAME:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    .line 2279
    new-instance v4, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    const-string v6, "VOOSMP_PREF_BA_START_DEFAULT"

    const/4 v7, 0x7

    invoke-direct {v4, v6, v5, v7}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->VOOSMP_PREF_BA_START_DEFAULT:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    .line 2281
    new-instance v6, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    const-string v8, "VOOSMP_PREF_BA_START_FAST"

    const/4 v9, 0x3

    const/16 v10, 0x8

    invoke-direct {v6, v8, v9, v10}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->VOOSMP_PREF_BA_START_FAST:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    .line 2283
    new-instance v8, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    const-string v11, "VOOSMP_PREF_DECODE_1ST_FRAME_NORMAL"

    const/4 v12, 0x4

    const/16 v13, 0x9

    invoke-direct {v8, v11, v12, v13}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->VOOSMP_PREF_DECODE_1ST_FRAME_NORMAL:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    .line 2285
    new-instance v11, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    const-string v14, "VOOSMP_PREF_DECODE_1ST_FRAME_ASAP"

    const/4 v15, 0x5

    const/16 v12, 0xa

    invoke-direct {v11, v14, v15, v12}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->VOOSMP_PREF_DECODE_1ST_FRAME_ASAP:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    .line 2287
    new-instance v14, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    const-string v15, "VOOSMP_PREF_SEI_POST_PROCESS_LOW_RES_ENHANCEMENT_OFF"

    const/4 v9, 0x6

    const/16 v5, 0xd

    invoke-direct {v14, v15, v9, v5}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->VOOSMP_PREF_SEI_POST_PROCESS_LOW_RES_ENHANCEMENT_OFF:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    .line 2289
    new-instance v5, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    const-string v15, "VOOSMP_PREF_SEI_POST_PROCESS_LOW_RES_ENHANCEMENT_ON"

    const/16 v9, 0xe

    invoke-direct {v5, v15, v7, v9}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->VOOSMP_PREF_SEI_POST_PROCESS_LOW_RES_ENHANCEMENT_ON:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    .line 2293
    new-instance v9, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    const-string v15, "VOOSMP_PREF_CONNECTION_IPV6_PRIOR"

    const v7, 0x10001

    invoke-direct {v9, v15, v10, v7}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->VOOSMP_PREF_CONNECTION_IPV6_PRIOR:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    .line 2295
    new-instance v7, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    const-string v15, "VOOSMP_PREF_CONNECTION_IPV4_PRIOR"

    const v10, 0x10002

    invoke-direct {v7, v15, v13, v10}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->VOOSMP_PREF_CONNECTION_IPV4_PRIOR:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    .line 2297
    new-instance v10, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    const-string v15, "VOOSMP_PREF_MAX"

    const/4 v13, -0x1

    invoke-direct {v10, v15, v12, v13}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->VOOSMP_PREF_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    const/16 v13, 0xb

    new-array v13, v13, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    aput-object v0, v13, v2

    aput-object v1, v13, v3

    const/4 v0, 0x2

    aput-object v4, v13, v0

    const/4 v0, 0x3

    aput-object v6, v13, v0

    const/4 v0, 0x4

    aput-object v8, v13, v0

    const/4 v0, 0x5

    aput-object v11, v13, v0

    const/4 v0, 0x6

    aput-object v14, v13, v0

    const/4 v0, 0x7

    aput-object v5, v13, v0

    const/16 v0, 0x8

    aput-object v9, v13, v0

    const/16 v0, 0x9

    aput-object v7, v13, v0

    aput-object v10, v13, v12

    .line 2272
    sput-object v13, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->$VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 2302
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2303
    iput p3, p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;
    .locals 6

    .line 2313
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 2315
    invoke-virtual {v4}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->getValue()I

    move-result v5

    if-ne p0, v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2319
    :cond_1
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2320
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v2

    const-string p0, "@@@voOSType"

    const-string v1, "VOOSMP_PREFERENCE does not match. id = 0x%X"

    invoke-static {p0, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2322
    :cond_2
    sget-object p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->VOOSMP_PREF_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;
    .locals 1

    .line 2272
    const-class v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;
    .locals 1

    .line 2272
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->$VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 2308
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->value:I

    return v0
.end method
