.class public final enum Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;
.super Ljava/lang/Enum;
.source "Card.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/network/mvvm/models/Card;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

.field public static final enum BIG_BANNER:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

.field public static final enum CHARACTER:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

.field public static final enum COMING_NEXT:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

.field public static final enum DEFAULT:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

.field public static final enum GAME:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

.field public static final enum GRID_SQUARE:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

.field public static final enum ICON:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

.field public static final enum LOGIN:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

.field public static final enum MENU_VIDEO:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

.field public static final enum MOVIE:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

.field public static final enum MOVIE_BASE:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

.field public static final enum MOVIE_COMPLETE:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

.field public static final enum NEW_ARRIVAL:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

.field public static final enum PAUSED:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

.field public static final enum SETTINGS:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

.field public static final enum SIDE_INFO:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

.field public static final enum SIDE_INFO_TEST_1:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

.field public static final enum SINGLE_LINE:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

.field public static final enum SMALL_BANNER:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

.field public static final enum SQUARE_BIG:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

.field public static final enum SQUARE_SMALL:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

.field public static final enum TEXT:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

.field public static final enum TRENDING:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

.field public static final enum TV_CHANNEL:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

.field public static final enum TV_SHOW:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

.field public static final enum VIDEO_GRID:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    .line 789
    new-instance v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    const-string v1, "MOVIE_COMPLETE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->MOVIE_COMPLETE:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    .line 790
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    const-string v3, "MOVIE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->MOVIE:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    .line 791
    new-instance v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    const-string v5, "MOVIE_BASE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->MOVIE_BASE:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    .line 792
    new-instance v5, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    const-string v7, "ICON"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->ICON:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    .line 793
    new-instance v7, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    const-string v9, "SQUARE_BIG"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->SQUARE_BIG:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    .line 794
    new-instance v9, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    const-string v11, "SINGLE_LINE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->SINGLE_LINE:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    .line 795
    new-instance v11, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    const-string v13, "GAME"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->GAME:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    .line 796
    new-instance v13, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    const-string v15, "SQUARE_SMALL"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->SQUARE_SMALL:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    .line 797
    new-instance v15, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    const-string v14, "DEFAULT"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->DEFAULT:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    .line 798
    new-instance v14, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    const-string v12, "SIDE_INFO"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->SIDE_INFO:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    .line 799
    new-instance v12, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    const-string v10, "SIDE_INFO_TEST_1"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->SIDE_INFO_TEST_1:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    .line 800
    new-instance v10, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    const-string v8, "TEXT"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->TEXT:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    .line 801
    new-instance v8, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    const-string v6, "CHARACTER"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->CHARACTER:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    .line 802
    new-instance v6, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    const-string v4, "GRID_SQUARE"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->GRID_SQUARE:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    .line 803
    new-instance v4, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    const-string v2, "VIDEO_GRID"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->VIDEO_GRID:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    .line 804
    new-instance v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    const-string v6, "MENU_VIDEO"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->MENU_VIDEO:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    .line 805
    new-instance v6, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    const-string v4, "TRENDING"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->TRENDING:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    .line 806
    new-instance v4, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    const-string v2, "COMING_NEXT"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->COMING_NEXT:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    .line 807
    new-instance v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    const-string v6, "NEW_ARRIVAL"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->NEW_ARRIVAL:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    .line 808
    new-instance v6, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    const-string v4, "BIG_BANNER"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->BIG_BANNER:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    .line 809
    new-instance v4, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    const-string v2, "SMALL_BANNER"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->SMALL_BANNER:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    .line 810
    new-instance v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    const-string v6, "LOGIN"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->LOGIN:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    .line 811
    new-instance v6, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    const-string v4, "SETTINGS"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->SETTINGS:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    .line 812
    new-instance v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    const-string v4, "PAUSED"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v6}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->PAUSED:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    .line 813
    new-instance v4, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    const-string v6, "TV_SHOW"

    move-object/from16 v26, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->TV_SHOW:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    .line 814
    new-instance v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    const-string v6, "TV_CHANNEL"

    move-object/from16 v27, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->TV_CHANNEL:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    const/16 v4, 0x1a

    new-array v4, v4, [Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

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

    aput-object v8, v4, v0

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

    aput-object v25, v4, v0

    const/16 v0, 0x17

    aput-object v26, v4, v0

    const/16 v0, 0x18

    aput-object v27, v4, v0

    const/16 v0, 0x19

    aput-object v2, v4, v0

    .line 788
    sput-object v4, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->$VALUES:[Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 788
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 788
    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    return-object p0
.end method

.method public static values()[Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;
    .locals 1

    .line 788
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->$VALUES:[Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    invoke-virtual {v0}, [Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    return-object v0
.end method
