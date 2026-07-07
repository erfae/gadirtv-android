.class public final enum Lcom/verimatrix/vdc/Monitor$StartCause;
.super Ljava/lang/Enum;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StartCause"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/verimatrix/vdc/Monitor$StartCause;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/verimatrix/vdc/Monitor$StartCause;

.field public static final enum APP_USER_BANNER:Lcom/verimatrix/vdc/Monitor$StartCause;

.field public static final enum APP_USER_CHANNEL:Lcom/verimatrix/vdc/Monitor$StartCause;

.field public static final enum APP_USER_FAVOURITE:Lcom/verimatrix/vdc/Monitor$StartCause;

.field public static final enum APP_USER_GUIDE:Lcom/verimatrix/vdc/Monitor$StartCause;

.field public static final enum APP_USER_INPUT:Lcom/verimatrix/vdc/Monitor$StartCause;

.field public static final enum APP_USER_OTHER:Lcom/verimatrix/vdc/Monitor$StartCause;

.field public static final enum APP_USER_UPDOWN:Lcom/verimatrix/vdc/Monitor$StartCause;

.field public static final enum DEVICE_AUTO_OTHER:Lcom/verimatrix/vdc/Monitor$StartCause;

.field public static final enum INT_AUTO_APPLICATION:Lcom/verimatrix/vdc/Monitor$StartCause;

.field public static final enum INT_AUTO_OTHER:Lcom/verimatrix/vdc/Monitor$StartCause;

.field public static final enum INT_AUTO_RECORDING:Lcom/verimatrix/vdc/Monitor$StartCause;

.field public static final enum INT_AUTO_RETRY:Lcom/verimatrix/vdc/Monitor$StartCause;

.field public static final enum INT_AUTO_SERVICE:Lcom/verimatrix/vdc/Monitor$StartCause;

.field public static final enum INT_AUTO_STARTUP:Lcom/verimatrix/vdc/Monitor$StartCause;

.field public static final enum INT_AUTO_VIEWING:Lcom/verimatrix/vdc/Monitor$StartCause;

.field public static final enum PANEL_USER_INPUT:Lcom/verimatrix/vdc/Monitor$StartCause;

.field public static final enum PANEL_USER_UPDOWN:Lcom/verimatrix/vdc/Monitor$StartCause;

.field public static final enum REMOTE_USER_BANNER:Lcom/verimatrix/vdc/Monitor$StartCause;

.field public static final enum REMOTE_USER_CHANNEL:Lcom/verimatrix/vdc/Monitor$StartCause;

.field public static final enum REMOTE_USER_FAVOURITE:Lcom/verimatrix/vdc/Monitor$StartCause;

.field public static final enum REMOTE_USER_GUIDE:Lcom/verimatrix/vdc/Monitor$StartCause;

.field public static final enum REMOTE_USER_INPUT:Lcom/verimatrix/vdc/Monitor$StartCause;

.field public static final enum REMOTE_USER_OTHER:Lcom/verimatrix/vdc/Monitor$StartCause;

.field public static final enum REMOTE_USER_UPDOWN:Lcom/verimatrix/vdc/Monitor$StartCause;

.field public static final enum UNKNOWN:Lcom/verimatrix/vdc/Monitor$StartCause;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 28

    .line 278
    new-instance v0, Lcom/verimatrix/vdc/Monitor$StartCause;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/verimatrix/vdc/Monitor$StartCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/verimatrix/vdc/Monitor$StartCause;->UNKNOWN:Lcom/verimatrix/vdc/Monitor$StartCause;

    .line 279
    new-instance v1, Lcom/verimatrix/vdc/Monitor$StartCause;

    const-string v3, "INT_AUTO_VIEWING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/verimatrix/vdc/Monitor$StartCause;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/verimatrix/vdc/Monitor$StartCause;->INT_AUTO_VIEWING:Lcom/verimatrix/vdc/Monitor$StartCause;

    .line 280
    new-instance v3, Lcom/verimatrix/vdc/Monitor$StartCause;

    const-string v5, "INT_AUTO_RECORDING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/verimatrix/vdc/Monitor$StartCause;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/verimatrix/vdc/Monitor$StartCause;->INT_AUTO_RECORDING:Lcom/verimatrix/vdc/Monitor$StartCause;

    .line 281
    new-instance v5, Lcom/verimatrix/vdc/Monitor$StartCause;

    const-string v7, "INT_AUTO_STARTUP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lcom/verimatrix/vdc/Monitor$StartCause;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/verimatrix/vdc/Monitor$StartCause;->INT_AUTO_STARTUP:Lcom/verimatrix/vdc/Monitor$StartCause;

    .line 282
    new-instance v7, Lcom/verimatrix/vdc/Monitor$StartCause;

    const-string v9, "INT_AUTO_SERVICE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Lcom/verimatrix/vdc/Monitor$StartCause;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/verimatrix/vdc/Monitor$StartCause;->INT_AUTO_SERVICE:Lcom/verimatrix/vdc/Monitor$StartCause;

    .line 283
    new-instance v9, Lcom/verimatrix/vdc/Monitor$StartCause;

    const-string v11, "INT_AUTO_APPLICATION"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v10}, Lcom/verimatrix/vdc/Monitor$StartCause;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/verimatrix/vdc/Monitor$StartCause;->INT_AUTO_APPLICATION:Lcom/verimatrix/vdc/Monitor$StartCause;

    .line 284
    new-instance v11, Lcom/verimatrix/vdc/Monitor$StartCause;

    const-string v13, "INT_AUTO_OTHER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v12}, Lcom/verimatrix/vdc/Monitor$StartCause;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/verimatrix/vdc/Monitor$StartCause;->INT_AUTO_OTHER:Lcom/verimatrix/vdc/Monitor$StartCause;

    .line 285
    new-instance v13, Lcom/verimatrix/vdc/Monitor$StartCause;

    const-string v15, "INT_AUTO_RETRY"

    const/4 v12, 0x7

    invoke-direct {v13, v15, v12, v14}, Lcom/verimatrix/vdc/Monitor$StartCause;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/verimatrix/vdc/Monitor$StartCause;->INT_AUTO_RETRY:Lcom/verimatrix/vdc/Monitor$StartCause;

    .line 286
    new-instance v15, Lcom/verimatrix/vdc/Monitor$StartCause;

    const-string v14, "REMOTE_USER_INPUT"

    const/16 v10, 0x8

    invoke-direct {v15, v14, v10, v12}, Lcom/verimatrix/vdc/Monitor$StartCause;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/verimatrix/vdc/Monitor$StartCause;->REMOTE_USER_INPUT:Lcom/verimatrix/vdc/Monitor$StartCause;

    .line 287
    new-instance v14, Lcom/verimatrix/vdc/Monitor$StartCause;

    const-string v12, "REMOTE_USER_UPDOWN"

    const/16 v8, 0x9

    invoke-direct {v14, v12, v8, v10}, Lcom/verimatrix/vdc/Monitor$StartCause;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/verimatrix/vdc/Monitor$StartCause;->REMOTE_USER_UPDOWN:Lcom/verimatrix/vdc/Monitor$StartCause;

    .line 288
    new-instance v12, Lcom/verimatrix/vdc/Monitor$StartCause;

    const-string v10, "REMOTE_USER_FAVOURITE"

    const/16 v6, 0xa

    invoke-direct {v12, v10, v6, v8}, Lcom/verimatrix/vdc/Monitor$StartCause;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/verimatrix/vdc/Monitor$StartCause;->REMOTE_USER_FAVOURITE:Lcom/verimatrix/vdc/Monitor$StartCause;

    .line 289
    new-instance v10, Lcom/verimatrix/vdc/Monitor$StartCause;

    const-string v8, "REMOTE_USER_CHANNEL"

    const/16 v4, 0xb

    invoke-direct {v10, v8, v4, v6}, Lcom/verimatrix/vdc/Monitor$StartCause;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/verimatrix/vdc/Monitor$StartCause;->REMOTE_USER_CHANNEL:Lcom/verimatrix/vdc/Monitor$StartCause;

    .line 290
    new-instance v8, Lcom/verimatrix/vdc/Monitor$StartCause;

    const-string v6, "REMOTE_USER_BANNER"

    const/16 v2, 0xc

    invoke-direct {v8, v6, v2, v4}, Lcom/verimatrix/vdc/Monitor$StartCause;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/verimatrix/vdc/Monitor$StartCause;->REMOTE_USER_BANNER:Lcom/verimatrix/vdc/Monitor$StartCause;

    .line 291
    new-instance v6, Lcom/verimatrix/vdc/Monitor$StartCause;

    const-string v4, "REMOTE_USER_GUIDE"

    move-object/from16 v16, v8

    const/16 v8, 0xd

    invoke-direct {v6, v4, v8, v2}, Lcom/verimatrix/vdc/Monitor$StartCause;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/verimatrix/vdc/Monitor$StartCause;->REMOTE_USER_GUIDE:Lcom/verimatrix/vdc/Monitor$StartCause;

    .line 292
    new-instance v4, Lcom/verimatrix/vdc/Monitor$StartCause;

    const-string v2, "REMOTE_USER_OTHER"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v8}, Lcom/verimatrix/vdc/Monitor$StartCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/verimatrix/vdc/Monitor$StartCause;->REMOTE_USER_OTHER:Lcom/verimatrix/vdc/Monitor$StartCause;

    .line 293
    new-instance v2, Lcom/verimatrix/vdc/Monitor$StartCause;

    const-string v8, "APP_USER_INPUT"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v8, v4, v6}, Lcom/verimatrix/vdc/Monitor$StartCause;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/verimatrix/vdc/Monitor$StartCause;->APP_USER_INPUT:Lcom/verimatrix/vdc/Monitor$StartCause;

    .line 294
    new-instance v8, Lcom/verimatrix/vdc/Monitor$StartCause;

    const-string v6, "APP_USER_UPDOWN"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v8, v6, v2, v4}, Lcom/verimatrix/vdc/Monitor$StartCause;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/verimatrix/vdc/Monitor$StartCause;->APP_USER_UPDOWN:Lcom/verimatrix/vdc/Monitor$StartCause;

    .line 295
    new-instance v6, Lcom/verimatrix/vdc/Monitor$StartCause;

    const-string v4, "APP_USER_FAVOURITE"

    move-object/from16 v20, v8

    const/16 v8, 0x11

    invoke-direct {v6, v4, v8, v2}, Lcom/verimatrix/vdc/Monitor$StartCause;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/verimatrix/vdc/Monitor$StartCause;->APP_USER_FAVOURITE:Lcom/verimatrix/vdc/Monitor$StartCause;

    .line 296
    new-instance v4, Lcom/verimatrix/vdc/Monitor$StartCause;

    const-string v2, "APP_USER_CHANNEL"

    move-object/from16 v21, v6

    const/16 v6, 0x12

    invoke-direct {v4, v2, v6, v8}, Lcom/verimatrix/vdc/Monitor$StartCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/verimatrix/vdc/Monitor$StartCause;->APP_USER_CHANNEL:Lcom/verimatrix/vdc/Monitor$StartCause;

    .line 297
    new-instance v2, Lcom/verimatrix/vdc/Monitor$StartCause;

    const-string v8, "APP_USER_BANNER"

    move-object/from16 v22, v4

    const/16 v4, 0x13

    invoke-direct {v2, v8, v4, v6}, Lcom/verimatrix/vdc/Monitor$StartCause;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/verimatrix/vdc/Monitor$StartCause;->APP_USER_BANNER:Lcom/verimatrix/vdc/Monitor$StartCause;

    .line 298
    new-instance v8, Lcom/verimatrix/vdc/Monitor$StartCause;

    const-string v6, "APP_USER_GUIDE"

    move-object/from16 v23, v2

    const/16 v2, 0x14

    invoke-direct {v8, v6, v2, v4}, Lcom/verimatrix/vdc/Monitor$StartCause;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/verimatrix/vdc/Monitor$StartCause;->APP_USER_GUIDE:Lcom/verimatrix/vdc/Monitor$StartCause;

    .line 299
    new-instance v6, Lcom/verimatrix/vdc/Monitor$StartCause;

    const-string v4, "APP_USER_OTHER"

    move-object/from16 v24, v8

    const/16 v8, 0x15

    invoke-direct {v6, v4, v8, v2}, Lcom/verimatrix/vdc/Monitor$StartCause;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/verimatrix/vdc/Monitor$StartCause;->APP_USER_OTHER:Lcom/verimatrix/vdc/Monitor$StartCause;

    .line 300
    new-instance v4, Lcom/verimatrix/vdc/Monitor$StartCause;

    const-string v2, "PANEL_USER_INPUT"

    move-object/from16 v25, v6

    const/16 v6, 0x16

    invoke-direct {v4, v2, v6, v8}, Lcom/verimatrix/vdc/Monitor$StartCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/verimatrix/vdc/Monitor$StartCause;->PANEL_USER_INPUT:Lcom/verimatrix/vdc/Monitor$StartCause;

    .line 301
    new-instance v2, Lcom/verimatrix/vdc/Monitor$StartCause;

    const-string v6, "PANEL_USER_UPDOWN"

    const/16 v8, 0x17

    move-object/from16 v26, v4

    const/16 v4, 0x16

    invoke-direct {v2, v6, v8, v4}, Lcom/verimatrix/vdc/Monitor$StartCause;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/verimatrix/vdc/Monitor$StartCause;->PANEL_USER_UPDOWN:Lcom/verimatrix/vdc/Monitor$StartCause;

    .line 302
    new-instance v4, Lcom/verimatrix/vdc/Monitor$StartCause;

    const-string v6, "DEVICE_AUTO_OTHER"

    const/16 v8, 0x18

    move-object/from16 v27, v2

    const/16 v2, 0x17

    invoke-direct {v4, v6, v8, v2}, Lcom/verimatrix/vdc/Monitor$StartCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/verimatrix/vdc/Monitor$StartCause;->DEVICE_AUTO_OTHER:Lcom/verimatrix/vdc/Monitor$StartCause;

    const/16 v2, 0x19

    new-array v2, v2, [Lcom/verimatrix/vdc/Monitor$StartCause;

    const/4 v6, 0x0

    aput-object v0, v2, v6

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    const/16 v0, 0x14

    aput-object v24, v2, v0

    const/16 v0, 0x15

    aput-object v25, v2, v0

    const/16 v0, 0x16

    aput-object v26, v2, v0

    const/16 v0, 0x17

    aput-object v27, v2, v0

    const/16 v0, 0x18

    aput-object v4, v2, v0

    .line 277
    sput-object v2, Lcom/verimatrix/vdc/Monitor$StartCause;->$VALUES:[Lcom/verimatrix/vdc/Monitor$StartCause;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 306
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 307
    iput p3, p0, Lcom/verimatrix/vdc/Monitor$StartCause;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$StartCause;
    .locals 1

    .line 277
    const-class v0, Lcom/verimatrix/vdc/Monitor$StartCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/verimatrix/vdc/Monitor$StartCause;

    return-object p0
.end method

.method public static values()[Lcom/verimatrix/vdc/Monitor$StartCause;
    .locals 1

    .line 277
    sget-object v0, Lcom/verimatrix/vdc/Monitor$StartCause;->$VALUES:[Lcom/verimatrix/vdc/Monitor$StartCause;

    invoke-virtual {v0}, [Lcom/verimatrix/vdc/Monitor$StartCause;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verimatrix/vdc/Monitor$StartCause;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 311
    iget v0, p0, Lcom/verimatrix/vdc/Monitor$StartCause;->value:I

    return v0
.end method
