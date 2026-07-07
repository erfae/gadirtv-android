.class public final Lcom/google/ads/interactivemedia/v3/internal/op;
.super Ljava/lang/Object;
.source "IMASDK"


# static fields
.field public static final synthetic a:I

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/ads/interactivemedia/v3/internal/oj;",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/oa;",
            ">;>;"
        }
    .end annotation
.end field

.field private static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^\\D?(\\d+)$"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/op;->b:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/op;->c:Ljava/util/HashMap;

    const/4 v0, -0x1

    sput v0, Lcom/google/ads/interactivemedia/v3/internal/op;->d:I

    return-void
.end method

.method public static a(Lcom/google/ads/interactivemedia/v3/internal/cz;)Landroid/util/Pair;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/cz;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/cz;->i:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const-string v3, "\\."

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:Ljava/lang/String;

    const-string v4, "video/dolby-vision"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v5, 0x200

    const/16 v7, 0x100

    const/16 v8, 0x80

    const/16 v9, 0x40

    const/4 v11, 0x0

    const/16 v12, 0x20

    const/16 v13, 0x10

    const/16 v14, 0x8

    const/4 v15, 0x3

    const/4 v6, 0x4

    const-string v10, "MediaCodecUtil"

    const/4 v4, 0x2

    const/4 v2, 0x1

    if-eqz v3, :cond_d

    .line 6
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/cz;->i:Ljava/lang/String;

    .line 7
    array-length v3, v1

    if-ge v3, v15, :cond_2

    .line 8
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring malformed Dolby Vision codec string: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/String;

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 9
    :goto_0
    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v2, 0x0

    goto/16 :goto_d

    .line 8
    :cond_2
    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/op;->b:Ljava/util/regex/Pattern;

    .line 10
    aget-object v15, v1, v2

    invoke-virtual {v3, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 11
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v15

    if-nez v15, :cond_4

    .line 12
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring malformed Dolby Vision codec string: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 13
    :cond_3
    new-instance v0, Ljava/lang/String;

    .line 12
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 13
    :goto_2
    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    :goto_3
    const/4 v3, 0x0

    goto/16 :goto_6

    .line 35
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    const-string v3, "09"

    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v3, 0x9

    goto :goto_5

    :pswitch_1
    const-string v3, "08"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v3, 0x8

    goto :goto_5

    :pswitch_2
    const-string v3, "07"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x7

    goto :goto_5

    :pswitch_3
    const-string v3, "06"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x6

    goto :goto_5

    :pswitch_4
    const-string v3, "05"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x5

    goto :goto_5

    :pswitch_5
    const-string v3, "04"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x4

    goto :goto_5

    :pswitch_6
    const-string v3, "03"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x3

    goto :goto_5

    :pswitch_7
    const-string v3, "02"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x2

    goto :goto_5

    :pswitch_8
    const-string v3, "01"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    goto :goto_5

    :pswitch_9
    const-string v3, "00"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v3, -0x1

    :goto_5
    packed-switch v3, :pswitch_data_1

    goto :goto_3

    .line 15
    :pswitch_a
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_6

    .line 16
    :pswitch_b
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_6

    .line 17
    :pswitch_c
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_6

    .line 18
    :pswitch_d
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_6

    .line 19
    :pswitch_e
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_6

    .line 20
    :pswitch_f
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_6

    .line 21
    :pswitch_10
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_6

    .line 22
    :pswitch_11
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_6

    .line 23
    :pswitch_12
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_6

    .line 24
    :pswitch_13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_6
    if-nez v3, :cond_8

    .line 25
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unknown Dolby Vision profile string: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 26
    :cond_7
    new-instance v0, Ljava/lang/String;

    .line 25
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 26
    :goto_7
    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 27
    :cond_8
    aget-object v0, v1, v4

    if-nez v0, :cond_9

    :goto_8
    const/4 v1, 0x0

    goto/16 :goto_b

    .line 39
    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_2

    goto/16 :goto_9

    :pswitch_14
    const-string v1, "09"

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v16, 0x8

    goto :goto_a

    :pswitch_15
    const-string v1, "08"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v16, 0x7

    goto :goto_a

    :pswitch_16
    const-string v1, "07"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v16, 0x6

    goto :goto_a

    :pswitch_17
    const-string v1, "06"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v16, 0x5

    goto :goto_a

    :pswitch_18
    const-string v1, "05"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v16, 0x4

    goto :goto_a

    :pswitch_19
    const-string v1, "04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v16, 0x3

    goto :goto_a

    :pswitch_1a
    const-string v1, "03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v16, 0x2

    goto :goto_a

    :pswitch_1b
    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v16, 0x1

    goto :goto_a

    :pswitch_1c
    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v16, 0x0

    goto :goto_a

    :cond_a
    :goto_9
    const/16 v16, -0x1

    :goto_a
    packed-switch v16, :pswitch_data_3

    goto :goto_8

    .line 28
    :pswitch_1d
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_b

    .line 29
    :pswitch_1e
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_b

    .line 30
    :pswitch_1f
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_b

    .line 31
    :pswitch_20
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_b

    .line 32
    :pswitch_21
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_b

    .line 33
    :pswitch_22
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_b

    .line 34
    :pswitch_23
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_b

    .line 35
    :pswitch_24
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_b

    .line 36
    :pswitch_25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_b
    if-nez v1, :cond_c

    .line 37
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unknown Dolby Vision level string: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 38
    :cond_b
    new-instance v0, Ljava/lang/String;

    .line 37
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 38
    :goto_c
    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 37
    :cond_c
    new-instance v2, Landroid/util/Pair;

    .line 39
    invoke-direct {v2, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_d
    return-object v2

    .line 40
    :cond_d
    aget-object v3, v1, v11

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_0

    goto :goto_e

    :sswitch_0
    const-string v15, "vp09"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x2

    goto :goto_f

    :sswitch_1
    const-string v15, "mp4a"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x6

    goto :goto_f

    :sswitch_2
    const-string v15, "hvc1"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x4

    goto :goto_f

    :sswitch_3
    const-string v15, "hev1"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x3

    goto :goto_f

    :sswitch_4
    const-string v15, "avc2"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x1

    goto :goto_f

    :sswitch_5
    const-string v15, "avc1"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x0

    goto :goto_f

    :sswitch_6
    const-string v15, "av01"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x5

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v3, -0x1

    :goto_f
    const/16 v15, 0x800

    const/16 v9, 0x1e

    const/16 v7, 0x14

    const/16 v17, 0x1000

    packed-switch v3, :pswitch_data_4

    const/4 v0, 0x0

    return-object v0

    .line 41
    :pswitch_26
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/cz;->i:Ljava/lang/String;

    .line 42
    array-length v3, v1

    const/4 v5, 0x3

    if-eq v3, v5, :cond_11

    .line 43
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring malformed MP4A codec string: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 44
    :cond_f
    new-instance v0, Ljava/lang/String;

    .line 43
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 44
    :goto_10
    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_11
    const/4 v2, 0x0

    goto/16 :goto_15

    .line 45
    :cond_11
    :try_start_0
    aget-object v3, v1, v2

    invoke-static {v3, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "audio/mp4a-latm"

    .line 46
    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/abm;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 47
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 48
    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0x11

    if-eq v1, v3, :cond_17

    if-eq v1, v7, :cond_16

    const/16 v3, 0x17

    if-eq v1, v3, :cond_15

    const/16 v3, 0x1d

    if-eq v1, v3, :cond_14

    const/16 v3, 0x27

    if-eq v1, v3, :cond_13

    const/16 v3, 0x2a

    if-eq v1, v3, :cond_12

    packed-switch v1, :pswitch_data_5

    const/4 v1, -0x1

    const/4 v6, -0x1

    goto :goto_13

    :pswitch_27
    const/4 v1, -0x1

    const/4 v6, 0x6

    goto :goto_13

    :pswitch_28
    const/4 v1, -0x1

    const/4 v6, 0x5

    goto :goto_13

    :goto_12
    :pswitch_29
    const/4 v1, -0x1

    goto :goto_13

    :pswitch_2a
    const/4 v1, -0x1

    const/4 v6, 0x3

    goto :goto_13

    :pswitch_2b
    const/4 v1, -0x1

    const/4 v6, 0x2

    goto :goto_13

    :pswitch_2c
    const/4 v1, -0x1

    const/4 v6, 0x1

    goto :goto_13

    :cond_12
    const/16 v6, 0x2a

    goto :goto_12

    :cond_13
    const/16 v6, 0x27

    goto :goto_12

    :cond_14
    const/16 v6, 0x1d

    goto :goto_12

    :cond_15
    const/16 v6, 0x17

    goto :goto_12

    :cond_16
    const/4 v1, -0x1

    const/16 v6, 0x14

    goto :goto_13

    :cond_17
    const/16 v6, 0x11

    goto :goto_12

    :goto_13
    if-eq v6, v1, :cond_10

    new-instance v1, Landroid/util/Pair;

    .line 49
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    goto :goto_15

    :catch_0
    nop

    .line 50
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring malformed MP4A codec string: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 136
    :cond_18
    new-instance v0, Ljava/lang/String;

    .line 50
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 51
    :goto_14
    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :goto_15
    return-object v2

    .line 52
    :pswitch_2d
    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/cz;->i:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/cz;->x:Lcom/google/ads/interactivemedia/v3/internal/ack;

    .line 53
    array-length v7, v1

    if-ge v7, v6, :cond_1a

    .line 54
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring malformed AV1 codec string: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 55
    :cond_19
    new-instance v0, Ljava/lang/String;

    .line 54
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 55
    :goto_16
    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_17
    const/4 v2, 0x0

    goto/16 :goto_1c

    .line 56
    :cond_1a
    :try_start_1
    aget-object v7, v1, v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 57
    aget-object v13, v1, v4

    invoke-virtual {v13, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v13, 0x3

    .line 58
    aget-object v1, v1, v13

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v7, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown AV1 profile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    :cond_1b
    if-eq v1, v14, :cond_1f

    const/16 v3, 0xa

    if-eq v1, v3, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x22

    .line 66
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown AV1 bit depth: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    :cond_1c
    if-eqz v0, :cond_1e

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ack;->d:[B

    if-nez v1, :cond_1d

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/ack;->c:I

    const/4 v3, 0x7

    if-eq v0, v3, :cond_1d

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1e

    :cond_1d
    const/16 v0, 0x1000

    goto :goto_18

    :cond_1e
    const/4 v0, 0x2

    goto :goto_18

    :cond_1f
    const/4 v0, 0x1

    :goto_18
    packed-switch v11, :pswitch_data_6

    const/4 v1, -0x1

    const/4 v5, -0x1

    goto :goto_1a

    :pswitch_2e
    const/high16 v5, 0x800000

    goto :goto_19

    :pswitch_2f
    const/high16 v5, 0x400000

    goto :goto_19

    :pswitch_30
    const/high16 v5, 0x200000

    goto :goto_19

    :pswitch_31
    const/high16 v5, 0x100000

    goto :goto_19

    :pswitch_32
    const/high16 v5, 0x80000

    goto :goto_19

    :pswitch_33
    const/high16 v5, 0x40000

    goto :goto_19

    :pswitch_34
    const/high16 v5, 0x20000

    goto :goto_19

    :pswitch_35
    const/high16 v5, 0x10000

    goto :goto_19

    :pswitch_36
    const v5, 0x8000

    goto :goto_19

    :pswitch_37
    const/16 v5, 0x4000

    goto :goto_19

    :pswitch_38
    const/16 v5, 0x2000

    goto :goto_19

    :pswitch_39
    const/4 v1, -0x1

    const/16 v5, 0x1000

    goto :goto_1a

    :pswitch_3a
    const/4 v1, -0x1

    const/16 v5, 0x800

    goto :goto_1a

    :pswitch_3b
    const/16 v5, 0x400

    :goto_19
    :pswitch_3c
    const/4 v1, -0x1

    goto :goto_1a

    :pswitch_3d
    const/4 v1, -0x1

    const/16 v5, 0x100

    goto :goto_1a

    :pswitch_3e
    const/4 v1, -0x1

    const/16 v5, 0x80

    goto :goto_1a

    :pswitch_3f
    const/4 v1, -0x1

    const/16 v5, 0x40

    goto :goto_1a

    :pswitch_40
    const/4 v1, -0x1

    const/16 v5, 0x20

    goto :goto_1a

    :pswitch_41
    const/4 v1, -0x1

    const/16 v5, 0x10

    goto :goto_1a

    :pswitch_42
    const/4 v1, -0x1

    const/16 v5, 0x8

    goto :goto_1a

    :pswitch_43
    const/4 v1, -0x1

    const/4 v5, 0x4

    goto :goto_1a

    :pswitch_44
    const/4 v1, -0x1

    const/4 v5, 0x2

    goto :goto_1a

    :pswitch_45
    const/4 v1, -0x1

    const/4 v5, 0x1

    :goto_1a
    if-ne v5, v1, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown AV1 level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    :cond_20
    new-instance v2, Landroid/util/Pair;

    .line 65
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1c

    :catch_1
    nop

    .line 59
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring malformed AV1 codec string: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 50
    :cond_21
    new-instance v0, Ljava/lang/String;

    .line 59
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 60
    :goto_1b
    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    :goto_1c
    return-object v2

    :pswitch_46
    const/4 v3, 0x7

    .line 68
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/cz;->i:Ljava/lang/String;

    .line 69
    array-length v9, v1

    if-ge v9, v6, :cond_23

    .line 70
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring malformed HEVC codec string: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    .line 71
    :cond_22
    new-instance v0, Ljava/lang/String;

    .line 70
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 71
    :goto_1d
    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1e
    const/4 v2, 0x0

    goto/16 :goto_28

    .line 70
    :cond_23
    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/op;->b:Ljava/util/regex/Pattern;

    .line 72
    aget-object v13, v1, v2

    invoke-virtual {v9, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 73
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-nez v13, :cond_25

    .line 74
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring malformed HEVC codec string: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    .line 75
    :cond_24
    new-instance v0, Ljava/lang/String;

    .line 74
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 75
    :goto_1f
    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 76
    :cond_25
    invoke-virtual {v9, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v9, "1"

    .line 77
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_26

    const/4 v0, 0x1

    :goto_20
    const/4 v9, 0x3

    goto :goto_21

    :cond_26
    const-string v9, "2"

    .line 78
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2b

    const/4 v0, 0x2

    goto :goto_20

    .line 79
    :goto_21
    aget-object v1, v1, v9

    if-nez v1, :cond_27

    :goto_22
    const/4 v2, 0x0

    goto/16 :goto_25

    .line 108
    :cond_27
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_1

    goto/16 :goto_23

    :sswitch_7
    const-string v3, "L186"

    .line 104
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/16 v3, 0xc

    goto/16 :goto_24

    :sswitch_8
    const-string v3, "L183"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/16 v3, 0xb

    goto/16 :goto_24

    :sswitch_9
    const-string v3, "L180"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/16 v3, 0xa

    goto/16 :goto_24

    :sswitch_a
    const-string v3, "L156"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/16 v3, 0x9

    goto/16 :goto_24

    :sswitch_b
    const-string v3, "L153"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/16 v3, 0x8

    goto/16 :goto_24

    :sswitch_c
    const-string v7, "L150"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_28

    goto/16 :goto_24

    :sswitch_d
    const-string v3, "L123"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v3, 0x6

    goto/16 :goto_24

    :sswitch_e
    const-string v3, "L120"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v3, 0x5

    goto/16 :goto_24

    :sswitch_f
    const-string v3, "H186"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/16 v3, 0x19

    goto/16 :goto_24

    :sswitch_10
    const-string v3, "H183"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/16 v3, 0x18

    goto/16 :goto_24

    :sswitch_11
    const-string v3, "H180"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/16 v3, 0x17

    goto/16 :goto_24

    :sswitch_12
    const-string v3, "H156"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/16 v3, 0x16

    goto/16 :goto_24

    :sswitch_13
    const-string v3, "H153"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/16 v3, 0x15

    goto/16 :goto_24

    :sswitch_14
    const-string v3, "H150"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/16 v3, 0x14

    goto/16 :goto_24

    :sswitch_15
    const-string v3, "H123"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/16 v3, 0x13

    goto/16 :goto_24

    :sswitch_16
    const-string v3, "H120"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/16 v3, 0x12

    goto/16 :goto_24

    :sswitch_17
    const-string v3, "L93"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v3, 0x4

    goto :goto_24

    :sswitch_18
    const-string v3, "L90"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v3, 0x3

    goto :goto_24

    :sswitch_19
    const-string v3, "L63"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v3, 0x2

    goto :goto_24

    :sswitch_1a
    const-string v3, "L60"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v3, 0x1

    goto :goto_24

    :sswitch_1b
    const-string v3, "L30"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v3, 0x0

    goto :goto_24

    :sswitch_1c
    const-string v3, "H93"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/16 v3, 0x11

    goto :goto_24

    :sswitch_1d
    const-string v3, "H90"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/16 v3, 0x10

    goto :goto_24

    :sswitch_1e
    const-string v3, "H63"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/16 v3, 0xf

    goto :goto_24

    :sswitch_1f
    const-string v3, "H60"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/16 v3, 0xe

    goto :goto_24

    :sswitch_20
    const-string v3, "H30"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/16 v3, 0xd

    goto :goto_24

    :cond_28
    :goto_23
    const/4 v3, -0x1

    :goto_24
    packed-switch v3, :pswitch_data_7

    goto/16 :goto_22

    :pswitch_47
    const/high16 v2, 0x2000000

    .line 80
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_25

    :pswitch_48
    const/high16 v2, 0x800000

    .line 81
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_25

    :pswitch_49
    const/high16 v2, 0x200000

    .line 82
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_25

    :pswitch_4a
    const/high16 v2, 0x80000

    .line 83
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_25

    :pswitch_4b
    const/high16 v2, 0x20000

    .line 84
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_25

    :pswitch_4c
    const v2, 0x8000

    .line 85
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_25

    :pswitch_4d
    const/16 v2, 0x2000

    .line 86
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_25

    .line 87
    :pswitch_4e
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_25

    .line 88
    :pswitch_4f
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_25

    .line 89
    :pswitch_50
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_25

    .line 90
    :pswitch_51
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_25

    .line 91
    :pswitch_52
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_25

    .line 92
    :pswitch_53
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_25

    :pswitch_54
    const/high16 v2, 0x1000000

    .line 93
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_25

    :pswitch_55
    const/high16 v2, 0x400000

    .line 94
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_25

    :pswitch_56
    const/high16 v2, 0x100000

    .line 95
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_25

    :pswitch_57
    const/high16 v2, 0x40000

    .line 96
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_25

    :pswitch_58
    const/high16 v2, 0x10000

    .line 97
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_25

    :pswitch_59
    const/16 v2, 0x4000

    .line 98
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_25

    .line 99
    :pswitch_5a
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_25

    :pswitch_5b
    const/16 v2, 0x400

    .line 100
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_25

    :pswitch_5c
    const/16 v3, 0x100

    .line 101
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_25

    :pswitch_5d
    const/16 v13, 0x40

    .line 102
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_25

    :pswitch_5e
    const/16 v2, 0x10

    .line 103
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_25

    .line 104
    :pswitch_5f
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_25

    .line 105
    :pswitch_60
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_25
    if-nez v2, :cond_2a

    .line 106
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unknown HEVC level string: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    .line 107
    :cond_29
    new-instance v0, Ljava/lang/String;

    .line 106
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 107
    :goto_26
    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    .line 106
    :cond_2a
    new-instance v1, Landroid/util/Pair;

    .line 108
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v1

    goto :goto_28

    .line 109
    :cond_2b
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unknown HEVC profile string: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2c

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    .line 110
    :cond_2c
    new-instance v0, Ljava/lang/String;

    .line 109
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 110
    :goto_27
    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    :goto_28
    return-object v2

    :pswitch_61
    const/16 v3, 0x100

    const/16 v13, 0x40

    .line 111
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/cz;->i:Ljava/lang/String;

    .line 112
    array-length v11, v1

    const/4 v3, 0x3

    if-ge v11, v3, :cond_2e

    .line 113
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring malformed VP9 codec string: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2d

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    .line 114
    :cond_2d
    new-instance v0, Ljava/lang/String;

    .line 113
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 114
    :goto_29
    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a
    const/4 v2, 0x0

    goto/16 :goto_2f

    .line 115
    :cond_2e
    :try_start_2
    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 116
    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v3, :cond_32

    if-eq v3, v2, :cond_31

    if-eq v3, v4, :cond_30

    const/4 v1, 0x3

    if-eq v3, v1, :cond_2f

    const/4 v1, -0x1

    goto :goto_2b

    :cond_2f
    const/16 v1, 0x8

    goto :goto_2b

    :cond_30
    const/4 v1, 0x4

    goto :goto_2b

    :cond_31
    const/4 v1, 0x2

    goto :goto_2b

    :cond_32
    const/4 v1, 0x1

    :goto_2b
    const/4 v11, -0x1

    if-ne v1, v11, :cond_33

    new-instance v0, Ljava/lang/StringBuilder;

    .line 119
    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown VP9 profile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    :cond_33
    const/16 v3, 0xa

    if-eq v0, v3, :cond_3d

    const/16 v2, 0xb

    if-eq v0, v2, :cond_3c

    if-eq v0, v7, :cond_3b

    const/16 v2, 0x15

    if-eq v0, v2, :cond_3a

    if-eq v0, v9, :cond_39

    const/16 v2, 0x1f

    if-eq v0, v2, :cond_38

    const/16 v2, 0x28

    if-eq v0, v2, :cond_37

    const/16 v2, 0x29

    if-eq v0, v2, :cond_36

    const/16 v2, 0x32

    if-eq v0, v2, :cond_35

    const/16 v2, 0x33

    if-eq v0, v2, :cond_34

    packed-switch v0, :pswitch_data_8

    const/4 v2, -0x1

    const/4 v5, -0x1

    goto :goto_2d

    :pswitch_62
    const/16 v5, 0x2000

    goto :goto_2c

    :pswitch_63
    const/4 v2, -0x1

    const/16 v5, 0x1000

    goto :goto_2d

    :pswitch_64
    const/4 v2, -0x1

    const/16 v5, 0x800

    goto :goto_2d

    :cond_34
    :goto_2c
    const/4 v2, -0x1

    goto :goto_2d

    :cond_35
    const/4 v2, -0x1

    const/16 v5, 0x100

    goto :goto_2d

    :cond_36
    const/4 v2, -0x1

    const/16 v5, 0x80

    goto :goto_2d

    :cond_37
    const/4 v2, -0x1

    const/16 v5, 0x40

    goto :goto_2d

    :cond_38
    const/4 v2, -0x1

    const/16 v5, 0x20

    goto :goto_2d

    :cond_39
    const/4 v2, -0x1

    const/16 v5, 0x10

    goto :goto_2d

    :cond_3a
    const/4 v2, -0x1

    const/16 v5, 0x8

    goto :goto_2d

    :cond_3b
    const/4 v2, -0x1

    const/4 v5, 0x4

    goto :goto_2d

    :cond_3c
    const/4 v2, -0x1

    const/4 v5, 0x2

    goto :goto_2d

    :cond_3d
    const/4 v2, -0x1

    const/4 v5, 0x1

    :goto_2d
    if-ne v5, v2, :cond_3e

    new-instance v1, Ljava/lang/StringBuilder;

    .line 121
    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown VP9 level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    :cond_3e
    new-instance v2, Landroid/util/Pair;

    .line 123
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2f

    :catch_2
    nop

    .line 117
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring malformed VP9 codec string: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3f

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    .line 59
    :cond_3f
    new-instance v0, Ljava/lang/String;

    .line 117
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 118
    :goto_2e
    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    :goto_2f
    return-object v2

    :pswitch_65
    const/16 v13, 0x40

    .line 124
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/cz;->i:Ljava/lang/String;

    .line 125
    array-length v3, v1

    if-ge v3, v4, :cond_41

    .line 126
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring malformed AVC codec string: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_40

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_30

    .line 127
    :cond_40
    new-instance v0, Ljava/lang/String;

    .line 126
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 127
    :goto_30
    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_31
    const/4 v2, 0x0

    goto/16 :goto_38

    .line 128
    :cond_41
    :try_start_3
    aget-object v7, v1, v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v5, 0x6

    if-ne v7, v5, :cond_42

    .line 133
    aget-object v3, v1, v2

    invoke-virtual {v3, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x10

    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 134
    aget-object v1, v1, v2

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_32

    :cond_42
    const/16 v5, 0x10

    const/4 v7, 0x3

    if-lt v3, v7, :cond_4c

    .line 129
    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 130
    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_32
    const/16 v1, 0x42

    if-eq v3, v1, :cond_49

    const/16 v1, 0x4d

    if-eq v3, v1, :cond_48

    const/16 v1, 0x58

    if-eq v3, v1, :cond_47

    const/16 v1, 0x64

    if-eq v3, v1, :cond_46

    const/16 v1, 0x6e

    if-eq v3, v1, :cond_45

    const/16 v1, 0x7a

    if-eq v3, v1, :cond_44

    const/16 v1, 0xf4

    if-eq v3, v1, :cond_43

    const/4 v1, -0x1

    const/4 v4, -0x1

    goto :goto_33

    :cond_43
    const/4 v1, -0x1

    const/16 v4, 0x40

    goto :goto_33

    :cond_44
    const/4 v1, -0x1

    const/16 v4, 0x20

    goto :goto_33

    :cond_45
    const/4 v1, -0x1

    const/16 v4, 0x10

    goto :goto_33

    :cond_46
    const/4 v1, -0x1

    const/16 v4, 0x8

    goto :goto_33

    :cond_47
    const/4 v1, -0x1

    const/4 v4, 0x4

    goto :goto_33

    :cond_48
    const/4 v1, -0x1

    goto :goto_33

    :cond_49
    const/4 v1, -0x1

    const/4 v4, 0x1

    :goto_33
    if-ne v4, v1, :cond_4a

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    .line 137
    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown AVC profile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_31

    :cond_4a
    packed-switch v0, :pswitch_data_9

    packed-switch v0, :pswitch_data_a

    packed-switch v0, :pswitch_data_b

    packed-switch v0, :pswitch_data_c

    packed-switch v0, :pswitch_data_d

    const/4 v1, -0x1

    const/4 v5, -0x1

    goto :goto_35

    :pswitch_66
    const/high16 v5, 0x10000

    goto :goto_34

    :pswitch_67
    const v5, 0x8000

    goto :goto_34

    :pswitch_68
    const/16 v5, 0x4000

    goto :goto_34

    :pswitch_69
    const/16 v5, 0x2000

    goto :goto_34

    :pswitch_6a
    const/4 v1, -0x1

    const/16 v5, 0x1000

    goto :goto_35

    :pswitch_6b
    const/4 v1, -0x1

    const/16 v5, 0x800

    goto :goto_35

    :pswitch_6c
    const/16 v5, 0x400

    goto :goto_34

    :pswitch_6d
    const/4 v1, -0x1

    const/16 v5, 0x200

    goto :goto_35

    :pswitch_6e
    const/4 v1, -0x1

    const/16 v5, 0x100

    goto :goto_35

    :pswitch_6f
    const/4 v1, -0x1

    const/16 v5, 0x80

    goto :goto_35

    :pswitch_70
    const/4 v1, -0x1

    const/16 v5, 0x40

    goto :goto_35

    :pswitch_71
    const/4 v1, -0x1

    const/16 v5, 0x20

    goto :goto_35

    :goto_34
    :pswitch_72
    const/4 v1, -0x1

    goto :goto_35

    :pswitch_73
    const/4 v1, -0x1

    const/16 v5, 0x8

    goto :goto_35

    :pswitch_74
    const/4 v1, -0x1

    const/4 v5, 0x4

    goto :goto_35

    :pswitch_75
    const/4 v1, -0x1

    const/4 v5, 0x1

    :goto_35
    if-ne v5, v1, :cond_4b

    new-instance v1, Ljava/lang/StringBuilder;

    .line 139
    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown AVC level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_31

    :cond_4b
    new-instance v2, Landroid/util/Pair;

    .line 141
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_38

    :cond_4c
    :try_start_4
    const-string v1, "Ignoring malformed AVC codec string: "

    .line 131
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4d

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_36

    .line 132
    :cond_4d
    new-instance v2, Ljava/lang/String;

    .line 131
    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 132
    :goto_36
    invoke-static {v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_31

    :catch_3
    nop

    .line 135
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring malformed AVC codec string: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4e

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_37

    .line 117
    :cond_4e
    new-instance v0, Ljava/lang/String;

    .line 135
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 136
    :goto_37
    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_31

    :goto_38
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x600
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x601
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x2dd8f6 -> :sswitch_6
        0x2ddf23 -> :sswitch_5
        0x2ddf24 -> :sswitch_4
        0x30d038 -> :sswitch_3
        0x310dbc -> :sswitch_2
        0x333790 -> :sswitch_1
        0x374e43 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_65
        :pswitch_65
        :pswitch_61
        :pswitch_46
        :pswitch_46
        :pswitch_2d
        :pswitch_26
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x114a5 -> :sswitch_20
        0x11502 -> :sswitch_1f
        0x11505 -> :sswitch_1e
        0x1155f -> :sswitch_1d
        0x11562 -> :sswitch_1c
        0x123a9 -> :sswitch_1b
        0x12406 -> :sswitch_1a
        0x12409 -> :sswitch_19
        0x12463 -> :sswitch_18
        0x12466 -> :sswitch_17
        0x2178e7 -> :sswitch_16
        0x2178ea -> :sswitch_15
        0x217944 -> :sswitch_14
        0x217947 -> :sswitch_13
        0x21794a -> :sswitch_12
        0x2179a1 -> :sswitch_11
        0x2179a4 -> :sswitch_10
        0x2179a7 -> :sswitch_f
        0x234a63 -> :sswitch_e
        0x234a66 -> :sswitch_d
        0x234ac0 -> :sswitch_c
        0x234ac3 -> :sswitch_b
        0x234ac6 -> :sswitch_a
        0x234b1d -> :sswitch_9
        0x234b20 -> :sswitch_8
        0x234b23 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x3c
        :pswitch_64
        :pswitch_63
        :pswitch_62
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0xa
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x14
        :pswitch_71
        :pswitch_70
        :pswitch_6f
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x1e
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x28
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x32
        :pswitch_68
        :pswitch_67
        :pswitch_66
    .end packed-switch
.end method

.method public static a()Lcom/google/ads/interactivemedia/v3/internal/oa;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/ok;
        }
    .end annotation

    const-string v0, "audio/raw"

    .line 265
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/op;->a(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/oa;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/oa;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/ok;
        }
    .end annotation

    const/4 v0, 0x0

    .line 142
    invoke-static {p0, v0, v0}, Lcom/google/ads/interactivemedia/v3/internal/op;->a(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    .line 143
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/oa;

    return-object p0
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/internal/oj;Lcom/google/ads/interactivemedia/v3/internal/ol;)Ljava/util/ArrayList;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/oj;",
            "Lcom/google/ads/interactivemedia/v3/internal/ol;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/google/ads/interactivemedia/v3/internal/oa;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/ok;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "secure-playback"

    const-string v4, "tunneled-playback"

    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    .line 173
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v15, v1, Lcom/google/ads/interactivemedia/v3/internal/oj;->a:Ljava/lang/String;

    .line 174
    invoke-interface/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/ol;->a()I

    move-result v14

    .line 175
    invoke-interface/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/ol;->b()Z

    move-result v16

    const/16 v17, 0x0

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v14, :cond_22

    .line 176
    invoke-interface {v2, v13}, Lcom/google/ads/interactivemedia/v3/internal/ol;->a(I)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 177
    sget v6, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v7, 0x1d

    if-lt v6, v7, :cond_1

    .line 178
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isAlias()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_1
    move/from16 v22, v13

    move/from16 v23, v14

    goto/16 :goto_a

    .line 179
    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v12

    .line 180
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v6, :cond_0

    const-string v6, ".secure"

    if-nez v16, :cond_2

    :try_start_1
    invoke-virtual {v12, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    :cond_2
    sget v8, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v9, 0x15

    if-ge v8, v9, :cond_3

    const-string v8, "CIPAACDecoder"

    .line 181
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "CIPMP3Decoder"

    .line 182
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "CIPVorbisDecoder"

    .line 183
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "CIPAMRNBDecoder"

    .line 184
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "AACDecoder"

    .line 185
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "MP3Decoder"

    .line 186
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    :cond_3
    sget v8, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v9, 0x12

    if-ge v8, v9, :cond_4

    const-string v8, "OMX.MTK.AUDIO.DECODER.AAC"

    .line 187
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "a70"

    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    .line 188
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "Xiaomi"

    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/ach;->c:Ljava/lang/String;

    .line 189
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    sget-object v8, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    const-string v9, "HM"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    :cond_4
    sget v8, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v9, 0x10

    if-ne v8, v9, :cond_5

    const-string v8, "OMX.qcom.audio.decoder.mp3"

    .line 190
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "dlxu"

    sget-object v10, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    .line 191
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "protou"

    sget-object v10, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    .line 192
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "ville"

    sget-object v10, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    .line 193
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "villeplus"

    sget-object v10, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    .line 194
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "villec2"

    sget-object v10, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    .line 195
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    sget-object v8, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    const-string v10, "gee"

    .line 196
    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "C6602"

    sget-object v10, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    .line 197
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "C6603"

    sget-object v10, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    .line 198
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "C6606"

    sget-object v10, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    .line 199
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "C6616"

    sget-object v10, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    .line 200
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "L36h"

    sget-object v10, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    .line 201
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "SO-02E"

    sget-object v10, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    .line 202
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    :cond_5
    sget v8, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    if-ne v8, v9, :cond_6

    const-string v8, "OMX.qcom.audio.decoder.aac"

    .line 203
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "C1504"

    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    .line 204
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "C1505"

    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    .line 205
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "C1604"

    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    .line 206
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "C1605"

    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    .line 207
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    :cond_6
    sget v8, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/16 v9, 0x18

    const-string v10, "samsung"

    if-ge v8, v9, :cond_8

    :try_start_2
    const-string v8, "OMX.SEC.aac.dec"

    .line 208
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "OMX.Exynos.AAC.Decoder"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_7
    sget-object v8, Lcom/google/ads/interactivemedia/v3/internal/ach;->c:Ljava/lang/String;

    .line 209
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    sget-object v8, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    const-string v9, "zeroflte"

    .line 210
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    sget-object v8, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    const-string v9, "zerolte"

    .line 211
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    sget-object v8, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    const-string v9, "zenlte"

    .line 212
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "SC-05G"

    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    .line 213
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "marinelteatt"

    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    .line 214
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "404SC"

    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    .line 215
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "SC-04G"

    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    .line 216
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "SCV31"

    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    .line 217
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    :cond_8
    sget v8, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const-string v9, "jflte"

    const/16 v11, 0x13

    if-gt v8, v11, :cond_9

    :try_start_3
    const-string v8, "OMX.SEC.vp8.dec"

    .line 218
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    sget-object v8, Lcom/google/ads/interactivemedia/v3/internal/ach;->c:Ljava/lang/String;

    .line 219
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    sget-object v8, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    const-string v10, "d2"

    .line 220
    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    sget-object v8, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    const-string v10, "serrano"

    .line 221
    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    sget-object v8, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    .line 222
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    sget-object v8, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    const-string v10, "santos"

    .line 223
    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    sget-object v8, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    const-string v10, "t0"

    .line 224
    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    :cond_9
    sget v8, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    if-gt v8, v11, :cond_a

    sget-object v8, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    .line 225
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    const-string v8, "OMX.qcom.video.decoder.vp8"

    .line 226
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    :cond_a
    const-string v8, "audio/eac3-joc"

    .line 227
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v8, "OMX.MTK.AUDIO.DECODER.DSPAC3"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 228
    :cond_b
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v8

    .line 229
    array-length v9, v8

    const/4 v10, 0x0

    :goto_2
    const/4 v11, 0x0

    if-ge v10, v9, :cond_d

    aget-object v11, v8, v10

    .line 230
    invoke-virtual {v11, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_c

    goto :goto_3

    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_d
    const-string v8, "video/dolby-vision"

    .line 231
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    const-string v8, "OMX.MS.HEVCDV.Decoder"

    .line 232
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    const-string v11, "video/hevcdv"

    goto :goto_3

    :cond_e
    const-string v8, "OMX.RTK.video.decoder"

    .line 233
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    const-string v8, "OMX.realtek.video.decoder.tunneled"

    .line 234
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    :cond_f
    const-string v11, "video/dv_hevc"

    goto :goto_3

    :cond_10
    const-string v8, "audio/alac"

    .line 235
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    const-string v8, "OMX.lge.alac.decoder"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    const-string v11, "audio/x-lg-alac"

    goto :goto_3

    :cond_11
    const-string v8, "audio/flac"

    .line 236
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    const-string v8, "OMX.lge.flac.decoder"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    const-string v11, "audio/x-lg-flac"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_12
    :goto_3
    if-eqz v11, :cond_0

    .line 237
    :try_start_4
    invoke-virtual {v0, v11}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v9

    .line 238
    invoke-interface {v2, v4, v11, v9}, Lcom/google/ads/interactivemedia/v3/internal/ol;->a(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v8

    .line 239
    invoke-interface {v2, v4, v9}, Lcom/google/ads/interactivemedia/v3/internal/ol;->a(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v10

    iget-boolean v7, v1, Lcom/google/ads/interactivemedia/v3/internal/oj;->c:Z

    if-nez v7, :cond_13

    if-nez v10, :cond_0

    goto :goto_4

    :cond_13
    if-nez v8, :cond_14

    goto/16 :goto_1

    .line 240
    :cond_14
    :goto_4
    invoke-interface {v2, v3, v11, v9}, Lcom/google/ads/interactivemedia/v3/internal/ol;->a(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v7

    .line 241
    invoke-interface {v2, v3, v9}, Lcom/google/ads/interactivemedia/v3/internal/ol;->a(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v8

    iget-boolean v10, v1, Lcom/google/ads/interactivemedia/v3/internal/oj;->b:Z

    const/16 v19, 0x1

    if-nez v10, :cond_15

    if-nez v8, :cond_0

    goto :goto_5

    :cond_15
    if-eqz v7, :cond_0

    const/4 v7, 0x1

    :goto_5
    sget v8, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v10, 0x1d

    if-lt v8, v10, :cond_16

    .line 242
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isHardwareAccelerated()Z

    move-result v8

    move v10, v8

    goto :goto_6

    .line 243
    :cond_16
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/op;->a(Landroid/media/MediaCodecInfo;)Z

    move-result v8

    if-nez v8, :cond_17

    const/4 v10, 0x1

    goto :goto_6

    :cond_17
    const/4 v10, 0x0

    .line 244
    :goto_6
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/op;->a(Landroid/media/MediaCodecInfo;)Z

    move-result v20

    sget v8, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v2, 0x1d

    if-lt v8, v2, :cond_18

    .line 245
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isVendor()Z

    move-result v0

    goto :goto_7

    .line 246
    :cond_18
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ach;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "omx.google."

    .line 247
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "c2.android."

    .line 248
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "c2.google."

    .line 249
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x1

    goto :goto_7

    :cond_19
    const/4 v0, 0x0

    .line 245
    :goto_7
    sget v2, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v8, 0x16

    if-gt v2, v8, :cond_1b

    const-string v2, "ODROID-XU3"

    sget-object v8, Lcom/google/ads/interactivemedia/v3/internal/ach;->d:Ljava/lang/String;

    .line 250
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string v2, "Nexus 10"

    sget-object v8, Lcom/google/ads/interactivemedia/v3/internal/ach;->d:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    :cond_1a
    const-string v2, "OMX.Exynos.AVC.Decoder"

    .line 251
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "OMX.Exynos.AVC.Decoder.secure"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_8

    :cond_1b
    const/16 v19, 0x0

    :cond_1c
    :goto_8
    if-eqz v16, :cond_1d

    iget-boolean v2, v1, Lcom/google/ads/interactivemedia/v3/internal/oj;->b:Z

    if-eq v2, v7, :cond_1e

    :cond_1d
    if-nez v16, :cond_1f

    iget-boolean v2, v1, Lcom/google/ads/interactivemedia/v3/internal/oj;->b:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    if-nez v2, :cond_1f

    :cond_1e
    const/4 v2, 0x0

    move-object v6, v12

    move-object v7, v15

    move-object v8, v11

    move-object/from16 v18, v11

    move/from16 v11, v20

    move-object/from16 v21, v12

    move v12, v0

    move/from16 v22, v13

    move/from16 v13, v19

    move/from16 v23, v14

    move v14, v2

    .line 254
    :try_start_5
    invoke-static/range {v6 .. v14}, Lcom/google/ads/interactivemedia/v3/internal/oa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lcom/google/ads/interactivemedia/v3/internal/oa;

    move-result-object v0

    .line 255
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    :catch_0
    move-exception v0

    goto :goto_9

    :cond_1f
    move-object/from16 v18, v11

    move-object/from16 v21, v12

    move/from16 v22, v13

    move/from16 v23, v14

    if-nez v16, :cond_21

    if-eqz v7, :cond_21

    .line 252
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v14, 0x1

    move-object v7, v15

    move-object/from16 v8, v18

    move/from16 v11, v20

    move v12, v0

    move/from16 v13, v19

    .line 253
    invoke-static/range {v6 .. v14}, Lcom/google/ads/interactivemedia/v3/internal/oa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lcom/google/ads/interactivemedia/v3/internal/oa;

    move-result-object v0

    .line 252
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    return-object v5

    :catch_1
    move-exception v0

    move-object/from16 v18, v11

    move-object/from16 v21, v12

    move/from16 v22, v13

    move/from16 v23, v14

    .line 262
    :goto_9
    :try_start_6
    sget v2, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    const/16 v6, 0x17

    const-string v7, "MediaCodecUtil"

    if-gt v2, v6, :cond_20

    .line 256
    :try_start_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_20

    .line 257
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Skipping codec "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v21

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (failed to query capabilities)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_20
    move-object/from16 v6, v21

    .line 259
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x19

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed to query codec "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v18

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 260
    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :cond_21
    :goto_a
    add-int/lit8 v13, v22, 0x1

    move-object/from16 v2, p1

    move/from16 v14, v23

    goto/16 :goto_0

    :cond_22
    return-object v5

    :catch_2
    move-exception v0

    .line 236
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/ok;

    .line 262
    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ok;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static declared-synchronized a(Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/oa;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/ok;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const-class v3, Lcom/google/ads/interactivemedia/v3/internal/op;

    monitor-enter v3

    :try_start_0
    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/oj;

    .line 144
    invoke-direct {v4, v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/oj;-><init>(Ljava/lang/String;ZZ)V

    sget-object v5, Lcom/google/ads/interactivemedia/v3/internal/op;->c:Ljava/util/HashMap;

    .line 145
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    monitor-exit v3

    return-object v6

    .line 146
    :cond_0
    :try_start_1
    sget v6, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/4 v7, 0x0

    const/16 v8, 0x15

    if-lt v6, v8, :cond_1

    new-instance v6, Lcom/google/ads/interactivemedia/v3/internal/on;

    .line 147
    invoke-direct {v6, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/on;-><init>(ZZ)V

    goto :goto_0

    .line 172
    :cond_1
    new-instance v6, Lcom/google/ads/interactivemedia/v3/internal/om;

    invoke-direct {v6, v7}, Lcom/google/ads/interactivemedia/v3/internal/om;-><init>([B)V

    .line 148
    :goto_0
    invoke-static {v4, v6}, Lcom/google/ads/interactivemedia/v3/internal/op;->a(Lcom/google/ads/interactivemedia/v3/internal/oj;Lcom/google/ads/interactivemedia/v3/internal/ol;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v6, 0x0

    if-eqz v1, :cond_2

    .line 149
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    if-lt v1, v8, :cond_2

    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v9, 0x17

    if-gt v1, v9, :cond_2

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/om;

    invoke-direct {v1, v7}, Lcom/google/ads/interactivemedia/v3/internal/om;-><init>([B)V

    .line 150
    invoke-static {v4, v1}, Lcom/google/ads/interactivemedia/v3/internal/op;->a(Lcom/google/ads/interactivemedia/v3/internal/oj;Lcom/google/ads/interactivemedia/v3/internal/ol;)Ljava/util/ArrayList;

    move-result-object v2

    .line 151
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 152
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/oa;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/oa;->a:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x3f

    add-int/2addr v7, v9

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "MediaCodecList API didn\'t list secure decoder for: "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ". Assuming: "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "MediaCodecUtil"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 153
    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v1, "audio/raw"

    .line 154
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v7, 0x1a

    if-ge v0, v7, :cond_3

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    const-string v7, "R9"

    .line 155
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 156
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 157
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/oa;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/oa;->a:Ljava/lang/String;

    const-string v7, "OMX.MTK.AUDIO.DECODER.RAW"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v9, "OMX.google.raw.decoder"

    const-string v10, "audio/raw"

    const-string v11, "audio/raw"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 158
    invoke-static/range {v9 .. v17}, Lcom/google/ads/interactivemedia/v3/internal/oa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lcom/google/ads/interactivemedia/v3/internal/oa;

    move-result-object v0

    .line 159
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/og;->a:Lcom/google/ads/interactivemedia/v3/internal/oo;

    .line 160
    invoke-static {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/op;->a(Ljava/util/List;Lcom/google/ads/interactivemedia/v3/internal/oo;)V

    :cond_4
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    if-ge v0, v8, :cond_6

    .line 161
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_6

    .line 162
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/oa;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/oa;->a:Ljava/lang/String;

    const-string v7, "OMX.SEC.mp3.dec"

    .line 163
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "OMX.SEC.MP3.Decoder"

    .line 164
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "OMX.brcm.audio.mp3.decoder"

    .line 165
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/oh;->a:Lcom/google/ads/interactivemedia/v3/internal/oo;

    .line 166
    invoke-static {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/op;->a(Ljava/util/List;Lcom/google/ads/interactivemedia/v3/internal/oo;)V

    :cond_6
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v7, 0x1e

    if-ge v0, v7, :cond_7

    .line 167
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_7

    const-string v0, "OMX.qti.audio.decoder.flac"

    .line 168
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/oa;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/oa;->a:Ljava/lang/String;

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 170
    invoke-interface {v2, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/oa;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_7
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 172
    invoke-virtual {v5, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public static a(Ljava/util/List;Lcom/google/ads/interactivemedia/v3/internal/cz;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/oa;",
            ">;",
            "Lcom/google/ads/interactivemedia/v3/internal/cz;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/oa;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    .line 263
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/of;

    .line 264
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/of;-><init>(Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    invoke-static {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/op;->a(Ljava/util/List;Lcom/google/ads/interactivemedia/v3/internal/oo;)V

    return-object v0
.end method

.method private static a(Ljava/util/List;Lcom/google/ads/interactivemedia/v3/internal/oo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/ads/interactivemedia/v3/internal/oo<",
            "TT;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/oi;

    .line 281
    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/oi;-><init>(Lcom/google/ads/interactivemedia/v3/internal/oo;)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private static a(Landroid/media/MediaCodecInfo;)Z
    .locals 3

    .line 266
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 267
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isSoftwareOnly()Z

    move-result p0

    return p0

    .line 268
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/ach;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "arc."

    .line 269
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "omx.google."

    .line 270
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    const-string v0, "omx.ffmpeg."

    .line 271
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "omx.sec."

    .line 272
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ".sw."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    const-string v0, "omx.qcom.video.decoder.hevcswvdec"

    .line 273
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "c2.android."

    .line 274
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "c2.google."

    .line 275
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "omx."

    .line 276
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "c2."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method public static b()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/ok;
        }
    .end annotation

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/op;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    const-string v0, "video/avc"

    .line 277
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/op;->a(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/oa;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 278
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/oa;->a()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 279
    iget v5, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    sparse-switch v5, :sswitch_data_0

    const/4 v5, -0x1

    goto :goto_1

    :sswitch_0
    const/high16 v5, 0x900000

    goto :goto_1

    :sswitch_1
    const v5, 0x564000

    goto :goto_1

    :sswitch_2
    const/high16 v5, 0x220000

    goto :goto_1

    :sswitch_3
    const/high16 v5, 0x200000

    goto :goto_1

    :sswitch_4
    const/high16 v5, 0x140000

    goto :goto_1

    :sswitch_5
    const v5, 0xe1000

    goto :goto_1

    :sswitch_6
    const v5, 0x65400

    goto :goto_1

    :sswitch_7
    const v5, 0x31800

    goto :goto_1

    :sswitch_8
    const v5, 0x18c00

    goto :goto_1

    :cond_0
    const/16 v5, 0x6300

    :goto_1
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 280
    :cond_1
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    const v0, 0x54600

    goto :goto_2

    :cond_2
    const v0, 0x2a300

    :goto_2
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_3
    sput v2, Lcom/google/ads/interactivemedia/v3/internal/op;->d:I

    :cond_4
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/op;->d:I

    return v0

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_8
        0x10 -> :sswitch_8
        0x20 -> :sswitch_8
        0x40 -> :sswitch_7
        0x80 -> :sswitch_6
        0x100 -> :sswitch_6
        0x200 -> :sswitch_5
        0x400 -> :sswitch_4
        0x800 -> :sswitch_3
        0x1000 -> :sswitch_3
        0x2000 -> :sswitch_2
        0x4000 -> :sswitch_1
        0x8000 -> :sswitch_0
        0x10000 -> :sswitch_0
    .end sparse-switch
.end method
