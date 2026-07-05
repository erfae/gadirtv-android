.class Lorg/bson/json/JsonScanner;
.super Ljava/lang/Object;
.source "JsonScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bson/json/JsonScanner$RegularExpressionState;,
        Lorg/bson/json/JsonScanner$NumberState;
    }
.end annotation


# instance fields
.field private final buffer:Lorg/bson/json/JsonBuffer;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3

    .line 4
    new-instance v0, Lorg/bson/json/JsonStreamBuffer;

    invoke-direct {v0, p1}, Lorg/bson/json/JsonStreamBuffer;-><init>(Ljava/io/Reader;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object v0, p0, Lorg/bson/json/JsonScanner;->buffer:Lorg/bson/json/JsonBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 1
    new-instance v0, Lorg/bson/json/JsonStringBuffer;

    invoke-direct {v0, p1}, Lorg/bson/json/JsonStringBuffer;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Lorg/bson/json/JsonScanner;->buffer:Lorg/bson/json/JsonBuffer;

    return-void
.end method

.method private scanNumber(C)Lorg/bson/json/JsonToken;
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x30

    const/16 v4, 0x2d

    if-eq v1, v4, :cond_1a

    if-eq v1, v3, :cond_17

    .line 3
    sget-object v1, Lorg/bson/json/JsonScanner$NumberState;->SAW_INTEGER_DIGITS:Lorg/bson/json/JsonScanner$NumberState;

    goto :goto_1c

    .line 4
    :cond_17
    sget-object v1, Lorg/bson/json/JsonScanner$NumberState;->SAW_LEADING_ZERO:Lorg/bson/json/JsonScanner$NumberState;

    goto :goto_1c

    .line 5
    :cond_1a
    sget-object v1, Lorg/bson/json/JsonScanner$NumberState;->SAW_LEADING_MINUS:Lorg/bson/json/JsonScanner$NumberState;

    .line 6
    :goto_1c
    sget-object v5, Lorg/bson/json/JsonTokenType;->INT64:Lorg/bson/json/JsonTokenType;

    .line 7
    :goto_1e
    iget-object v6, v0, Lorg/bson/json/JsonScanner;->buffer:Lorg/bson/json/JsonBuffer;

    invoke-interface {v6}, Lorg/bson/json/JsonBuffer;->read()I

    move-result v6

    .line 8
    sget-object v7, Lorg/bson/json/JsonScanner$1;->$SwitchMap$org$bson$json$JsonScanner$NumberState:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/16 v8, 0x2e

    const/16 v9, 0x65

    const/16 v10, 0x45

    const/4 v11, -0x1

    const/16 v12, 0x7d

    const/16 v13, 0x5d

    const/16 v14, 0x2c

    const/16 v15, 0x29

    packed-switch v7, :pswitch_data_1e6

    goto/16 :goto_180

    :pswitch_40
    const/4 v1, 0x7

    new-array v7, v1, [C

    .line 9
    fill-array-data v7, :array_1fc

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_48
    if-ge v9, v1, :cond_5c

    .line 10
    aget-char v10, v7, v9

    if-eq v6, v10, :cond_4f

    goto :goto_5d

    :cond_4f
    int-to-char v6, v6

    .line 11
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    iget-object v6, v0, Lorg/bson/json/JsonScanner;->buffer:Lorg/bson/json/JsonBuffer;

    invoke-interface {v6}, Lorg/bson/json/JsonBuffer;->read()I

    move-result v6

    add-int/lit8 v9, v9, 0x1

    goto :goto_48

    :cond_5c
    const/4 v8, 0x1

    :goto_5d
    if-eqz v8, :cond_7d

    .line 13
    sget-object v1, Lorg/bson/json/JsonTokenType;->DOUBLE:Lorg/bson/json/JsonTokenType;

    if-eq v6, v11, :cond_79

    if-eq v6, v15, :cond_79

    if-eq v6, v14, :cond_79

    if-eq v6, v13, :cond_79

    if-eq v6, v12, :cond_79

    .line 14
    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 15
    sget-object v5, Lorg/bson/json/JsonScanner$NumberState;->DONE:Lorg/bson/json/JsonScanner$NumberState;

    goto/16 :goto_105

    .line 16
    :cond_75
    sget-object v5, Lorg/bson/json/JsonScanner$NumberState;->INVALID:Lorg/bson/json/JsonScanner$NumberState;

    goto/16 :goto_105

    .line 17
    :cond_79
    sget-object v5, Lorg/bson/json/JsonScanner$NumberState;->DONE:Lorg/bson/json/JsonScanner$NumberState;

    goto/16 :goto_105

    .line 18
    :cond_7d
    sget-object v1, Lorg/bson/json/JsonScanner$NumberState;->INVALID:Lorg/bson/json/JsonScanner$NumberState;

    goto/16 :goto_180

    :pswitch_81
    if-eq v6, v15, :cond_a1

    if-eq v6, v14, :cond_a1

    if-eq v6, v13, :cond_a1

    if-eq v6, v12, :cond_a1

    .line 19
    invoke-static {v6}, Ljava/lang/Character;->isDigit(I)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 20
    sget-object v1, Lorg/bson/json/JsonScanner$NumberState;->SAW_EXPONENT_DIGITS:Lorg/bson/json/JsonScanner$NumberState;

    goto/16 :goto_180

    .line 21
    :cond_93
    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 22
    sget-object v1, Lorg/bson/json/JsonScanner$NumberState;->DONE:Lorg/bson/json/JsonScanner$NumberState;

    goto/16 :goto_180

    .line 23
    :cond_9d
    sget-object v1, Lorg/bson/json/JsonScanner$NumberState;->INVALID:Lorg/bson/json/JsonScanner$NumberState;

    goto/16 :goto_180

    .line 24
    :cond_a1
    sget-object v1, Lorg/bson/json/JsonScanner$NumberState;->DONE:Lorg/bson/json/JsonScanner$NumberState;

    goto/16 :goto_180

    .line 25
    :pswitch_a5
    invoke-static {v6}, Ljava/lang/Character;->isDigit(I)Z

    move-result v1

    if-eqz v1, :cond_af

    .line 26
    sget-object v1, Lorg/bson/json/JsonScanner$NumberState;->SAW_EXPONENT_DIGITS:Lorg/bson/json/JsonScanner$NumberState;

    goto/16 :goto_180

    .line 27
    :cond_af
    sget-object v1, Lorg/bson/json/JsonScanner$NumberState;->INVALID:Lorg/bson/json/JsonScanner$NumberState;

    goto/16 :goto_180

    .line 28
    :pswitch_b3
    sget-object v1, Lorg/bson/json/JsonTokenType;->DOUBLE:Lorg/bson/json/JsonTokenType;

    const/16 v5, 0x2b

    if-eq v6, v5, :cond_c7

    if-eq v6, v4, :cond_c7

    .line 29
    invoke-static {v6}, Ljava/lang/Character;->isDigit(I)Z

    move-result v5

    if-eqz v5, :cond_c4

    .line 30
    sget-object v5, Lorg/bson/json/JsonScanner$NumberState;->SAW_EXPONENT_DIGITS:Lorg/bson/json/JsonScanner$NumberState;

    goto :goto_105

    .line 31
    :cond_c4
    sget-object v5, Lorg/bson/json/JsonScanner$NumberState;->INVALID:Lorg/bson/json/JsonScanner$NumberState;

    goto :goto_105

    .line 32
    :cond_c7
    sget-object v5, Lorg/bson/json/JsonScanner$NumberState;->SAW_EXPONENT_SIGN:Lorg/bson/json/JsonScanner$NumberState;

    goto :goto_105

    :pswitch_ca
    if-eq v6, v11, :cond_f4

    if-eq v6, v15, :cond_f4

    if-eq v6, v14, :cond_f4

    if-eq v6, v10, :cond_f0

    if-eq v6, v13, :cond_f4

    if-eq v6, v9, :cond_f0

    if-eq v6, v12, :cond_f4

    .line 33
    invoke-static {v6}, Ljava/lang/Character;->isDigit(I)Z

    move-result v1

    if-eqz v1, :cond_e2

    .line 34
    sget-object v1, Lorg/bson/json/JsonScanner$NumberState;->SAW_FRACTION_DIGITS:Lorg/bson/json/JsonScanner$NumberState;

    goto/16 :goto_180

    .line 35
    :cond_e2
    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v1

    if-eqz v1, :cond_ec

    .line 36
    sget-object v1, Lorg/bson/json/JsonScanner$NumberState;->DONE:Lorg/bson/json/JsonScanner$NumberState;

    goto/16 :goto_180

    .line 37
    :cond_ec
    sget-object v1, Lorg/bson/json/JsonScanner$NumberState;->INVALID:Lorg/bson/json/JsonScanner$NumberState;

    goto/16 :goto_180

    .line 38
    :cond_f0
    sget-object v1, Lorg/bson/json/JsonScanner$NumberState;->SAW_EXPONENT_LETTER:Lorg/bson/json/JsonScanner$NumberState;

    goto/16 :goto_180

    .line 39
    :cond_f4
    sget-object v1, Lorg/bson/json/JsonScanner$NumberState;->DONE:Lorg/bson/json/JsonScanner$NumberState;

    goto/16 :goto_180

    .line 40
    :pswitch_f8
    sget-object v1, Lorg/bson/json/JsonTokenType;->DOUBLE:Lorg/bson/json/JsonTokenType;

    .line 41
    invoke-static {v6}, Ljava/lang/Character;->isDigit(I)Z

    move-result v5

    if-eqz v5, :cond_103

    .line 42
    sget-object v5, Lorg/bson/json/JsonScanner$NumberState;->SAW_FRACTION_DIGITS:Lorg/bson/json/JsonScanner$NumberState;

    goto :goto_105

    .line 43
    :cond_103
    sget-object v5, Lorg/bson/json/JsonScanner$NumberState;->INVALID:Lorg/bson/json/JsonScanner$NumberState;

    :goto_105
    move-object/from16 v16, v5

    move-object v5, v1

    move-object/from16 v1, v16

    goto/16 :goto_180

    :pswitch_10c
    if-eq v6, v11, :cond_138

    if-eq v6, v15, :cond_138

    if-eq v6, v14, :cond_138

    if-eq v6, v8, :cond_135

    if-eq v6, v10, :cond_132

    if-eq v6, v13, :cond_138

    if-eq v6, v9, :cond_132

    if-eq v6, v12, :cond_138

    .line 44
    invoke-static {v6}, Ljava/lang/Character;->isDigit(I)Z

    move-result v1

    if-eqz v1, :cond_126

    .line 45
    sget-object v1, Lorg/bson/json/JsonScanner$NumberState;->SAW_INTEGER_DIGITS:Lorg/bson/json/JsonScanner$NumberState;

    goto/16 :goto_180

    .line 46
    :cond_126
    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v1

    if-eqz v1, :cond_12f

    .line 47
    sget-object v1, Lorg/bson/json/JsonScanner$NumberState;->DONE:Lorg/bson/json/JsonScanner$NumberState;

    goto :goto_180

    .line 48
    :cond_12f
    sget-object v1, Lorg/bson/json/JsonScanner$NumberState;->INVALID:Lorg/bson/json/JsonScanner$NumberState;

    goto :goto_180

    .line 49
    :cond_132
    sget-object v1, Lorg/bson/json/JsonScanner$NumberState;->SAW_EXPONENT_LETTER:Lorg/bson/json/JsonScanner$NumberState;

    goto :goto_180

    .line 50
    :cond_135
    sget-object v1, Lorg/bson/json/JsonScanner$NumberState;->SAW_DECIMAL_POINT:Lorg/bson/json/JsonScanner$NumberState;

    goto :goto_180

    .line 51
    :cond_138
    sget-object v1, Lorg/bson/json/JsonScanner$NumberState;->DONE:Lorg/bson/json/JsonScanner$NumberState;

    goto :goto_180

    :pswitch_13b
    if-eq v6, v11, :cond_166

    if-eq v6, v15, :cond_166

    if-eq v6, v14, :cond_166

    if-eq v6, v8, :cond_163

    if-eq v6, v10, :cond_160

    if-eq v6, v13, :cond_166

    if-eq v6, v9, :cond_160

    if-eq v6, v12, :cond_166

    .line 52
    invoke-static {v6}, Ljava/lang/Character;->isDigit(I)Z

    move-result v1

    if-eqz v1, :cond_154

    .line 53
    sget-object v1, Lorg/bson/json/JsonScanner$NumberState;->SAW_INTEGER_DIGITS:Lorg/bson/json/JsonScanner$NumberState;

    goto :goto_180

    .line 54
    :cond_154
    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v1

    if-eqz v1, :cond_15d

    .line 55
    sget-object v1, Lorg/bson/json/JsonScanner$NumberState;->DONE:Lorg/bson/json/JsonScanner$NumberState;

    goto :goto_180

    .line 56
    :cond_15d
    sget-object v1, Lorg/bson/json/JsonScanner$NumberState;->INVALID:Lorg/bson/json/JsonScanner$NumberState;

    goto :goto_180

    .line 57
    :cond_160
    sget-object v1, Lorg/bson/json/JsonScanner$NumberState;->SAW_EXPONENT_LETTER:Lorg/bson/json/JsonScanner$NumberState;

    goto :goto_180

    .line 58
    :cond_163
    sget-object v1, Lorg/bson/json/JsonScanner$NumberState;->SAW_DECIMAL_POINT:Lorg/bson/json/JsonScanner$NumberState;

    goto :goto_180

    .line 59
    :cond_166
    sget-object v1, Lorg/bson/json/JsonScanner$NumberState;->DONE:Lorg/bson/json/JsonScanner$NumberState;

    goto :goto_180

    :pswitch_169
    if-eq v6, v3, :cond_17e

    const/16 v1, 0x49

    if-eq v6, v1, :cond_17b

    .line 60
    invoke-static {v6}, Ljava/lang/Character;->isDigit(I)Z

    move-result v1

    if-eqz v1, :cond_178

    .line 61
    sget-object v1, Lorg/bson/json/JsonScanner$NumberState;->SAW_INTEGER_DIGITS:Lorg/bson/json/JsonScanner$NumberState;

    goto :goto_180

    .line 62
    :cond_178
    sget-object v1, Lorg/bson/json/JsonScanner$NumberState;->INVALID:Lorg/bson/json/JsonScanner$NumberState;

    goto :goto_180

    .line 63
    :cond_17b
    sget-object v1, Lorg/bson/json/JsonScanner$NumberState;->SAW_MINUS_I:Lorg/bson/json/JsonScanner$NumberState;

    goto :goto_180

    .line 64
    :cond_17e
    sget-object v1, Lorg/bson/json/JsonScanner$NumberState;->SAW_LEADING_ZERO:Lorg/bson/json/JsonScanner$NumberState;

    .line 65
    :goto_180
    sget-object v7, Lorg/bson/json/JsonScanner$1;->$SwitchMap$org$bson$json$JsonScanner$NumberState:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/16 v8, 0xa

    if-eq v7, v8, :cond_1dd

    const/16 v8, 0xb

    if-eq v7, v8, :cond_196

    int-to-char v6, v6

    .line 66
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1e

    .line 67
    :cond_196
    iget-object v1, v0, Lorg/bson/json/JsonScanner;->buffer:Lorg/bson/json/JsonBuffer;

    invoke-interface {v1, v6}, Lorg/bson/json/JsonBuffer;->unread(I)V

    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    sget-object v2, Lorg/bson/json/JsonTokenType;->DOUBLE:Lorg/bson/json/JsonTokenType;

    if-ne v5, v2, :cond_1b1

    .line 70
    new-instance v3, Lorg/bson/json/JsonToken;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v3, v2, v1}, Lorg/bson/json/JsonToken;-><init>(Lorg/bson/json/JsonTokenType;Ljava/lang/Object;)V

    return-object v3

    .line 71
    :cond_1b1
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/32 v3, -0x80000000

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1d1

    const-wide/32 v3, 0x7fffffff

    cmp-long v5, v1, v3

    if-lez v5, :cond_1c4

    goto :goto_1d1

    .line 72
    :cond_1c4
    new-instance v3, Lorg/bson/json/JsonToken;

    sget-object v4, Lorg/bson/json/JsonTokenType;->INT32:Lorg/bson/json/JsonTokenType;

    long-to-int v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lorg/bson/json/JsonToken;-><init>(Lorg/bson/json/JsonTokenType;Ljava/lang/Object;)V

    return-object v3

    .line 73
    :cond_1d1
    :goto_1d1
    new-instance v3, Lorg/bson/json/JsonToken;

    sget-object v4, Lorg/bson/json/JsonTokenType;->INT64:Lorg/bson/json/JsonTokenType;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lorg/bson/json/JsonToken;-><init>(Lorg/bson/json/JsonTokenType;Ljava/lang/Object;)V

    return-object v3

    .line 74
    :cond_1dd
    new-instance v1, Lorg/bson/json/JsonParseException;

    const-string v2, "Invalid JSON number"

    invoke-direct {v1, v2}, Lorg/bson/json/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_1e6
    .packed-switch 0x1
        :pswitch_169
        :pswitch_13b
        :pswitch_10c
        :pswitch_f8
        :pswitch_ca
        :pswitch_b3
        :pswitch_a5
        :pswitch_81
        :pswitch_40
    .end packed-switch

    :array_1fc
    .array-data 2
        0x6es
        0x66s
        0x69s
        0x6es
        0x69s
        0x74s
        0x79s
    .end array-data
.end method

.method private scanRegularExpression()Lorg/bson/json/JsonToken;
    .registers 12

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    sget-object v2, Lorg/bson/json/JsonScanner$RegularExpressionState;->IN_PATTERN:Lorg/bson/json/JsonScanner$RegularExpressionState;

    .line 4
    :cond_c
    :goto_c
    iget-object v3, p0, Lorg/bson/json/JsonScanner;->buffer:Lorg/bson/json/JsonBuffer;

    invoke-interface {v3}, Lorg/bson/json/JsonBuffer;->read()I

    move-result v3

    .line 5
    sget-object v4, Lorg/bson/json/JsonScanner$1;->$SwitchMap$org$bson$json$JsonScanner$RegularExpressionState:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v4, v5

    const/16 v6, 0x2f

    const/4 v7, -0x1

    const/4 v8, 0x3

    const/4 v9, 0x1

    if-eq v5, v9, :cond_5e

    const/4 v10, 0x2

    if-eq v5, v10, :cond_5b

    if-eq v5, v8, :cond_27

    goto :goto_71

    :cond_27
    if-eq v3, v7, :cond_58

    const/16 v2, 0x29

    if-eq v3, v2, :cond_58

    const/16 v2, 0x2c

    if-eq v3, v2, :cond_58

    const/16 v2, 0x5d

    if-eq v3, v2, :cond_58

    const/16 v2, 0x69

    if-eq v3, v2, :cond_55

    const/16 v2, 0x6d

    if-eq v3, v2, :cond_55

    const/16 v2, 0x73

    if-eq v3, v2, :cond_55

    const/16 v2, 0x78

    if-eq v3, v2, :cond_55

    const/16 v2, 0x7d

    if-eq v3, v2, :cond_58

    .line 6
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 7
    sget-object v2, Lorg/bson/json/JsonScanner$RegularExpressionState;->DONE:Lorg/bson/json/JsonScanner$RegularExpressionState;

    goto :goto_71

    .line 8
    :cond_52
    sget-object v2, Lorg/bson/json/JsonScanner$RegularExpressionState;->INVALID:Lorg/bson/json/JsonScanner$RegularExpressionState;

    goto :goto_71

    .line 9
    :cond_55
    sget-object v2, Lorg/bson/json/JsonScanner$RegularExpressionState;->IN_OPTIONS:Lorg/bson/json/JsonScanner$RegularExpressionState;

    goto :goto_71

    .line 10
    :cond_58
    sget-object v2, Lorg/bson/json/JsonScanner$RegularExpressionState;->DONE:Lorg/bson/json/JsonScanner$RegularExpressionState;

    goto :goto_71

    .line 11
    :cond_5b
    sget-object v2, Lorg/bson/json/JsonScanner$RegularExpressionState;->IN_PATTERN:Lorg/bson/json/JsonScanner$RegularExpressionState;

    goto :goto_71

    :cond_5e
    if-eq v3, v7, :cond_6f

    if-eq v3, v6, :cond_6c

    const/16 v2, 0x5c

    if-eq v3, v2, :cond_69

    .line 12
    sget-object v2, Lorg/bson/json/JsonScanner$RegularExpressionState;->IN_PATTERN:Lorg/bson/json/JsonScanner$RegularExpressionState;

    goto :goto_71

    .line 13
    :cond_69
    sget-object v2, Lorg/bson/json/JsonScanner$RegularExpressionState;->IN_ESCAPE_SEQUENCE:Lorg/bson/json/JsonScanner$RegularExpressionState;

    goto :goto_71

    .line 14
    :cond_6c
    sget-object v2, Lorg/bson/json/JsonScanner$RegularExpressionState;->IN_OPTIONS:Lorg/bson/json/JsonScanner$RegularExpressionState;

    goto :goto_71

    .line 15
    :cond_6f
    sget-object v2, Lorg/bson/json/JsonScanner$RegularExpressionState;->INVALID:Lorg/bson/json/JsonScanner$RegularExpressionState;

    .line 16
    :goto_71
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v4, v5

    const/4 v7, 0x4

    if-eq v5, v7, :cond_a9

    const/4 v7, 0x5

    if-eq v5, v7, :cond_92

    .line 17
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v8, :cond_8a

    int-to-char v3, v3

    .line 18
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_8a
    if-eq v3, v6, :cond_c

    int-to-char v3, v3

    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    .line 20
    :cond_92
    new-instance v0, Lorg/bson/json/JsonParseException;

    new-array v1, v9, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bson/json/JsonScanner;->buffer:Lorg/bson/json/JsonBuffer;

    invoke-interface {v3}, Lorg/bson/json/JsonBuffer;->getPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Invalid JSON regular expression. Position: %d."

    invoke-direct {v0, v2, v1}, Lorg/bson/json/JsonParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 21
    :cond_a9
    iget-object v2, p0, Lorg/bson/json/JsonScanner;->buffer:Lorg/bson/json/JsonBuffer;

    invoke-interface {v2, v3}, Lorg/bson/json/JsonBuffer;->unread(I)V

    .line 22
    new-instance v2, Lorg/bson/BsonRegularExpression;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lorg/bson/BsonRegularExpression;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance v0, Lorg/bson/json/JsonToken;

    sget-object v1, Lorg/bson/json/JsonTokenType;->REGULAR_EXPRESSION:Lorg/bson/json/JsonTokenType;

    invoke-direct {v0, v1, v2}, Lorg/bson/json/JsonToken;-><init>(Lorg/bson/json/JsonTokenType;Ljava/lang/Object;)V

    return-object v0
.end method

.method private scanString(C)Lorg/bson/json/JsonToken;
    .registers 13

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    :goto_5
    iget-object v1, p0, Lorg/bson/json/JsonScanner;->buffer:Lorg/bson/json/JsonBuffer;

    invoke-interface {v1}, Lorg/bson/json/JsonBuffer;->read()I

    move-result v1

    const/4 v2, -0x1

    const/16 v3, 0x5c

    if-eq v1, v3, :cond_26

    if-ne v1, p1, :cond_1e

    .line 3
    new-instance p1, Lorg/bson/json/JsonToken;

    sget-object v1, Lorg/bson/json/JsonTokenType;->STRING:Lorg/bson/json/JsonTokenType;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lorg/bson/json/JsonToken;-><init>(Lorg/bson/json/JsonTokenType;Ljava/lang/Object;)V

    return-object p1

    :cond_1e
    if-eq v1, v2, :cond_cc

    int-to-char v3, v1

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_cc

    .line 5
    :cond_26
    iget-object v1, p0, Lorg/bson/json/JsonScanner;->buffer:Lorg/bson/json/JsonBuffer;

    invoke-interface {v1}, Lorg/bson/json/JsonBuffer;->read()I

    move-result v1

    const/16 v4, 0x22

    if-eq v1, v4, :cond_c9

    const/16 v4, 0x27

    if-eq v1, v4, :cond_c5

    const/16 v4, 0x2f

    if-eq v1, v4, :cond_c1

    if-eq v1, v3, :cond_bd

    const/16 v3, 0x62

    if-eq v1, v3, :cond_b7

    const/16 v3, 0x66

    if-eq v1, v3, :cond_b1

    const/16 v3, 0x6e

    if-eq v1, v3, :cond_ab

    const/16 v3, 0x72

    if-eq v1, v3, :cond_a5

    const/16 v3, 0x74

    if-eq v1, v3, :cond_9f

    const/16 v3, 0x75

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v3, :cond_8f

    .line 6
    iget-object v3, p0, Lorg/bson/json/JsonScanner;->buffer:Lorg/bson/json/JsonBuffer;

    invoke-interface {v3}, Lorg/bson/json/JsonBuffer;->read()I

    move-result v3

    .line 7
    iget-object v6, p0, Lorg/bson/json/JsonScanner;->buffer:Lorg/bson/json/JsonBuffer;

    invoke-interface {v6}, Lorg/bson/json/JsonBuffer;->read()I

    move-result v6

    .line 8
    iget-object v7, p0, Lorg/bson/json/JsonScanner;->buffer:Lorg/bson/json/JsonBuffer;

    invoke-interface {v7}, Lorg/bson/json/JsonBuffer;->read()I

    move-result v7

    .line 9
    iget-object v8, p0, Lorg/bson/json/JsonScanner;->buffer:Lorg/bson/json/JsonBuffer;

    invoke-interface {v8}, Lorg/bson/json/JsonBuffer;->read()I

    move-result v8

    if-eq v8, v2, :cond_cc

    .line 10
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x4

    new-array v10, v10, [C

    int-to-char v3, v3

    aput-char v3, v10, v4

    int-to-char v3, v6

    aput-char v3, v10, v5

    const/4 v3, 0x2

    int-to-char v4, v7

    aput-char v4, v10, v3

    const/4 v3, 0x3

    int-to-char v4, v8

    aput-char v4, v10, v3

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([C)V

    const/16 v3, 0x10

    .line 11
    invoke-static {v9, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_cc

    .line 12
    :cond_8f
    new-instance p1, Lorg/bson/json/JsonParseException;

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "Invalid escape sequence in JSON string \'\\%c\'."

    invoke-direct {p1, v1, v0}, Lorg/bson/json/JsonParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_9f
    const/16 v3, 0x9

    .line 13
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_cc

    :cond_a5
    const/16 v3, 0xd

    .line 14
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_cc

    :cond_ab
    const/16 v3, 0xa

    .line 15
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_cc

    :cond_b1
    const/16 v3, 0xc

    .line 16
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_cc

    :cond_b7
    const/16 v3, 0x8

    .line 17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_cc

    .line 18
    :cond_bd
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_cc

    .line 19
    :cond_c1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_cc

    .line 20
    :cond_c5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_cc

    .line 21
    :cond_c9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_cc
    :goto_cc
    if-eq v1, v2, :cond_d0

    goto/16 :goto_5

    .line 22
    :cond_d0
    new-instance p1, Lorg/bson/json/JsonParseException;

    const-string v0, "End of file in JSON string."

    invoke-direct {p1, v0}, Lorg/bson/json/JsonParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private scanUnquotedString(C)Lorg/bson/json/JsonToken;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    iget-object p1, p0, Lorg/bson/json/JsonScanner;->buffer:Lorg/bson/json/JsonBuffer;

    invoke-interface {p1}, Lorg/bson/json/JsonBuffer;->read()I

    move-result p1

    :goto_e
    const/16 v1, 0x24

    if-eq p1, v1, :cond_2e

    const/16 v1, 0x5f

    if-eq p1, v1, :cond_2e

    .line 4
    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_2e

    .line 5
    :cond_1d
    iget-object v1, p0, Lorg/bson/json/JsonScanner;->buffer:Lorg/bson/json/JsonBuffer;

    invoke-interface {v1, p1}, Lorg/bson/json/JsonBuffer;->unread(I)V

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance v0, Lorg/bson/json/JsonToken;

    sget-object v1, Lorg/bson/json/JsonTokenType;->UNQUOTED_STRING:Lorg/bson/json/JsonTokenType;

    invoke-direct {v0, v1, p1}, Lorg/bson/json/JsonToken;-><init>(Lorg/bson/json/JsonTokenType;Ljava/lang/Object;)V

    return-object v0

    :cond_2e
    :goto_2e
    int-to-char p1, p1

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    iget-object p1, p0, Lorg/bson/json/JsonScanner;->buffer:Lorg/bson/json/JsonBuffer;

    invoke-interface {p1}, Lorg/bson/json/JsonBuffer;->read()I

    move-result p1

    goto :goto_e
.end method


# virtual methods
.method public discard(I)V
    .registers 3

    iget-object v0, p0, Lorg/bson/json/JsonScanner;->buffer:Lorg/bson/json/JsonBuffer;

    invoke-interface {v0, p1}, Lorg/bson/json/JsonBuffer;->discard(I)V

    return-void
.end method

.method public mark()I
    .registers 2

    iget-object v0, p0, Lorg/bson/json/JsonScanner;->buffer:Lorg/bson/json/JsonBuffer;

    invoke-interface {v0}, Lorg/bson/json/JsonBuffer;->mark()I

    move-result v0

    return v0
.end method

.method public nextToken()Lorg/bson/json/JsonToken;
    .registers 6

    .line 1
    iget-object v0, p0, Lorg/bson/json/JsonScanner;->buffer:Lorg/bson/json/JsonBuffer;

    invoke-interface {v0}, Lorg/bson/json/JsonBuffer;->read()I

    move-result v0

    :goto_6
    const/4 v1, -0x1

    if-eq v0, v1, :cond_16

    .line 2
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 3
    iget-object v0, p0, Lorg/bson/json/JsonScanner;->buffer:Lorg/bson/json/JsonBuffer;

    invoke-interface {v0}, Lorg/bson/json/JsonBuffer;->read()I

    move-result v0

    goto :goto_6

    :cond_16
    if-ne v0, v1, :cond_22

    .line 4
    new-instance v0, Lorg/bson/json/JsonToken;

    sget-object v1, Lorg/bson/json/JsonTokenType;->END_OF_FILE:Lorg/bson/json/JsonTokenType;

    const-string v2, "<eof>"

    invoke-direct {v0, v1, v2}, Lorg/bson/json/JsonToken;-><init>(Lorg/bson/json/JsonTokenType;Ljava/lang/Object;)V

    return-object v0

    :cond_22
    const/16 v1, 0x22

    if-eq v0, v1, :cond_e4

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_da

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_d5

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_cb

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_c1

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_b7

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_ad

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_a3

    packed-switch v0, :pswitch_data_ea

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_89

    .line 5
    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v1

    if-eqz v1, :cond_50

    goto :goto_89

    :cond_50
    const/16 v1, 0x24

    if-eq v0, v1, :cond_83

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_83

    .line 6
    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v1

    if-eqz v1, :cond_5f

    goto :goto_83

    .line 7
    :cond_5f
    iget-object v1, p0, Lorg/bson/json/JsonScanner;->buffer:Lorg/bson/json/JsonBuffer;

    invoke-interface {v1}, Lorg/bson/json/JsonBuffer;->getPosition()I

    move-result v1

    .line 8
    iget-object v2, p0, Lorg/bson/json/JsonScanner;->buffer:Lorg/bson/json/JsonBuffer;

    invoke-interface {v2, v0}, Lorg/bson/json/JsonBuffer;->unread(I)V

    .line 9
    new-instance v2, Lorg/bson/json/JsonParseException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    const-string v0, "Invalid JSON input. Position: %d. Character: \'%c\'."

    invoke-direct {v2, v0, v3}, Lorg/bson/json/JsonParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :cond_83
    :goto_83
    int-to-char v0, v0

    .line 10
    invoke-direct {p0, v0}, Lorg/bson/json/JsonScanner;->scanUnquotedString(C)Lorg/bson/json/JsonToken;

    move-result-object v0

    return-object v0

    :cond_89
    :goto_89
    int-to-char v0, v0

    .line 11
    invoke-direct {p0, v0}, Lorg/bson/json/JsonScanner;->scanNumber(C)Lorg/bson/json/JsonToken;

    move-result-object v0

    return-object v0

    .line 12
    :pswitch_8f
    new-instance v0, Lorg/bson/json/JsonToken;

    sget-object v1, Lorg/bson/json/JsonTokenType;->RIGHT_PAREN:Lorg/bson/json/JsonTokenType;

    const-string v2, ")"

    invoke-direct {v0, v1, v2}, Lorg/bson/json/JsonToken;-><init>(Lorg/bson/json/JsonTokenType;Ljava/lang/Object;)V

    return-object v0

    .line 13
    :pswitch_99
    new-instance v0, Lorg/bson/json/JsonToken;

    sget-object v1, Lorg/bson/json/JsonTokenType;->LEFT_PAREN:Lorg/bson/json/JsonTokenType;

    const-string v2, "("

    invoke-direct {v0, v1, v2}, Lorg/bson/json/JsonToken;-><init>(Lorg/bson/json/JsonTokenType;Ljava/lang/Object;)V

    return-object v0

    .line 14
    :cond_a3
    new-instance v0, Lorg/bson/json/JsonToken;

    sget-object v1, Lorg/bson/json/JsonTokenType;->END_OBJECT:Lorg/bson/json/JsonTokenType;

    const-string v2, "}"

    invoke-direct {v0, v1, v2}, Lorg/bson/json/JsonToken;-><init>(Lorg/bson/json/JsonTokenType;Ljava/lang/Object;)V

    return-object v0

    .line 15
    :cond_ad
    new-instance v0, Lorg/bson/json/JsonToken;

    sget-object v1, Lorg/bson/json/JsonTokenType;->BEGIN_OBJECT:Lorg/bson/json/JsonTokenType;

    const-string v2, "{"

    invoke-direct {v0, v1, v2}, Lorg/bson/json/JsonToken;-><init>(Lorg/bson/json/JsonTokenType;Ljava/lang/Object;)V

    return-object v0

    .line 16
    :cond_b7
    new-instance v0, Lorg/bson/json/JsonToken;

    sget-object v1, Lorg/bson/json/JsonTokenType;->END_ARRAY:Lorg/bson/json/JsonTokenType;

    const-string v2, "]"

    invoke-direct {v0, v1, v2}, Lorg/bson/json/JsonToken;-><init>(Lorg/bson/json/JsonTokenType;Ljava/lang/Object;)V

    return-object v0

    .line 17
    :cond_c1
    new-instance v0, Lorg/bson/json/JsonToken;

    sget-object v1, Lorg/bson/json/JsonTokenType;->BEGIN_ARRAY:Lorg/bson/json/JsonTokenType;

    const-string v2, "["

    invoke-direct {v0, v1, v2}, Lorg/bson/json/JsonToken;-><init>(Lorg/bson/json/JsonTokenType;Ljava/lang/Object;)V

    return-object v0

    .line 18
    :cond_cb
    new-instance v0, Lorg/bson/json/JsonToken;

    sget-object v1, Lorg/bson/json/JsonTokenType;->COLON:Lorg/bson/json/JsonTokenType;

    const-string v2, ":"

    invoke-direct {v0, v1, v2}, Lorg/bson/json/JsonToken;-><init>(Lorg/bson/json/JsonTokenType;Ljava/lang/Object;)V

    return-object v0

    .line 19
    :cond_d5
    invoke-direct {p0}, Lorg/bson/json/JsonScanner;->scanRegularExpression()Lorg/bson/json/JsonToken;

    move-result-object v0

    return-object v0

    .line 20
    :cond_da
    new-instance v0, Lorg/bson/json/JsonToken;

    sget-object v1, Lorg/bson/json/JsonTokenType;->COMMA:Lorg/bson/json/JsonTokenType;

    const-string v2, ","

    invoke-direct {v0, v1, v2}, Lorg/bson/json/JsonToken;-><init>(Lorg/bson/json/JsonTokenType;Ljava/lang/Object;)V

    return-object v0

    :cond_e4
    :pswitch_e4
    int-to-char v0, v0

    .line 21
    invoke-direct {p0, v0}, Lorg/bson/json/JsonScanner;->scanString(C)Lorg/bson/json/JsonToken;

    move-result-object v0

    return-object v0

    :pswitch_data_ea
    .packed-switch 0x27
        :pswitch_e4
        :pswitch_99
        :pswitch_8f
    .end packed-switch
.end method

.method public reset(I)V
    .registers 3

    iget-object v0, p0, Lorg/bson/json/JsonScanner;->buffer:Lorg/bson/json/JsonBuffer;

    invoke-interface {v0, p1}, Lorg/bson/json/JsonBuffer;->reset(I)V

    return-void
.end method
