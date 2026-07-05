.class synthetic Lorg/bson/json/JsonScanner$1;
.super Ljava/lang/Object;
.source "JsonScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bson/json/JsonScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$org$bson$json$JsonScanner$NumberState:[I

.field public static final synthetic $SwitchMap$org$bson$json$JsonScanner$RegularExpressionState:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    .line 1
    invoke-static {}, Lorg/bson/json/JsonScanner$NumberState;->values()[Lorg/bson/json/JsonScanner$NumberState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/bson/json/JsonScanner$1;->$SwitchMap$org$bson$json$JsonScanner$NumberState:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lorg/bson/json/JsonScanner$NumberState;->SAW_LEADING_MINUS:Lorg/bson/json/JsonScanner$NumberState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lorg/bson/json/JsonScanner$1;->$SwitchMap$org$bson$json$JsonScanner$NumberState:[I

    sget-object v3, Lorg/bson/json/JsonScanner$NumberState;->SAW_LEADING_ZERO:Lorg/bson/json/JsonScanner$NumberState;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    const/4 v2, 0x3

    :try_start_1e
    sget-object v3, Lorg/bson/json/JsonScanner$1;->$SwitchMap$org$bson$json$JsonScanner$NumberState:[I

    sget-object v4, Lorg/bson/json/JsonScanner$NumberState;->SAW_INTEGER_DIGITS:Lorg/bson/json/JsonScanner$NumberState;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    :catch_28
    const/4 v3, 0x4

    :try_start_29
    sget-object v4, Lorg/bson/json/JsonScanner$1;->$SwitchMap$org$bson$json$JsonScanner$NumberState:[I

    sget-object v5, Lorg/bson/json/JsonScanner$NumberState;->SAW_DECIMAL_POINT:Lorg/bson/json/JsonScanner$NumberState;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_33} :catch_33

    :catch_33
    const/4 v4, 0x5

    :try_start_34
    sget-object v5, Lorg/bson/json/JsonScanner$1;->$SwitchMap$org$bson$json$JsonScanner$NumberState:[I

    sget-object v6, Lorg/bson/json/JsonScanner$NumberState;->SAW_FRACTION_DIGITS:Lorg/bson/json/JsonScanner$NumberState;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v5, Lorg/bson/json/JsonScanner$1;->$SwitchMap$org$bson$json$JsonScanner$NumberState:[I

    sget-object v6, Lorg/bson/json/JsonScanner$NumberState;->SAW_EXPONENT_LETTER:Lorg/bson/json/JsonScanner$NumberState;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v7, 0x6

    aput v7, v5, v6
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v5, Lorg/bson/json/JsonScanner$1;->$SwitchMap$org$bson$json$JsonScanner$NumberState:[I

    sget-object v6, Lorg/bson/json/JsonScanner$NumberState;->SAW_EXPONENT_SIGN:Lorg/bson/json/JsonScanner$NumberState;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v7, 0x7

    aput v7, v5, v6
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v5, Lorg/bson/json/JsonScanner$1;->$SwitchMap$org$bson$json$JsonScanner$NumberState:[I

    sget-object v6, Lorg/bson/json/JsonScanner$NumberState;->SAW_EXPONENT_DIGITS:Lorg/bson/json/JsonScanner$NumberState;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x8

    aput v7, v5, v6
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    :try_start_60
    sget-object v5, Lorg/bson/json/JsonScanner$1;->$SwitchMap$org$bson$json$JsonScanner$NumberState:[I

    sget-object v6, Lorg/bson/json/JsonScanner$NumberState;->SAW_MINUS_I:Lorg/bson/json/JsonScanner$NumberState;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x9

    aput v7, v5, v6
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6c
    sget-object v5, Lorg/bson/json/JsonScanner$1;->$SwitchMap$org$bson$json$JsonScanner$NumberState:[I

    sget-object v6, Lorg/bson/json/JsonScanner$NumberState;->INVALID:Lorg/bson/json/JsonScanner$NumberState;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0xa

    aput v7, v5, v6
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_78

    :catch_78
    :try_start_78
    sget-object v5, Lorg/bson/json/JsonScanner$1;->$SwitchMap$org$bson$json$JsonScanner$NumberState:[I

    sget-object v6, Lorg/bson/json/JsonScanner$NumberState;->DONE:Lorg/bson/json/JsonScanner$NumberState;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0xb

    aput v7, v5, v6
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_84} :catch_84

    .line 2
    :catch_84
    invoke-static {}, Lorg/bson/json/JsonScanner$RegularExpressionState;->values()[Lorg/bson/json/JsonScanner$RegularExpressionState;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lorg/bson/json/JsonScanner$1;->$SwitchMap$org$bson$json$JsonScanner$RegularExpressionState:[I

    :try_start_8d
    sget-object v6, Lorg/bson/json/JsonScanner$RegularExpressionState;->IN_PATTERN:Lorg/bson/json/JsonScanner$RegularExpressionState;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_95
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8d .. :try_end_95} :catch_95

    :catch_95
    :try_start_95
    sget-object v1, Lorg/bson/json/JsonScanner$1;->$SwitchMap$org$bson$json$JsonScanner$RegularExpressionState:[I

    sget-object v5, Lorg/bson/json/JsonScanner$RegularExpressionState;->IN_ESCAPE_SEQUENCE:Lorg/bson/json/JsonScanner$RegularExpressionState;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v1, v5
    :try_end_9f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_95 .. :try_end_9f} :catch_9f

    :catch_9f
    :try_start_9f
    sget-object v0, Lorg/bson/json/JsonScanner$1;->$SwitchMap$org$bson$json$JsonScanner$RegularExpressionState:[I

    sget-object v1, Lorg/bson/json/JsonScanner$RegularExpressionState;->IN_OPTIONS:Lorg/bson/json/JsonScanner$RegularExpressionState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_a9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9f .. :try_end_a9} :catch_a9

    :catch_a9
    :try_start_a9
    sget-object v0, Lorg/bson/json/JsonScanner$1;->$SwitchMap$org$bson$json$JsonScanner$RegularExpressionState:[I

    sget-object v1, Lorg/bson/json/JsonScanner$RegularExpressionState;->DONE:Lorg/bson/json/JsonScanner$RegularExpressionState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_b3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a9 .. :try_end_b3} :catch_b3

    :catch_b3
    :try_start_b3
    sget-object v0, Lorg/bson/json/JsonScanner$1;->$SwitchMap$org$bson$json$JsonScanner$RegularExpressionState:[I

    sget-object v1, Lorg/bson/json/JsonScanner$RegularExpressionState;->INVALID:Lorg/bson/json/JsonScanner$RegularExpressionState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_bd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b3 .. :try_end_bd} :catch_bd

    :catch_bd
    return-void
.end method
