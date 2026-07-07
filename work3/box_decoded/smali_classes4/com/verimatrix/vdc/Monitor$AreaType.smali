.class public final enum Lcom/verimatrix/vdc/Monitor$AreaType;
.super Ljava/lang/Enum;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AreaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/verimatrix/vdc/Monitor$AreaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/verimatrix/vdc/Monitor$AreaType;

.field public static final enum CORE_UI:Lcom/verimatrix/vdc/Monitor$AreaType;

.field public static final enum EPG:Lcom/verimatrix/vdc/Monitor$AreaType;

.field public static final enum GENERIC1:Lcom/verimatrix/vdc/Monitor$AreaType;

.field public static final enum GENERIC10:Lcom/verimatrix/vdc/Monitor$AreaType;

.field public static final enum GENERIC11:Lcom/verimatrix/vdc/Monitor$AreaType;

.field public static final enum GENERIC12:Lcom/verimatrix/vdc/Monitor$AreaType;

.field public static final enum GENERIC13:Lcom/verimatrix/vdc/Monitor$AreaType;

.field public static final enum GENERIC14:Lcom/verimatrix/vdc/Monitor$AreaType;

.field public static final enum GENERIC15:Lcom/verimatrix/vdc/Monitor$AreaType;

.field public static final enum GENERIC16:Lcom/verimatrix/vdc/Monitor$AreaType;

.field public static final enum GENERIC17:Lcom/verimatrix/vdc/Monitor$AreaType;

.field public static final enum GENERIC18:Lcom/verimatrix/vdc/Monitor$AreaType;

.field public static final enum GENERIC19:Lcom/verimatrix/vdc/Monitor$AreaType;

.field public static final enum GENERIC2:Lcom/verimatrix/vdc/Monitor$AreaType;

.field public static final enum GENERIC20:Lcom/verimatrix/vdc/Monitor$AreaType;

.field public static final enum GENERIC21:Lcom/verimatrix/vdc/Monitor$AreaType;

.field public static final enum GENERIC22:Lcom/verimatrix/vdc/Monitor$AreaType;

.field public static final enum GENERIC23:Lcom/verimatrix/vdc/Monitor$AreaType;

.field public static final enum GENERIC24:Lcom/verimatrix/vdc/Monitor$AreaType;

.field public static final enum GENERIC3:Lcom/verimatrix/vdc/Monitor$AreaType;

.field public static final enum GENERIC4:Lcom/verimatrix/vdc/Monitor$AreaType;

.field public static final enum GENERIC5:Lcom/verimatrix/vdc/Monitor$AreaType;

.field public static final enum GENERIC6:Lcom/verimatrix/vdc/Monitor$AreaType;

.field public static final enum GENERIC7:Lcom/verimatrix/vdc/Monitor$AreaType;

.field public static final enum GENERIC8:Lcom/verimatrix/vdc/Monitor$AreaType;

.field public static final enum GENERIC9:Lcom/verimatrix/vdc/Monitor$AreaType;

.field public static final enum LOGIN:Lcom/verimatrix/vdc/Monitor$AreaType;

.field public static final enum ROLLBACK:Lcom/verimatrix/vdc/Monitor$AreaType;

.field public static final enum SEARCH:Lcom/verimatrix/vdc/Monitor$AreaType;

.field public static final enum SETTINGS:Lcom/verimatrix/vdc/Monitor$AreaType;

.field public static final enum UPGRADE:Lcom/verimatrix/vdc/Monitor$AreaType;

.field public static final enum VOD_PORTAL:Lcom/verimatrix/vdc/Monitor$AreaType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 35

    .line 145
    new-instance v0, Lcom/verimatrix/vdc/Monitor$AreaType;

    const-string v1, "EPG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/verimatrix/vdc/Monitor$AreaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/verimatrix/vdc/Monitor$AreaType;->EPG:Lcom/verimatrix/vdc/Monitor$AreaType;

    .line 146
    new-instance v1, Lcom/verimatrix/vdc/Monitor$AreaType;

    const-string v3, "VOD_PORTAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/verimatrix/vdc/Monitor$AreaType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/verimatrix/vdc/Monitor$AreaType;->VOD_PORTAL:Lcom/verimatrix/vdc/Monitor$AreaType;

    .line 147
    new-instance v3, Lcom/verimatrix/vdc/Monitor$AreaType;

    const-string v5, "SEARCH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/verimatrix/vdc/Monitor$AreaType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/verimatrix/vdc/Monitor$AreaType;->SEARCH:Lcom/verimatrix/vdc/Monitor$AreaType;

    .line 148
    new-instance v5, Lcom/verimatrix/vdc/Monitor$AreaType;

    const-string v7, "SETTINGS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/verimatrix/vdc/Monitor$AreaType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/verimatrix/vdc/Monitor$AreaType;->SETTINGS:Lcom/verimatrix/vdc/Monitor$AreaType;

    .line 149
    new-instance v7, Lcom/verimatrix/vdc/Monitor$AreaType;

    const-string v9, "CORE_UI"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/verimatrix/vdc/Monitor$AreaType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/verimatrix/vdc/Monitor$AreaType;->CORE_UI:Lcom/verimatrix/vdc/Monitor$AreaType;

    .line 150
    new-instance v9, Lcom/verimatrix/vdc/Monitor$AreaType;

    const-string v11, "LOGIN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/verimatrix/vdc/Monitor$AreaType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/verimatrix/vdc/Monitor$AreaType;->LOGIN:Lcom/verimatrix/vdc/Monitor$AreaType;

    .line 151
    new-instance v11, Lcom/verimatrix/vdc/Monitor$AreaType;

    const-string v13, "UPGRADE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/verimatrix/vdc/Monitor$AreaType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/verimatrix/vdc/Monitor$AreaType;->UPGRADE:Lcom/verimatrix/vdc/Monitor$AreaType;

    .line 152
    new-instance v13, Lcom/verimatrix/vdc/Monitor$AreaType;

    const-string v15, "ROLLBACK"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/verimatrix/vdc/Monitor$AreaType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/verimatrix/vdc/Monitor$AreaType;->ROLLBACK:Lcom/verimatrix/vdc/Monitor$AreaType;

    .line 153
    new-instance v15, Lcom/verimatrix/vdc/Monitor$AreaType;

    const-string v14, "GENERIC1"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/verimatrix/vdc/Monitor$AreaType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/verimatrix/vdc/Monitor$AreaType;->GENERIC1:Lcom/verimatrix/vdc/Monitor$AreaType;

    .line 154
    new-instance v14, Lcom/verimatrix/vdc/Monitor$AreaType;

    const-string v12, "GENERIC2"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/verimatrix/vdc/Monitor$AreaType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/verimatrix/vdc/Monitor$AreaType;->GENERIC2:Lcom/verimatrix/vdc/Monitor$AreaType;

    .line 155
    new-instance v12, Lcom/verimatrix/vdc/Monitor$AreaType;

    const-string v10, "GENERIC3"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/verimatrix/vdc/Monitor$AreaType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/verimatrix/vdc/Monitor$AreaType;->GENERIC3:Lcom/verimatrix/vdc/Monitor$AreaType;

    .line 156
    new-instance v10, Lcom/verimatrix/vdc/Monitor$AreaType;

    const-string v8, "GENERIC4"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lcom/verimatrix/vdc/Monitor$AreaType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/verimatrix/vdc/Monitor$AreaType;->GENERIC4:Lcom/verimatrix/vdc/Monitor$AreaType;

    .line 157
    new-instance v8, Lcom/verimatrix/vdc/Monitor$AreaType;

    const-string v6, "GENERIC5"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lcom/verimatrix/vdc/Monitor$AreaType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/verimatrix/vdc/Monitor$AreaType;->GENERIC5:Lcom/verimatrix/vdc/Monitor$AreaType;

    .line 158
    new-instance v6, Lcom/verimatrix/vdc/Monitor$AreaType;

    const-string v4, "GENERIC6"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lcom/verimatrix/vdc/Monitor$AreaType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/verimatrix/vdc/Monitor$AreaType;->GENERIC6:Lcom/verimatrix/vdc/Monitor$AreaType;

    .line 159
    new-instance v4, Lcom/verimatrix/vdc/Monitor$AreaType;

    const-string v2, "GENERIC7"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Lcom/verimatrix/vdc/Monitor$AreaType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/verimatrix/vdc/Monitor$AreaType;->GENERIC7:Lcom/verimatrix/vdc/Monitor$AreaType;

    .line 160
    new-instance v2, Lcom/verimatrix/vdc/Monitor$AreaType;

    const-string v6, "GENERIC8"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4, v4}, Lcom/verimatrix/vdc/Monitor$AreaType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/verimatrix/vdc/Monitor$AreaType;->GENERIC8:Lcom/verimatrix/vdc/Monitor$AreaType;

    .line 161
    new-instance v6, Lcom/verimatrix/vdc/Monitor$AreaType;

    const-string v4, "GENERIC9"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2, v2}, Lcom/verimatrix/vdc/Monitor$AreaType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/verimatrix/vdc/Monitor$AreaType;->GENERIC9:Lcom/verimatrix/vdc/Monitor$AreaType;

    .line 162
    new-instance v4, Lcom/verimatrix/vdc/Monitor$AreaType;

    const-string v2, "GENERIC10"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6, v6}, Lcom/verimatrix/vdc/Monitor$AreaType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/verimatrix/vdc/Monitor$AreaType;->GENERIC10:Lcom/verimatrix/vdc/Monitor$AreaType;

    .line 163
    new-instance v2, Lcom/verimatrix/vdc/Monitor$AreaType;

    const-string v6, "GENERIC11"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4, v4}, Lcom/verimatrix/vdc/Monitor$AreaType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/verimatrix/vdc/Monitor$AreaType;->GENERIC11:Lcom/verimatrix/vdc/Monitor$AreaType;

    .line 164
    new-instance v6, Lcom/verimatrix/vdc/Monitor$AreaType;

    const-string v4, "GENERIC12"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2, v2}, Lcom/verimatrix/vdc/Monitor$AreaType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/verimatrix/vdc/Monitor$AreaType;->GENERIC12:Lcom/verimatrix/vdc/Monitor$AreaType;

    .line 165
    new-instance v4, Lcom/verimatrix/vdc/Monitor$AreaType;

    const-string v2, "GENERIC13"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6, v6}, Lcom/verimatrix/vdc/Monitor$AreaType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/verimatrix/vdc/Monitor$AreaType;->GENERIC13:Lcom/verimatrix/vdc/Monitor$AreaType;

    .line 166
    new-instance v2, Lcom/verimatrix/vdc/Monitor$AreaType;

    const-string v6, "GENERIC14"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4, v4}, Lcom/verimatrix/vdc/Monitor$AreaType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/verimatrix/vdc/Monitor$AreaType;->GENERIC14:Lcom/verimatrix/vdc/Monitor$AreaType;

    .line 167
    new-instance v6, Lcom/verimatrix/vdc/Monitor$AreaType;

    const-string v4, "GENERIC15"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    move-object/from16 v25, v8

    const/16 v8, 0x16

    invoke-direct {v6, v4, v2, v8}, Lcom/verimatrix/vdc/Monitor$AreaType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/verimatrix/vdc/Monitor$AreaType;->GENERIC15:Lcom/verimatrix/vdc/Monitor$AreaType;

    .line 168
    new-instance v2, Lcom/verimatrix/vdc/Monitor$AreaType;

    const-string v4, "GENERIC16"

    const/16 v8, 0x17

    move-object/from16 v26, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v8, v6}, Lcom/verimatrix/vdc/Monitor$AreaType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/verimatrix/vdc/Monitor$AreaType;->GENERIC16:Lcom/verimatrix/vdc/Monitor$AreaType;

    .line 169
    new-instance v4, Lcom/verimatrix/vdc/Monitor$AreaType;

    const-string v6, "GENERIC17"

    const/16 v8, 0x18

    move-object/from16 v27, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v8, v2}, Lcom/verimatrix/vdc/Monitor$AreaType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/verimatrix/vdc/Monitor$AreaType;->GENERIC17:Lcom/verimatrix/vdc/Monitor$AreaType;

    .line 170
    new-instance v2, Lcom/verimatrix/vdc/Monitor$AreaType;

    const-string v6, "GENERIC18"

    const/16 v8, 0x19

    move-object/from16 v28, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v8, v4}, Lcom/verimatrix/vdc/Monitor$AreaType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/verimatrix/vdc/Monitor$AreaType;->GENERIC18:Lcom/verimatrix/vdc/Monitor$AreaType;

    .line 171
    new-instance v4, Lcom/verimatrix/vdc/Monitor$AreaType;

    const-string v6, "GENERIC19"

    const/16 v8, 0x1a

    move-object/from16 v29, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v8, v2}, Lcom/verimatrix/vdc/Monitor$AreaType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/verimatrix/vdc/Monitor$AreaType;->GENERIC19:Lcom/verimatrix/vdc/Monitor$AreaType;

    .line 172
    new-instance v2, Lcom/verimatrix/vdc/Monitor$AreaType;

    const-string v6, "GENERIC20"

    const/16 v8, 0x1b

    move-object/from16 v30, v4

    const/16 v4, 0x1b

    invoke-direct {v2, v6, v8, v4}, Lcom/verimatrix/vdc/Monitor$AreaType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/verimatrix/vdc/Monitor$AreaType;->GENERIC20:Lcom/verimatrix/vdc/Monitor$AreaType;

    .line 173
    new-instance v4, Lcom/verimatrix/vdc/Monitor$AreaType;

    const-string v6, "GENERIC21"

    const/16 v8, 0x1c

    move-object/from16 v31, v2

    const/16 v2, 0x1c

    invoke-direct {v4, v6, v8, v2}, Lcom/verimatrix/vdc/Monitor$AreaType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/verimatrix/vdc/Monitor$AreaType;->GENERIC21:Lcom/verimatrix/vdc/Monitor$AreaType;

    .line 174
    new-instance v2, Lcom/verimatrix/vdc/Monitor$AreaType;

    const-string v6, "GENERIC22"

    const/16 v8, 0x1d

    move-object/from16 v32, v4

    const/16 v4, 0x1d

    invoke-direct {v2, v6, v8, v4}, Lcom/verimatrix/vdc/Monitor$AreaType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/verimatrix/vdc/Monitor$AreaType;->GENERIC22:Lcom/verimatrix/vdc/Monitor$AreaType;

    .line 175
    new-instance v4, Lcom/verimatrix/vdc/Monitor$AreaType;

    const-string v6, "GENERIC23"

    const/16 v8, 0x1e

    move-object/from16 v33, v2

    const/16 v2, 0x1e

    invoke-direct {v4, v6, v8, v2}, Lcom/verimatrix/vdc/Monitor$AreaType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/verimatrix/vdc/Monitor$AreaType;->GENERIC23:Lcom/verimatrix/vdc/Monitor$AreaType;

    .line 176
    new-instance v2, Lcom/verimatrix/vdc/Monitor$AreaType;

    const-string v6, "GENERIC24"

    const/16 v8, 0x1f

    move-object/from16 v34, v4

    const/16 v4, 0x1f

    invoke-direct {v2, v6, v8, v4}, Lcom/verimatrix/vdc/Monitor$AreaType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/verimatrix/vdc/Monitor$AreaType;->GENERIC24:Lcom/verimatrix/vdc/Monitor$AreaType;

    const/16 v4, 0x20

    new-array v4, v4, [Lcom/verimatrix/vdc/Monitor$AreaType;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v25, v4, v0

    const/16 v0, 0xd

    aput-object v16, v4, v0

    const/16 v0, 0xe

    aput-object v17, v4, v0

    const/16 v0, 0xf

    aput-object v18, v4, v0

    const/16 v0, 0x10

    aput-object v19, v4, v0

    const/16 v0, 0x11

    aput-object v20, v4, v0

    const/16 v0, 0x12

    aput-object v21, v4, v0

    const/16 v0, 0x13

    aput-object v22, v4, v0

    const/16 v0, 0x14

    aput-object v23, v4, v0

    const/16 v0, 0x15

    aput-object v24, v4, v0

    const/16 v0, 0x16

    aput-object v26, v4, v0

    const/16 v0, 0x17

    aput-object v27, v4, v0

    const/16 v0, 0x18

    aput-object v28, v4, v0

    const/16 v0, 0x19

    aput-object v29, v4, v0

    const/16 v0, 0x1a

    aput-object v30, v4, v0

    const/16 v0, 0x1b

    aput-object v31, v4, v0

    const/16 v0, 0x1c

    aput-object v32, v4, v0

    const/16 v0, 0x1d

    aput-object v33, v4, v0

    const/16 v0, 0x1e

    aput-object v34, v4, v0

    const/16 v0, 0x1f

    aput-object v2, v4, v0

    .line 144
    sput-object v4, Lcom/verimatrix/vdc/Monitor$AreaType;->$VALUES:[Lcom/verimatrix/vdc/Monitor$AreaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 180
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 181
    iput p3, p0, Lcom/verimatrix/vdc/Monitor$AreaType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$AreaType;
    .locals 1

    .line 144
    const-class v0, Lcom/verimatrix/vdc/Monitor$AreaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/verimatrix/vdc/Monitor$AreaType;

    return-object p0
.end method

.method public static values()[Lcom/verimatrix/vdc/Monitor$AreaType;
    .locals 1

    .line 144
    sget-object v0, Lcom/verimatrix/vdc/Monitor$AreaType;->$VALUES:[Lcom/verimatrix/vdc/Monitor$AreaType;

    invoke-virtual {v0}, [Lcom/verimatrix/vdc/Monitor$AreaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verimatrix/vdc/Monitor$AreaType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 185
    iget v0, p0, Lcom/verimatrix/vdc/Monitor$AreaType;->value:I

    return v0
.end method
