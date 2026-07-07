.class public Lcom/google/vr/cardboard/PpiOverrides;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final PPI_OVERRIDES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "PpiOverrides"

.field private static supportedDisplaySizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/16 v0, 0x1f

    new-array v0, v0, [Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;

    .line 71
    new-instance v8, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;

    const-string v2, "Micromax"

    const/4 v3, 0x0

    const-string v4, "4560MMX"

    const/4 v5, 0x0

    const/high16 v6, 0x43590000    # 217.0f

    const/high16 v7, 0x43590000    # 217.0f

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/4 v1, 0x0

    aput-object v8, v0, v1

    new-instance v1, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;

    const-string v10, "HTC"

    const-string v11, "endeavoru"

    const-string v12, "HTC One X"

    const/4 v13, 0x0

    const/high16 v14, 0x439c0000    # 312.0f

    const/high16 v15, 0x439c0000    # 312.0f

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;

    const-string v4, "samsung"

    const-string v6, "SM-G920P"

    const/4 v7, 0x0

    const v8, 0x440fc000    # 575.0f

    const v9, 0x440fc000    # 575.0f

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;

    const-string v4, "samsung"

    const-string v6, "SM-G930"

    const v8, 0x44114000    # 581.0f

    const/high16 v9, 0x44110000    # 580.0f

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;

    const-string v4, "samsung"

    const-string v6, "SM-G9300"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;

    const-string v4, "samsung"

    const-string v6, "SM-G930A"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;

    const-string v4, "samsung"

    const-string v6, "SM-G930F"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;

    const-string v4, "samsung"

    const-string v6, "SM-G930P"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;

    const-string v4, "samsung"

    const-string v6, "SM-G930R4"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;

    const-string v4, "samsung"

    const-string v6, "SM-G930T"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;

    const-string v4, "samsung"

    const-string v6, "SM-G930V"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;

    const-string v4, "samsung"

    const-string v6, "SM-G930W8"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;

    const-string v4, "samsung"

    const-string v6, "SM-N915FY"

    const v8, 0x44074000    # 541.0f

    const v9, 0x44074000    # 541.0f

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;

    const-string v4, "samsung"

    const-string v6, "SM-N915A"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;

    const-string v4, "samsung"

    const-string v6, "SM-N915T"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;

    const-string v4, "samsung"

    const-string v6, "SM-N915K"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;

    const-string v4, "samsung"

    const-string v6, "SM-N915T"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;

    const-string v4, "samsung"

    const-string v6, "SM-N915G"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;

    const-string v4, "samsung"

    const-string v6, "SM-N915D"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;

    const-string v4, "BLU"

    const-string v5, "BLU"

    const-string v6, "Studio 5.0 HD LTE"

    const-string v7, "qcom"

    const/high16 v8, 0x43930000    # 294.0f

    const/high16 v9, 0x43930000    # 294.0f

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;

    const-string v4, "OnePlus"

    const-string v5, "A0001"

    const-string v6, "A0001"

    const-string v7, "bacon"

    const v8, 0x43c88000    # 401.0f

    const v9, 0x43c88000    # 401.0f

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;

    const-string v4, "THL"

    const-string v5, "THL"

    const-string v6, "thl 5000"

    const-string v7, "mt6592"

    const v8, 0x43dc8000    # 441.0f

    const v9, 0x43dc8000    # 441.0f

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;

    const v2, 0x43dcdeb8    # 441.74f

    .line 72
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const v3, 0x3b83126f    # 0.004f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const-string v4, "Google"

    const-string v5, "sailfish"

    const-string v6, "Pixel"

    const-string v7, "sailfish"

    move-object v3, v1

    move-object v8, v2

    move-object v9, v2

    move-object v10, v12

    invoke-direct/range {v3 .. v10}, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V

    const/16 v3, 0x16

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;

    const v3, 0x4406647b    # 537.57f

    .line 73
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const-string v5, "Google"

    const-string v6, "marlin"

    const-string v7, "Pixel XL"

    const-string v8, "marlin"

    move-object v4, v1

    move-object v9, v10

    move-object v11, v12

    invoke-direct/range {v4 .. v11}, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V

    const/16 v3, 0x17

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;

    const-string v4, "Google"

    const-string v5, "walleye"

    const/4 v6, 0x0

    const-string v7, "walleye"

    move-object v3, v1

    move-object v8, v2

    move-object v9, v2

    move-object v10, v12

    .line 74
    invoke-direct/range {v3 .. v10}, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;

    const v2, 0x3b96bb99    # 0.0046f

    .line 75
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const-string v4, "Google"

    const-string v5, "taimen"

    const-string v7, "taimen"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;

    const v2, 0x4402a852    # 522.63f

    .line 76
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const v2, 0x3b79096c    # 0.0038f

    .line 78
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v4, "Google"

    const-string v5, "21c8b5470a64adbb25bc84316cbc449361d86839"

    const/4 v7, 0x0

    move-object v3, v1

    move-object v8, v9

    move-object v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V

    const/16 v3, 0x1a

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;

    const-string v11, "Google"

    const-string v12, "6e2c7e24b7c7eae9fc94882c9f31befa00594872"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v10, v1

    move-object/from16 v17, v2

    .line 79
    invoke-direct/range {v10 .. v17}, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V

    const/16 v3, 0x1b

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;

    const-string v11, "LGE"

    const-string v12, "joan"

    const-string v14, "joan"

    move-object v10, v1

    .line 80
    invoke-direct/range {v10 .. v17}, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V

    const/16 v3, 0x1c

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;

    const-string v11, "LGE"

    const-string v12, "e44046539bb5b584279553ca6eacca937c8e16cf"

    const/4 v14, 0x0

    move-object v10, v1

    .line 81
    invoke-direct/range {v10 .. v17}, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;

    const-string v4, "Lenovo"

    const-string v5, "vega"

    const-string v7, "vega"

    const v8, 0x440658d5    # 537.388f

    const v9, 0x44067873

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 82
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/vr/cardboard/PpiOverrides;->PPI_OVERRIDES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPpiOverride(Landroid/content/Context;)Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;
    .locals 7

    .line 18
    new-instance v6, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;

    invoke-direct {v6}, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;-><init>()V

    .line 19
    sget-object v0, Lcom/google/vr/cardboard/PpiOverrides;->PPI_OVERRIDES:Ljava/util/List;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/google/vr/cardboard/PpiOverrides;->getPpiOverride(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "samsung"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 21
    invoke-static {p0}, Lcom/google/vr/cardboard/DisplayUtils;->getDefaultDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    .line 22
    invoke-static {p0}, Lcom/google/vr/cardboard/DisplayUtils;->getDisplayMetricsLandscape(Landroid/view/Display;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 23
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 24
    invoke-static {p0}, Lcom/google/vr/cardboard/PpiOverrides;->getSupportedDisplaySizes(Landroid/view/Display;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 26
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/util/Size;

    .line 28
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    .line 30
    :cond_0
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-eq p0, v1, :cond_1

    .line 31
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p0, p0

    int-to-float v0, v1

    div-float/2addr p0, v0

    .line 32
    sget-object v0, Lcom/google/vr/cardboard/PpiOverrides;->TAG:Ljava/lang/String;

    const/16 v1, 0x3d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Non-native screen resolution; scaling DPI by: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-virtual {v6}, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->getXPpi()F

    move-result v0

    mul-float v0, v0, p0

    invoke-virtual {v6, v0}, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->setXPpi(F)Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;

    .line 34
    invoke-virtual {v6}, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->getYPpi()F

    move-result v0

    mul-float v0, v0, p0

    invoke-virtual {v6, v0}, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->setYPpi(F)Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;

    :cond_1
    return-object v6

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPpiOverride(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;",
            ")Z"
        }
    .end annotation

    .line 2
    invoke-static {p2}, Lcom/google/vr/cardboard/PpiOverrides;->hashString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;

    .line 4
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;->isMatching(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 5
    invoke-virtual {v1, p1, v0, p3, p4}, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;->isMatching(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    :cond_1
    sget-object p0, Lcom/google/vr/cardboard/PpiOverrides;->TAG:Ljava/lang/String;

    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    iget-object p2, v1, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;->manufacturer:Ljava/lang/String;

    aput-object p2, p1, v2

    iget-object p2, v1, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;->device:Ljava/lang/String;

    const/4 p3, 0x1

    aput-object p2, p1, p3

    const/4 p2, 0x2

    iget-object p4, v1, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;->model:Ljava/lang/String;

    aput-object p4, p1, p2

    const/4 p2, 0x3

    iget-object p4, v1, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;->hardware:Ljava/lang/String;

    aput-object p4, p1, p2

    const/4 p2, 0x4

    iget-object p4, v1, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;->xPpi:Ljava/lang/Float;

    aput-object p4, p1, p2

    const/4 p2, 0x5

    iget-object p4, v1, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;->yPpi:Ljava/lang/Float;

    aput-object p4, p1, p2

    const/4 p2, 0x6

    iget-object p4, v1, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;->bottomBezelHeight:Ljava/lang/Float;

    aput-object p4, p1, p2

    const-string p2, "Found override: {MANUFACTURER=%s, DEVICE=%s, MODEL=%s, HARDWARE=%s} : x_ppi=%f, y_ppi=%f, bottom_bezel_height=%f)"

    .line 7
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object p0, v1, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;->xPpi:Ljava/lang/Float;

    if-eqz p0, :cond_2

    .line 10
    iget-object p0, v1, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;->xPpi:Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p5, p0}, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->setXPpi(F)Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;

    .line 11
    :cond_2
    iget-object p0, v1, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;->yPpi:Ljava/lang/Float;

    if-eqz p0, :cond_3

    .line 12
    iget-object p0, v1, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;->yPpi:Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p5, p0}, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->setYPpi(F)Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;

    .line 13
    :cond_3
    iget-object p0, v1, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;->bottomBezelHeight:Ljava/lang/Float;

    if-eqz p0, :cond_4

    .line 14
    iget-object p0, v1, Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;->bottomBezelHeight:Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p5, p0}, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->setBottomBezelHeight(F)Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;

    :cond_4
    return p3

    :cond_5
    return v2
.end method

.method private static getSupportedDisplaySizes(Landroid/view/Display;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Display;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 50
    :cond_0
    sget-object v0, Lcom/google/vr/cardboard/PpiOverrides;->supportedDisplaySizes:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    return-object v0

    .line 52
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/vr/cardboard/PpiOverrides;->supportedDisplaySizes:Ljava/util/ArrayList;

    .line 53
    invoke-virtual {p0}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 55
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    .line 56
    sget-object v3, Lcom/google/vr/cardboard/PpiOverrides;->supportedDisplaySizes:Ljava/util/ArrayList;

    new-instance v4, Landroid/util/Size;

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v2

    invoke-direct {v4, v5, v2}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    :cond_2
    sget-object p0, Lcom/google/vr/cardboard/PpiOverrides;->supportedDisplaySizes:Ljava/util/ArrayList;

    return-object p0
.end method

.method private static hashString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    :try_start_0
    const-string v0, "SHA-1"

    .line 59
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 60
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 62
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-byte v5, v0, v4

    const-string v6, "%02x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 63
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 67
    :catch_0
    sget-object v0, Lcom/google/vr/cardboard/PpiOverrides;->TAG:Ljava/lang/String;

    const-string v1, "SHA-256 is missing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static registerOverrides()V
    .locals 5

    .line 44
    sget-object v0, Lcom/google/vr/cardboard/PpiOverrides;->PPI_OVERRIDES:Ljava/util/List;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/vr/cardboard/PpiOverrides;->registerOverridesInternal(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static registerOverridesInternal(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/vr/cardboard/PpiOverrides$PpiOverride;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-static {}, Lcom/google/vr/cardboard/ConfigUtils;->readDisplayParamsFromExternalStorage()Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 38
    new-instance v1, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;

    invoke-direct {v1}, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;->clone()Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;

    move-result-object v1

    :goto_0
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, v1

    .line 39
    invoke-static/range {v2 .. v7}, Lcom/google/vr/cardboard/PpiOverrides;->getPpiOverride(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 40
    invoke-static {v0, v1}, Lcom/google/protobuf/nano/MessageNano;->messageNanoEquals(Lcom/google/protobuf/nano/MessageNano;Lcom/google/protobuf/nano/MessageNano;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 41
    sget-object p0, Lcom/google/vr/cardboard/PpiOverrides;->TAG:Ljava/lang/String;

    const-string p1, "Applying display param override."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-static {v1}, Lcom/google/vr/cardboard/ConfigUtils;->writeDisplayParamsToExternalStorage(Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;)Z

    :cond_1
    return-void
.end method

.method public static setSupportedDisplaySizesForTesting(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/util/Size;",
            ">;)V"
        }
    .end annotation

    .line 46
    sput-object p0, Lcom/google/vr/cardboard/PpiOverrides;->supportedDisplaySizes:Ljava/util/ArrayList;

    return-void
.end method
