.class synthetic Lio/realm/internal/Table$1;
.super Ljava/lang/Object;
.source "Table.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/Table;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$io$realm$RealmFieldType:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lio/realm/RealmFieldType;->values()[Lio/realm/RealmFieldType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/realm/internal/Table$1;->$SwitchMap$io$realm$RealmFieldType:[I

    :try_start_9
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lio/realm/internal/Table$1;->$SwitchMap$io$realm$RealmFieldType:[I

    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lio/realm/internal/Table$1;->$SwitchMap$io$realm$RealmFieldType:[I

    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lio/realm/internal/Table$1;->$SwitchMap$io$realm$RealmFieldType:[I

    sget-object v1, Lio/realm/RealmFieldType;->BINARY:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lio/realm/internal/Table$1;->$SwitchMap$io$realm$RealmFieldType:[I

    sget-object v1, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lio/realm/internal/Table$1;->$SwitchMap$io$realm$RealmFieldType:[I

    sget-object v1, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lio/realm/internal/Table$1;->$SwitchMap$io$realm$RealmFieldType:[I

    sget-object v1, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v0, Lio/realm/internal/Table$1;->$SwitchMap$io$realm$RealmFieldType:[I

    sget-object v1, Lio/realm/RealmFieldType;->DECIMAL128:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    :try_start_60
    sget-object v0, Lio/realm/internal/Table$1;->$SwitchMap$io$realm$RealmFieldType:[I

    sget-object v1, Lio/realm/RealmFieldType;->OBJECT_ID:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6c
    sget-object v0, Lio/realm/internal/Table$1;->$SwitchMap$io$realm$RealmFieldType:[I

    sget-object v1, Lio/realm/RealmFieldType;->MIXED:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_78

    :catch_78
    :try_start_78
    sget-object v0, Lio/realm/internal/Table$1;->$SwitchMap$io$realm$RealmFieldType:[I

    sget-object v1, Lio/realm/RealmFieldType;->UUID:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_84} :catch_84

    :catch_84
    :try_start_84
    sget-object v0, Lio/realm/internal/Table$1;->$SwitchMap$io$realm$RealmFieldType:[I

    sget-object v1, Lio/realm/RealmFieldType;->INTEGER_LIST:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_90} :catch_90

    :catch_90
    :try_start_90
    sget-object v0, Lio/realm/internal/Table$1;->$SwitchMap$io$realm$RealmFieldType:[I

    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN_LIST:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_9c} :catch_9c

    :catch_9c
    :try_start_9c
    sget-object v0, Lio/realm/internal/Table$1;->$SwitchMap$io$realm$RealmFieldType:[I

    sget-object v1, Lio/realm/RealmFieldType;->STRING_LIST:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_a8} :catch_a8

    :catch_a8
    :try_start_a8
    sget-object v0, Lio/realm/internal/Table$1;->$SwitchMap$io$realm$RealmFieldType:[I

    sget-object v1, Lio/realm/RealmFieldType;->BINARY_LIST:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b4} :catch_b4

    :catch_b4
    :try_start_b4
    sget-object v0, Lio/realm/internal/Table$1;->$SwitchMap$io$realm$RealmFieldType:[I

    sget-object v1, Lio/realm/RealmFieldType;->DATE_LIST:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b4 .. :try_end_c0} :catch_c0

    :catch_c0
    :try_start_c0
    sget-object v0, Lio/realm/internal/Table$1;->$SwitchMap$io$realm$RealmFieldType:[I

    sget-object v1, Lio/realm/RealmFieldType;->FLOAT_LIST:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_cc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c0 .. :try_end_cc} :catch_cc

    :catch_cc
    :try_start_cc
    sget-object v0, Lio/realm/internal/Table$1;->$SwitchMap$io$realm$RealmFieldType:[I

    sget-object v1, Lio/realm/RealmFieldType;->DOUBLE_LIST:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_d8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cc .. :try_end_d8} :catch_d8

    :catch_d8
    :try_start_d8
    sget-object v0, Lio/realm/internal/Table$1;->$SwitchMap$io$realm$RealmFieldType:[I

    sget-object v1, Lio/realm/RealmFieldType;->DECIMAL128_LIST:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_e4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d8 .. :try_end_e4} :catch_e4

    :catch_e4
    :try_start_e4
    sget-object v0, Lio/realm/internal/Table$1;->$SwitchMap$io$realm$RealmFieldType:[I

    sget-object v1, Lio/realm/RealmFieldType;->OBJECT_ID_LIST:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_f0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e4 .. :try_end_f0} :catch_f0

    :catch_f0
    :try_start_f0
    sget-object v0, Lio/realm/internal/Table$1;->$SwitchMap$io$realm$RealmFieldType:[I

    sget-object v1, Lio/realm/RealmFieldType;->UUID_LIST:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_fc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f0 .. :try_end_fc} :catch_fc

    :catch_fc
    :try_start_fc
    sget-object v0, Lio/realm/internal/Table$1;->$SwitchMap$io$realm$RealmFieldType:[I

    sget-object v1, Lio/realm/RealmFieldType;->MIXED_LIST:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_108
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fc .. :try_end_108} :catch_108

    :catch_108
    :try_start_108
    sget-object v0, Lio/realm/internal/Table$1;->$SwitchMap$io$realm$RealmFieldType:[I

    sget-object v1, Lio/realm/RealmFieldType;->STRING_TO_INTEGER_MAP:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_114
    .catch Ljava/lang/NoSuchFieldError; {:try_start_108 .. :try_end_114} :catch_114

    :catch_114
    :try_start_114
    sget-object v0, Lio/realm/internal/Table$1;->$SwitchMap$io$realm$RealmFieldType:[I

    sget-object v1, Lio/realm/RealmFieldType;->STRING_TO_BOOLEAN_MAP:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_120
    .catch Ljava/lang/NoSuchFieldError; {:try_start_114 .. :try_end_120} :catch_120

    :catch_120
    :try_start_120
    sget-object v0, Lio/realm/internal/Table$1;->$SwitchMap$io$realm$RealmFieldType:[I

    sget-object v1, Lio/realm/RealmFieldType;->STRING_TO_STRING_MAP:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_12c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_120 .. :try_end_12c} :catch_12c

    :catch_12c
    :try_start_12c
    sget-object v0, Lio/realm/internal/Table$1;->$SwitchMap$io$realm$RealmFieldType:[I

    sget-object v1, Lio/realm/RealmFieldType;->STRING_TO_BINARY_MAP:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_138
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12c .. :try_end_138} :catch_138

    :catch_138
    :try_start_138
    sget-object v0, Lio/realm/internal/Table$1;->$SwitchMap$io$realm$RealmFieldType:[I

    sget-object v1, Lio/realm/RealmFieldType;->STRING_TO_DATE_MAP:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_144
    .catch Ljava/lang/NoSuchFieldError; {:try_start_138 .. :try_end_144} :catch_144

    :catch_144
    :try_start_144
    sget-object v0, Lio/realm/internal/Table$1;->$SwitchMap$io$realm$RealmFieldType:[I

    sget-object v1, Lio/realm/RealmFieldType;->STRING_TO_FLOAT_MAP:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_150
    .catch Ljava/lang/NoSuchFieldError; {:try_start_144 .. :try_end_150} :catch_150

    :catch_150
    :try_start_150
    sget-object v0, Lio/realm/internal/Table$1;->$SwitchMap$io$realm$RealmFieldType:[I

    sget-object v1, Lio/realm/RealmFieldType;->STRING_TO_DOUBLE_MAP:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_15c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_150 .. :try_end_15c} :catch_15c

    :catch_15c
    :try_start_15c
    sget-object v0, Lio/realm/internal/Table$1;->$SwitchMap$io$realm$RealmFieldType:[I

    sget-object v1, Lio/realm/RealmFieldType;->STRING_TO_DECIMAL128_MAP:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_168
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15c .. :try_end_168} :catch_168

    :catch_168
    :try_start_168
    sget-object v0, Lio/realm/internal/Table$1;->$SwitchMap$io$realm$RealmFieldType:[I

    sget-object v1, Lio/realm/RealmFieldType;->STRING_TO_OBJECT_ID_MAP:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_174
    .catch Ljava/lang/NoSuchFieldError; {:try_start_168 .. :try_end_174} :catch_174

    :catch_174
    :try_start_174
    sget-object v0, Lio/realm/internal/Table$1;->$SwitchMap$io$realm$RealmFieldType:[I

    sget-object v1, Lio/realm/RealmFieldType;->STRING_TO_UUID_MAP:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_180
    .catch Ljava/lang/NoSuchFieldError; {:try_start_174 .. :try_end_180} :catch_180

    :catch_180
    :try_start_180
    sget-object v0, Lio/realm/internal/Table$1;->$SwitchMap$io$realm$RealmFieldType:[I

    sget-object v1, Lio/realm/RealmFieldType;->STRING_TO_MIXED_MAP:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_18c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_180 .. :try_end_18c} :catch_18c

    :catch_18c
    :try_start_18c
    sget-object v0, Lio/realm/internal/Table$1;->$SwitchMap$io$realm$RealmFieldType:[I

    sget-object v1, Lio/realm/RealmFieldType;->INTEGER_SET:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_198
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18c .. :try_end_198} :catch_198

    :catch_198
    :try_start_198
    sget-object v0, Lio/realm/internal/Table$1;->$SwitchMap$io$realm$RealmFieldType:[I

    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN_SET:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_1a4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_198 .. :try_end_1a4} :catch_1a4

    :catch_1a4
    :try_start_1a4
    sget-object v0, Lio/realm/internal/Table$1;->$SwitchMap$io$realm$RealmFieldType:[I

    sget-object v1, Lio/realm/RealmFieldType;->STRING_SET:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_1b0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a4 .. :try_end_1b0} :catch_1b0

    :catch_1b0
    :try_start_1b0
    sget-object v0, Lio/realm/internal/Table$1;->$SwitchMap$io$realm$RealmFieldType:[I

    sget-object v1, Lio/realm/RealmFieldType;->BINARY_SET:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_1bc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b0 .. :try_end_1bc} :catch_1bc

    :catch_1bc
    :try_start_1bc
    sget-object v0, Lio/realm/internal/Table$1;->$SwitchMap$io$realm$RealmFieldType:[I

    sget-object v1, Lio/realm/RealmFieldType;->DATE_SET:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_1c8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1bc .. :try_end_1c8} :catch_1c8

    :catch_1c8
    :try_start_1c8
    sget-object v0, Lio/realm/internal/Table$1;->$SwitchMap$io$realm$RealmFieldType:[I

    sget-object v1, Lio/realm/RealmFieldType;->FLOAT_SET:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_1d4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c8 .. :try_end_1d4} :catch_1d4

    :catch_1d4
    :try_start_1d4
    sget-object v0, Lio/realm/internal/Table$1;->$SwitchMap$io$realm$RealmFieldType:[I

    sget-object v1, Lio/realm/RealmFieldType;->DOUBLE_SET:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_1e0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d4 .. :try_end_1e0} :catch_1e0

    :catch_1e0
    :try_start_1e0
    sget-object v0, Lio/realm/internal/Table$1;->$SwitchMap$io$realm$RealmFieldType:[I

    sget-object v1, Lio/realm/RealmFieldType;->DECIMAL128_SET:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_1ec
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e0 .. :try_end_1ec} :catch_1ec

    :catch_1ec
    :try_start_1ec
    sget-object v0, Lio/realm/internal/Table$1;->$SwitchMap$io$realm$RealmFieldType:[I

    sget-object v1, Lio/realm/RealmFieldType;->OBJECT_ID_SET:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_1f8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ec .. :try_end_1f8} :catch_1f8

    :catch_1f8
    :try_start_1f8
    sget-object v0, Lio/realm/internal/Table$1;->$SwitchMap$io$realm$RealmFieldType:[I

    sget-object v1, Lio/realm/RealmFieldType;->UUID_SET:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_204
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f8 .. :try_end_204} :catch_204

    :catch_204
    :try_start_204
    sget-object v0, Lio/realm/internal/Table$1;->$SwitchMap$io$realm$RealmFieldType:[I

    sget-object v1, Lio/realm/RealmFieldType;->MIXED_SET:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_210
    .catch Ljava/lang/NoSuchFieldError; {:try_start_204 .. :try_end_210} :catch_210

    :catch_210
    return-void
.end method
