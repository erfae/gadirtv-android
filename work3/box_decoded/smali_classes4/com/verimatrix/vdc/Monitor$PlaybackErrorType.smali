.class public final enum Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;
.super Ljava/lang/Enum;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlaybackErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;

.field public static final enum CONTROL_WORD_ERROR:Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;

.field public static final enum DESCRAMBLER_ERROR:Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;

.field public static final enum FRAME_ERROR:Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;

.field public static final enum FRAME_LOSS:Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;

.field public static final enum KEY_FAILURE:Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;

.field public static final enum NO_ECM_SECTION:Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;

.field public static final enum NO_EMM_SECTION:Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;

.field public static final enum OVERFLOW:Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;

.field public static final enum PLAYER_SPECIFIC_CODE:Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;

.field public static final enum UNDERFLOW:Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;

.field public static final enum UNKNOWN:Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 231
    new-instance v0, Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;

    const-string v1, "PLAYER_SPECIFIC_CODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;->PLAYER_SPECIFIC_CODE:Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;

    .line 232
    new-instance v1, Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;

    const-string v3, "FRAME_ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;->FRAME_ERROR:Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;

    .line 233
    new-instance v3, Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;

    const-string v5, "FRAME_LOSS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;->FRAME_LOSS:Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;

    .line 234
    new-instance v5, Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;

    const-string v7, "UNDERFLOW"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;->UNDERFLOW:Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;

    .line 235
    new-instance v7, Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;

    const-string v9, "OVERFLOW"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;->OVERFLOW:Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;

    .line 236
    new-instance v9, Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;

    const-string v11, "NO_ECM_SECTION"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;->NO_ECM_SECTION:Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;

    .line 237
    new-instance v11, Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;

    const-string v13, "NO_EMM_SECTION"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;->NO_EMM_SECTION:Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;

    .line 238
    new-instance v13, Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;

    const-string v15, "CONTROL_WORD_ERROR"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;->CONTROL_WORD_ERROR:Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;

    .line 239
    new-instance v15, Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;

    const-string v14, "KEY_FAILURE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;->KEY_FAILURE:Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;

    .line 240
    new-instance v14, Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;

    const-string v12, "DESCRAMBLER_ERROR"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;->DESCRAMBLER_ERROR:Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;

    .line 241
    new-instance v12, Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;

    const-string v10, "UNKNOWN"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;->UNKNOWN:Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;

    const/16 v10, 0xb

    new-array v10, v10, [Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    .line 230
    sput-object v10, Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;->$VALUES:[Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 245
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 246
    iput p3, p0, Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;
    .locals 1

    .line 230
    const-class v0, Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;

    return-object p0
.end method

.method public static values()[Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;
    .locals 1

    .line 230
    sget-object v0, Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;->$VALUES:[Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;

    invoke-virtual {v0}, [Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 250
    iget v0, p0, Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;->value:I

    return v0
.end method
