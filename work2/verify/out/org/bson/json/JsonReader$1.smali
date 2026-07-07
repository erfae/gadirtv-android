.class synthetic Lorg/bson/json/JsonReader$1;
.super Ljava/lang/Object;
.source "JsonReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bson/json/JsonReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$org$bson$BsonContextType:[I

.field public static final synthetic $SwitchMap$org$bson$BsonType:[I

.field public static final synthetic $SwitchMap$org$bson$json$JsonTokenType:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 14

    .line 1
    invoke-static {}, Lorg/bson/BsonType;->values()[Lorg/bson/BsonType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/bson/json/JsonReader$1;->$SwitchMap$org$bson$BsonType:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lorg/bson/BsonType;->ARRAY:Lorg/bson/BsonType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lorg/bson/json/JsonReader$1;->$SwitchMap$org$bson$BsonType:[I

    sget-object v3, Lorg/bson/BsonType;->BINARY:Lorg/bson/BsonType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    const/4 v2, 0x3

    :try_start_1e
    sget-object v3, Lorg/bson/json/JsonReader$1;->$SwitchMap$org$bson$BsonType:[I

    sget-object v4, Lorg/bson/BsonType;->BOOLEAN:Lorg/bson/BsonType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    :catch_28
    const/4 v3, 0x4

    :try_start_29
    sget-object v4, Lorg/bson/json/JsonReader$1;->$SwitchMap$org$bson$BsonType:[I

    sget-object v5, Lorg/bson/BsonType;->DATE_TIME:Lorg/bson/BsonType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_33} :catch_33

    :catch_33
    const/4 v4, 0x5

    :try_start_34
    sget-object v5, Lorg/bson/json/JsonReader$1;->$SwitchMap$org$bson$BsonType:[I

    sget-object v6, Lorg/bson/BsonType;->DOCUMENT:Lorg/bson/BsonType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3e} :catch_3e

    :catch_3e
    const/4 v5, 0x6

    :try_start_3f
    sget-object v6, Lorg/bson/json/JsonReader$1;->$SwitchMap$org$bson$BsonType:[I

    sget-object v7, Lorg/bson/BsonType;->DOUBLE:Lorg/bson/BsonType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_49} :catch_49

    :catch_49
    const/4 v6, 0x7

    :try_start_4a
    sget-object v7, Lorg/bson/json/JsonReader$1;->$SwitchMap$org$bson$BsonType:[I

    sget-object v8, Lorg/bson/BsonType;->INT32:Lorg/bson/BsonType;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_54} :catch_54

    :catch_54
    const/16 v7, 0x8

    :try_start_56
    sget-object v8, Lorg/bson/json/JsonReader$1;->$SwitchMap$org$bson$BsonType:[I

    sget-object v9, Lorg/bson/BsonType;->INT64:Lorg/bson/BsonType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_60} :catch_60

    :catch_60
    const/16 v8, 0x9

    :try_start_62
    sget-object v9, Lorg/bson/json/JsonReader$1;->$SwitchMap$org$bson$BsonType:[I

    sget-object v10, Lorg/bson/BsonType;->DECIMAL128:Lorg/bson/BsonType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6c} :catch_6c

    :catch_6c
    const/16 v9, 0xa

    :try_start_6e
    sget-object v10, Lorg/bson/json/JsonReader$1;->$SwitchMap$org$bson$BsonType:[I

    sget-object v11, Lorg/bson/BsonType;->JAVASCRIPT:Lorg/bson/BsonType;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aput v9, v10, v11
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_78} :catch_78

    :catch_78
    const/16 v10, 0xb

    :try_start_7a
    sget-object v11, Lorg/bson/json/JsonReader$1;->$SwitchMap$org$bson$BsonType:[I

    sget-object v12, Lorg/bson/BsonType;->JAVASCRIPT_WITH_SCOPE:Lorg/bson/BsonType;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v10, v11, v12
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_84} :catch_84

    :catch_84
    :try_start_84
    sget-object v11, Lorg/bson/json/JsonReader$1;->$SwitchMap$org$bson$BsonType:[I

    sget-object v12, Lorg/bson/BsonType;->MAX_KEY:Lorg/bson/BsonType;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    const/16 v13, 0xc

    aput v13, v11, v12
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_90} :catch_90

    :catch_90
    :try_start_90
    sget-object v11, Lorg/bson/json/JsonReader$1;->$SwitchMap$org$bson$BsonType:[I

    sget-object v12, Lorg/bson/BsonType;->MIN_KEY:Lorg/bson/BsonType;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    const/16 v13, 0xd

    aput v13, v11, v12
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_9c} :catch_9c

    :catch_9c
    :try_start_9c
    sget-object v11, Lorg/bson/json/JsonReader$1;->$SwitchMap$org$bson$BsonType:[I

    sget-object v12, Lorg/bson/BsonType;->NULL:Lorg/bson/BsonType;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    const/16 v13, 0xe

    aput v13, v11, v12
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_a8} :catch_a8

    :catch_a8
    :try_start_a8
    sget-object v11, Lorg/bson/json/JsonReader$1;->$SwitchMap$org$bson$BsonType:[I

    sget-object v12, Lorg/bson/BsonType;->OBJECT_ID:Lorg/bson/BsonType;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    const/16 v13, 0xf

    aput v13, v11, v12
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b4} :catch_b4

    :catch_b4
    :try_start_b4
    sget-object v11, Lorg/bson/json/JsonReader$1;->$SwitchMap$org$bson$BsonType:[I

    sget-object v12, Lorg/bson/BsonType;->REGULAR_EXPRESSION:Lorg/bson/BsonType;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    const/16 v13, 0x10

    aput v13, v11, v12
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b4 .. :try_end_c0} :catch_c0

    :catch_c0
    :try_start_c0
    sget-object v11, Lorg/bson/json/JsonReader$1;->$SwitchMap$org$bson$BsonType:[I

    sget-object v12, Lorg/bson/BsonType;->STRING:Lorg/bson/BsonType;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    const/16 v13, 0x11

    aput v13, v11, v12
    :try_end_cc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c0 .. :try_end_cc} :catch_cc

    :catch_cc
    :try_start_cc
    sget-object v11, Lorg/bson/json/JsonReader$1;->$SwitchMap$org$bson$BsonType:[I

    sget-object v12, Lorg/bson/BsonType;->SYMBOL:Lorg/bson/BsonType;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    const/16 v13, 0x12

    aput v13, v11, v12
    :try_end_d8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cc .. :try_end_d8} :catch_d8

    :catch_d8
    :try_start_d8
    sget-object v11, Lorg/bson/json/JsonReader$1;->$SwitchMap$org$bson$BsonType:[I

    sget-object v12, Lorg/bson/BsonType;->TIMESTAMP:Lorg/bson/BsonType;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    const/16 v13, 0x13

    aput v13, v11, v12
    :try_end_e4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d8 .. :try_end_e4} :catch_e4

    :catch_e4
    :try_start_e4
    sget-object v11, Lorg/bson/json/JsonReader$1;->$SwitchMap$org$bson$BsonType:[I

    sget-object v12, Lorg/bson/BsonType;->UNDEFINED:Lorg/bson/BsonType;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    const/16 v13, 0x14

    aput v13, v11, v12
    :try_end_f0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e4 .. :try_end_f0} :catch_f0

    .line 2
    :catch_f0
    invoke-static {}, Lorg/bson/BsonContextType;->values()[Lorg/bson/BsonContextType;

    move-result-object v11

    array-length v11, v11

    new-array v11, v11, [I

    sput-object v11, Lorg/bson/json/JsonReader$1;->$SwitchMap$org$bson$BsonContextType:[I

    :try_start_f9
    sget-object v12, Lorg/bson/BsonContextType;->DOCUMENT:Lorg/bson/BsonContextType;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v1, v11, v12
    :try_end_101
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f9 .. :try_end_101} :catch_101

    :catch_101
    :try_start_101
    sget-object v11, Lorg/bson/json/JsonReader$1;->$SwitchMap$org$bson$BsonContextType:[I

    sget-object v12, Lorg/bson/BsonContextType;->SCOPE_DOCUMENT:Lorg/bson/BsonContextType;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v0, v11, v12
    :try_end_10b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_101 .. :try_end_10b} :catch_10b

    :catch_10b
    :try_start_10b
    sget-object v11, Lorg/bson/json/JsonReader$1;->$SwitchMap$org$bson$BsonContextType:[I

    sget-object v12, Lorg/bson/BsonContextType;->ARRAY:Lorg/bson/BsonContextType;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v2, v11, v12
    :try_end_115
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10b .. :try_end_115} :catch_115

    :catch_115
    :try_start_115
    sget-object v11, Lorg/bson/json/JsonReader$1;->$SwitchMap$org$bson$BsonContextType:[I

    sget-object v12, Lorg/bson/BsonContextType;->JAVASCRIPT_WITH_SCOPE:Lorg/bson/BsonContextType;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v3, v11, v12
    :try_end_11f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_115 .. :try_end_11f} :catch_11f

    :catch_11f
    :try_start_11f
    sget-object v11, Lorg/bson/json/JsonReader$1;->$SwitchMap$org$bson$BsonContextType:[I

    sget-object v12, Lorg/bson/BsonContextType;->TOP_LEVEL:Lorg/bson/BsonContextType;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v4, v11, v12
    :try_end_129
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11f .. :try_end_129} :catch_129

    .line 3
    :catch_129
    invoke-static {}, Lorg/bson/json/JsonTokenType;->values()[Lorg/bson/json/JsonTokenType;

    move-result-object v11

    array-length v11, v11

    new-array v11, v11, [I

    sput-object v11, Lorg/bson/json/JsonReader$1;->$SwitchMap$org$bson$json$JsonTokenType:[I

    :try_start_132
    sget-object v12, Lorg/bson/json/JsonTokenType;->STRING:Lorg/bson/json/JsonTokenType;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v1, v11, v12
    :try_end_13a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_132 .. :try_end_13a} :catch_13a

    :catch_13a
    :try_start_13a
    sget-object v1, Lorg/bson/json/JsonReader$1;->$SwitchMap$org$bson$json$JsonTokenType:[I

    sget-object v11, Lorg/bson/json/JsonTokenType;->UNQUOTED_STRING:Lorg/bson/json/JsonTokenType;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aput v0, v1, v11
    :try_end_144
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13a .. :try_end_144} :catch_144

    :catch_144
    :try_start_144
    sget-object v0, Lorg/bson/json/JsonReader$1;->$SwitchMap$org$bson$json$JsonTokenType:[I

    sget-object v1, Lorg/bson/json/JsonTokenType;->END_OBJECT:Lorg/bson/json/JsonTokenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_14e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_144 .. :try_end_14e} :catch_14e

    :catch_14e
    :try_start_14e
    sget-object v0, Lorg/bson/json/JsonReader$1;->$SwitchMap$org$bson$json$JsonTokenType:[I

    sget-object v1, Lorg/bson/json/JsonTokenType;->BEGIN_ARRAY:Lorg/bson/json/JsonTokenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_158
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14e .. :try_end_158} :catch_158

    :catch_158
    :try_start_158
    sget-object v0, Lorg/bson/json/JsonReader$1;->$SwitchMap$org$bson$json$JsonTokenType:[I

    sget-object v1, Lorg/bson/json/JsonTokenType;->BEGIN_OBJECT:Lorg/bson/json/JsonTokenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_162
    .catch Ljava/lang/NoSuchFieldError; {:try_start_158 .. :try_end_162} :catch_162

    :catch_162
    :try_start_162
    sget-object v0, Lorg/bson/json/JsonReader$1;->$SwitchMap$org$bson$json$JsonTokenType:[I

    sget-object v1, Lorg/bson/json/JsonTokenType;->DOUBLE:Lorg/bson/json/JsonTokenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_16c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_162 .. :try_end_16c} :catch_16c

    :catch_16c
    :try_start_16c
    sget-object v0, Lorg/bson/json/JsonReader$1;->$SwitchMap$org$bson$json$JsonTokenType:[I

    sget-object v1, Lorg/bson/json/JsonTokenType;->END_OF_FILE:Lorg/bson/json/JsonTokenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_176
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16c .. :try_end_176} :catch_176

    :catch_176
    :try_start_176
    sget-object v0, Lorg/bson/json/JsonReader$1;->$SwitchMap$org$bson$json$JsonTokenType:[I

    sget-object v1, Lorg/bson/json/JsonTokenType;->INT32:Lorg/bson/json/JsonTokenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_180
    .catch Ljava/lang/NoSuchFieldError; {:try_start_176 .. :try_end_180} :catch_180

    :catch_180
    :try_start_180
    sget-object v0, Lorg/bson/json/JsonReader$1;->$SwitchMap$org$bson$json$JsonTokenType:[I

    sget-object v1, Lorg/bson/json/JsonTokenType;->INT64:Lorg/bson/json/JsonTokenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v8, v0, v1
    :try_end_18a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_180 .. :try_end_18a} :catch_18a

    :catch_18a
    :try_start_18a
    sget-object v0, Lorg/bson/json/JsonReader$1;->$SwitchMap$org$bson$json$JsonTokenType:[I

    sget-object v1, Lorg/bson/json/JsonTokenType;->REGULAR_EXPRESSION:Lorg/bson/json/JsonTokenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v9, v0, v1
    :try_end_194
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18a .. :try_end_194} :catch_194

    :catch_194
    :try_start_194
    sget-object v0, Lorg/bson/json/JsonReader$1;->$SwitchMap$org$bson$json$JsonTokenType:[I

    sget-object v1, Lorg/bson/json/JsonTokenType;->COMMA:Lorg/bson/json/JsonTokenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v10, v0, v1
    :try_end_19e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_194 .. :try_end_19e} :catch_19e

    :catch_19e
    return-void
.end method
