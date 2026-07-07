.class synthetic Lcom/magoware/magoware/webtv/util/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/util/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$magoware$magoware$webtv$network$mvvm$models$Client:[I

.field static final synthetic $SwitchMap$com$magoware$magoware$webtv$network$mvvm$models$CurrentPlayer:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 403
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->values()[Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/magoware/magoware/webtv/util/Utils$1;->$SwitchMap$com$magoware$magoware$webtv$network$mvvm$models$Client:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->TIBO:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/magoware/magoware/webtv/util/Utils$1;->$SwitchMap$com$magoware$magoware$webtv$network$mvvm$models$Client:[I

    sget-object v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YUVTV:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v2, Lcom/magoware/magoware/webtv/util/Utils$1;->$SwitchMap$com$magoware$magoware$webtv$network$mvvm$models$Client:[I

    sget-object v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->MAGOWARE:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lcom/magoware/magoware/webtv/util/Utils$1;->$SwitchMap$com$magoware$magoware$webtv$network$mvvm$models$Client:[I

    sget-object v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->COTT:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->ordinal()I

    move-result v3

    const/4 v4, 0x4

    aput v4, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v2, Lcom/magoware/magoware/webtv/util/Utils$1;->$SwitchMap$com$magoware$magoware$webtv$network$mvvm$models$Client:[I

    sget-object v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->NPLAY:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->ordinal()I

    move-result v3

    const/4 v4, 0x5

    aput v4, v2, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v2, Lcom/magoware/magoware/webtv/util/Utils$1;->$SwitchMap$com$magoware$magoware$webtv$network$mvvm$models$Client:[I

    sget-object v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->VIALA:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->ordinal()I

    move-result v3

    const/4 v4, 0x6

    aput v4, v2, v3
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v2, Lcom/magoware/magoware/webtv/util/Utils$1;->$SwitchMap$com$magoware$magoware$webtv$network$mvvm$models$Client:[I

    sget-object v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->TUTVNOW:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->ordinal()I

    move-result v3

    const/4 v4, 0x7

    aput v4, v2, v3
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v2, Lcom/magoware/magoware/webtv/util/Utils$1;->$SwitchMap$com$magoware$magoware$webtv$network$mvvm$models$Client:[I

    sget-object v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->DMCENTER:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->ordinal()I

    move-result v3

    const/16 v4, 0x8

    aput v4, v2, v3
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v2, Lcom/magoware/magoware/webtv/util/Utils$1;->$SwitchMap$com$magoware$magoware$webtv$network$mvvm$models$Client:[I

    sget-object v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YESNET:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->ordinal()I

    move-result v3

    const/16 v4, 0x9

    aput v4, v2, v3
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v2, Lcom/magoware/magoware/webtv/util/Utils$1;->$SwitchMap$com$magoware$magoware$webtv$network$mvvm$models$Client:[I

    sget-object v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->GLOBALTV:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->ordinal()I

    move-result v3

    const/16 v4, 0xa

    aput v4, v2, v3
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v2, Lcom/magoware/magoware/webtv/util/Utils$1;->$SwitchMap$com$magoware$magoware$webtv$network$mvvm$models$Client:[I

    sget-object v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->HOSPITALITY:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->ordinal()I

    move-result v3

    const/16 v4, 0xb

    aput v4, v2, v3
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v2, Lcom/magoware/magoware/webtv/util/Utils$1;->$SwitchMap$com$magoware$magoware$webtv$network$mvvm$models$Client:[I

    sget-object v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->VBN:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->ordinal()I

    move-result v3

    const/16 v4, 0xc

    aput v4, v2, v3
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v2, Lcom/magoware/magoware/webtv/util/Utils$1;->$SwitchMap$com$magoware$magoware$webtv$network$mvvm$models$Client:[I

    sget-object v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YONDOO:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->ordinal()I

    move-result v3

    const/16 v4, 0xd

    aput v4, v2, v3
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v2, Lcom/magoware/magoware/webtv/util/Utils$1;->$SwitchMap$com$magoware$magoware$webtv$network$mvvm$models$Client:[I

    sget-object v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->BEENETPLAY:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->ordinal()I

    move-result v3

    const/16 v4, 0xe

    aput v4, v2, v3
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v2, Lcom/magoware/magoware/webtv/util/Utils$1;->$SwitchMap$com$magoware$magoware$webtv$network$mvvm$models$Client:[I

    sget-object v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->DISERTV:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->ordinal()I

    move-result v3

    const/16 v4, 0xf

    aput v4, v2, v3
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v2, Lcom/magoware/magoware/webtv/util/Utils$1;->$SwitchMap$com$magoware$magoware$webtv$network$mvvm$models$Client:[I

    sget-object v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->PES:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->ordinal()I

    move-result v3

    const/16 v4, 0x10

    aput v4, v2, v3
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v2, Lcom/magoware/magoware/webtv/util/Utils$1;->$SwitchMap$com$magoware$magoware$webtv$network$mvvm$models$Client:[I

    sget-object v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->LINEATV:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->ordinal()I

    move-result v3

    const/16 v4, 0x11

    aput v4, v2, v3
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v2, Lcom/magoware/magoware/webtv/util/Utils$1;->$SwitchMap$com$magoware$magoware$webtv$network$mvvm$models$Client:[I

    sget-object v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->VIVITV:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->ordinal()I

    move-result v3

    const/16 v4, 0x12

    aput v4, v2, v3
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v2, Lcom/magoware/magoware/webtv/util/Utils$1;->$SwitchMap$com$magoware$magoware$webtv$network$mvvm$models$Client:[I

    sget-object v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->GOTV:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->ordinal()I

    move-result v3

    const/16 v4, 0x13

    aput v4, v2, v3
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v2, Lcom/magoware/magoware/webtv/util/Utils$1;->$SwitchMap$com$magoware$magoware$webtv$network$mvvm$models$Client:[I

    sget-object v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->ULKATV:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->ordinal()I

    move-result v3

    const/16 v4, 0x14

    aput v4, v2, v3
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v2, Lcom/magoware/magoware/webtv/util/Utils$1;->$SwitchMap$com$magoware$magoware$webtv$network$mvvm$models$Client:[I

    sget-object v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->KOTT:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->ordinal()I

    move-result v3

    const/16 v4, 0x15

    aput v4, v2, v3
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v2, Lcom/magoware/magoware/webtv/util/Utils$1;->$SwitchMap$com$magoware$magoware$webtv$network$mvvm$models$Client:[I

    sget-object v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->GCN:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->ordinal()I

    move-result v3

    const/16 v4, 0x16

    aput v4, v2, v3
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v2, Lcom/magoware/magoware/webtv/util/Utils$1;->$SwitchMap$com$magoware$magoware$webtv$network$mvvm$models$Client:[I

    sget-object v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->MDU1:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->ordinal()I

    move-result v3

    const/16 v4, 0x17

    aput v4, v2, v3
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v2, Lcom/magoware/magoware/webtv/util/Utils$1;->$SwitchMap$com$magoware$magoware$webtv$network$mvvm$models$Client:[I

    sget-object v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->NIBO:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->ordinal()I

    move-result v3

    const/16 v4, 0x18

    aput v4, v2, v3
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    .line 386
    :catch_17
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;->values()[Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/magoware/magoware/webtv/util/Utils$1;->$SwitchMap$com$magoware$magoware$webtv$network$mvvm$models$CurrentPlayer:[I

    :try_start_18
    sget-object v3, Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;->defaultPlayer:Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v1, Lcom/magoware/magoware/webtv/util/Utils$1;->$SwitchMap$com$magoware$magoware$webtv$network$mvvm$models$CurrentPlayer:[I

    sget-object v2, Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;->visualOn:Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    return-void
.end method
