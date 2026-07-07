.class public final enum Lio/realm/RealmFieldType;
.super Ljava/lang/Enum;
.source "RealmFieldType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/RealmFieldType;",
        ">;"
    }
.end annotation

.annotation build Lio/realm/internal/Keep;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/RealmFieldType;

.field public static final enum BINARY:Lio/realm/RealmFieldType;

.field public static final enum BINARY_LIST:Lio/realm/RealmFieldType;

.field public static final enum BINARY_SET:Lio/realm/RealmFieldType;

.field public static final enum BOOLEAN:Lio/realm/RealmFieldType;

.field public static final enum BOOLEAN_LIST:Lio/realm/RealmFieldType;

.field public static final enum BOOLEAN_SET:Lio/realm/RealmFieldType;

.field public static final enum DATE:Lio/realm/RealmFieldType;

.field public static final enum DATE_LIST:Lio/realm/RealmFieldType;

.field public static final enum DATE_SET:Lio/realm/RealmFieldType;

.field public static final enum DECIMAL128:Lio/realm/RealmFieldType;

.field public static final enum DECIMAL128_LIST:Lio/realm/RealmFieldType;

.field public static final enum DECIMAL128_SET:Lio/realm/RealmFieldType;

.field public static final enum DOUBLE:Lio/realm/RealmFieldType;

.field public static final enum DOUBLE_LIST:Lio/realm/RealmFieldType;

.field public static final enum DOUBLE_SET:Lio/realm/RealmFieldType;

.field public static final enum FLOAT:Lio/realm/RealmFieldType;

.field public static final enum FLOAT_LIST:Lio/realm/RealmFieldType;

.field public static final enum FLOAT_SET:Lio/realm/RealmFieldType;

.field public static final enum INTEGER:Lio/realm/RealmFieldType;

.field public static final enum INTEGER_LIST:Lio/realm/RealmFieldType;

.field public static final enum INTEGER_SET:Lio/realm/RealmFieldType;

.field public static final enum LINKING_OBJECTS:Lio/realm/RealmFieldType;

.field public static final enum LINK_SET:Lio/realm/RealmFieldType;

.field public static final enum LIST:Lio/realm/RealmFieldType;

.field public static final enum MIXED:Lio/realm/RealmFieldType;

.field public static final enum MIXED_LIST:Lio/realm/RealmFieldType;

.field public static final enum MIXED_SET:Lio/realm/RealmFieldType;

.field public static final enum OBJECT:Lio/realm/RealmFieldType;

.field public static final enum OBJECT_ID:Lio/realm/RealmFieldType;

.field public static final enum OBJECT_ID_LIST:Lio/realm/RealmFieldType;

.field public static final enum OBJECT_ID_SET:Lio/realm/RealmFieldType;

.field public static final enum STRING:Lio/realm/RealmFieldType;

.field public static final enum STRING_LIST:Lio/realm/RealmFieldType;

.field public static final enum STRING_SET:Lio/realm/RealmFieldType;

.field public static final enum STRING_TO_BINARY_MAP:Lio/realm/RealmFieldType;

.field public static final enum STRING_TO_BOOLEAN_MAP:Lio/realm/RealmFieldType;

.field public static final enum STRING_TO_DATE_MAP:Lio/realm/RealmFieldType;

.field public static final enum STRING_TO_DECIMAL128_MAP:Lio/realm/RealmFieldType;

.field public static final enum STRING_TO_DOUBLE_MAP:Lio/realm/RealmFieldType;

.field public static final enum STRING_TO_FLOAT_MAP:Lio/realm/RealmFieldType;

.field public static final enum STRING_TO_INTEGER_MAP:Lio/realm/RealmFieldType;

.field public static final enum STRING_TO_LINK_MAP:Lio/realm/RealmFieldType;

.field public static final enum STRING_TO_MIXED_MAP:Lio/realm/RealmFieldType;

.field public static final enum STRING_TO_OBJECT_ID_MAP:Lio/realm/RealmFieldType;

.field public static final enum STRING_TO_STRING_MAP:Lio/realm/RealmFieldType;

.field public static final enum STRING_TO_UUID_MAP:Lio/realm/RealmFieldType;

.field public static final enum TYPED_LINK:Lio/realm/RealmFieldType;

.field public static final enum UUID:Lio/realm/RealmFieldType;

.field public static final enum UUID_LIST:Lio/realm/RealmFieldType;

.field public static final enum UUID_SET:Lio/realm/RealmFieldType;

.field private static final basicTypes:[Lio/realm/RealmFieldType;

.field private static final listTypes:[Lio/realm/RealmFieldType;

.field private static final mapTypes:[Lio/realm/RealmFieldType;

.field private static final setTypes:[Lio/realm/RealmFieldType;


# instance fields
.field private final nativeValue:I


# direct methods
.method public static constructor <clinit>()V
    .registers 53

    .line 1
    new-instance v0, Lio/realm/RealmFieldType;

    const-string v1, "INTEGER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    .line 2
    new-instance v1, Lio/realm/RealmFieldType;

    const-string v3, "BOOLEAN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    .line 3
    new-instance v3, Lio/realm/RealmFieldType;

    const-string v5, "STRING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    .line 4
    new-instance v5, Lio/realm/RealmFieldType;

    const-string v7, "BINARY"

    const/4 v8, 0x3

    const/4 v9, 0x4

    invoke-direct {v5, v7, v8, v9}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/realm/RealmFieldType;->BINARY:Lio/realm/RealmFieldType;

    .line 5
    new-instance v7, Lio/realm/RealmFieldType;

    const-string v10, "DATE"

    const/16 v11, 0x8

    invoke-direct {v7, v10, v9, v11}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    .line 6
    new-instance v10, Lio/realm/RealmFieldType;

    const-string v12, "FLOAT"

    const/4 v13, 0x5

    const/16 v14, 0x9

    invoke-direct {v10, v12, v13, v14}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    .line 7
    new-instance v12, Lio/realm/RealmFieldType;

    const-string v15, "DOUBLE"

    const/4 v13, 0x6

    const/16 v9, 0xa

    invoke-direct {v12, v15, v13, v9}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    .line 8
    new-instance v15, Lio/realm/RealmFieldType;

    const-string v8, "OBJECT"

    const/4 v6, 0x7

    const/16 v4, 0xc

    invoke-direct {v15, v8, v6, v4}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    .line 9
    new-instance v8, Lio/realm/RealmFieldType;

    const-string v6, "DECIMAL128"

    const/16 v2, 0xb

    invoke-direct {v8, v6, v11, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lio/realm/RealmFieldType;->DECIMAL128:Lio/realm/RealmFieldType;

    .line 10
    new-instance v6, Lio/realm/RealmFieldType;

    const-string v11, "OBJECT_ID"

    const/16 v4, 0xf

    invoke-direct {v6, v11, v14, v4}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lio/realm/RealmFieldType;->OBJECT_ID:Lio/realm/RealmFieldType;

    .line 11
    new-instance v11, Lio/realm/RealmFieldType;

    const-string v14, "UUID"

    const/16 v4, 0x11

    invoke-direct {v11, v14, v9, v4}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lio/realm/RealmFieldType;->UUID:Lio/realm/RealmFieldType;

    .line 12
    new-instance v14, Lio/realm/RealmFieldType;

    const-string v9, "MIXED"

    invoke-direct {v14, v9, v2, v13}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lio/realm/RealmFieldType;->MIXED:Lio/realm/RealmFieldType;

    .line 13
    new-instance v9, Lio/realm/RealmFieldType;

    const-string v2, "TYPED_LINK"

    const/16 v13, 0x10

    const/16 v4, 0xc

    invoke-direct {v9, v2, v4, v13}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lio/realm/RealmFieldType;->TYPED_LINK:Lio/realm/RealmFieldType;

    .line 14
    new-instance v2, Lio/realm/RealmFieldType;

    const-string v4, "LIST"

    const/16 v13, 0xd

    invoke-direct {v2, v4, v13, v13}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    .line 15
    new-instance v4, Lio/realm/RealmFieldType;

    const-string v13, "LINKING_OBJECTS"

    move-object/from16 v16, v2

    const/16 v2, 0xe

    invoke-direct {v4, v13, v2, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/realm/RealmFieldType;->LINKING_OBJECTS:Lio/realm/RealmFieldType;

    .line 16
    new-instance v13, Lio/realm/RealmFieldType;

    const-string v2, "INTEGER_LIST"

    move-object/from16 v17, v4

    const/16 v4, 0x80

    move-object/from16 v18, v9

    const/16 v9, 0xf

    invoke-direct {v13, v2, v9, v4}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lio/realm/RealmFieldType;->INTEGER_LIST:Lio/realm/RealmFieldType;

    .line 17
    new-instance v2, Lio/realm/RealmFieldType;

    const-string v9, "BOOLEAN_LIST"

    const/16 v4, 0x81

    move-object/from16 v19, v13

    const/16 v13, 0x10

    invoke-direct {v2, v9, v13, v4}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/realm/RealmFieldType;->BOOLEAN_LIST:Lio/realm/RealmFieldType;

    .line 18
    new-instance v4, Lio/realm/RealmFieldType;

    const-string v9, "STRING_LIST"

    const/16 v13, 0x82

    move-object/from16 v20, v2

    const/16 v2, 0x11

    invoke-direct {v4, v9, v2, v13}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/realm/RealmFieldType;->STRING_LIST:Lio/realm/RealmFieldType;

    .line 19
    new-instance v2, Lio/realm/RealmFieldType;

    const-string v9, "BINARY_LIST"

    const/16 v13, 0x12

    move-object/from16 v21, v4

    const/16 v4, 0x84

    invoke-direct {v2, v9, v13, v4}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/realm/RealmFieldType;->BINARY_LIST:Lio/realm/RealmFieldType;

    .line 20
    new-instance v4, Lio/realm/RealmFieldType;

    const-string v9, "DATE_LIST"

    const/16 v13, 0x13

    move-object/from16 v22, v2

    const/16 v2, 0x88

    invoke-direct {v4, v9, v13, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/realm/RealmFieldType;->DATE_LIST:Lio/realm/RealmFieldType;

    .line 21
    new-instance v2, Lio/realm/RealmFieldType;

    const-string v9, "FLOAT_LIST"

    const/16 v13, 0x14

    move-object/from16 v23, v4

    const/16 v4, 0x89

    invoke-direct {v2, v9, v13, v4}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/realm/RealmFieldType;->FLOAT_LIST:Lio/realm/RealmFieldType;

    .line 22
    new-instance v4, Lio/realm/RealmFieldType;

    const-string v9, "DOUBLE_LIST"

    const/16 v13, 0x15

    move-object/from16 v24, v2

    const/16 v2, 0x8a

    invoke-direct {v4, v9, v13, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/realm/RealmFieldType;->DOUBLE_LIST:Lio/realm/RealmFieldType;

    .line 23
    new-instance v2, Lio/realm/RealmFieldType;

    const-string v9, "DECIMAL128_LIST"

    const/16 v13, 0x16

    move-object/from16 v25, v4

    const/16 v4, 0x8b

    invoke-direct {v2, v9, v13, v4}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/realm/RealmFieldType;->DECIMAL128_LIST:Lio/realm/RealmFieldType;

    .line 24
    new-instance v4, Lio/realm/RealmFieldType;

    const-string v9, "OBJECT_ID_LIST"

    const/16 v13, 0x17

    move-object/from16 v26, v2

    const/16 v2, 0x8f

    invoke-direct {v4, v9, v13, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/realm/RealmFieldType;->OBJECT_ID_LIST:Lio/realm/RealmFieldType;

    .line 25
    new-instance v2, Lio/realm/RealmFieldType;

    const-string v9, "UUID_LIST"

    const/16 v13, 0x18

    move-object/from16 v27, v4

    const/16 v4, 0x91

    invoke-direct {v2, v9, v13, v4}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/realm/RealmFieldType;->UUID_LIST:Lio/realm/RealmFieldType;

    .line 26
    new-instance v4, Lio/realm/RealmFieldType;

    const-string v9, "MIXED_LIST"

    const/16 v13, 0x19

    move-object/from16 v28, v2

    const/16 v2, 0x86

    invoke-direct {v4, v9, v13, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/realm/RealmFieldType;->MIXED_LIST:Lio/realm/RealmFieldType;

    .line 27
    new-instance v2, Lio/realm/RealmFieldType;

    const-string v9, "STRING_TO_INTEGER_MAP"

    const/16 v13, 0x1a

    move-object/from16 v29, v4

    const/16 v4, 0x200

    invoke-direct {v2, v9, v13, v4}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/realm/RealmFieldType;->STRING_TO_INTEGER_MAP:Lio/realm/RealmFieldType;

    .line 28
    new-instance v9, Lio/realm/RealmFieldType;

    const-string v13, "STRING_TO_BOOLEAN_MAP"

    const/16 v4, 0x1b

    move-object/from16 v30, v2

    const/16 v2, 0x201

    invoke-direct {v9, v13, v4, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lio/realm/RealmFieldType;->STRING_TO_BOOLEAN_MAP:Lio/realm/RealmFieldType;

    .line 29
    new-instance v2, Lio/realm/RealmFieldType;

    const-string v4, "STRING_TO_STRING_MAP"

    const/16 v13, 0x1c

    move-object/from16 v31, v9

    const/16 v9, 0x202

    invoke-direct {v2, v4, v13, v9}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/realm/RealmFieldType;->STRING_TO_STRING_MAP:Lio/realm/RealmFieldType;

    .line 30
    new-instance v4, Lio/realm/RealmFieldType;

    const-string v9, "STRING_TO_BINARY_MAP"

    const/16 v13, 0x1d

    move-object/from16 v32, v2

    const/16 v2, 0x204

    invoke-direct {v4, v9, v13, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/realm/RealmFieldType;->STRING_TO_BINARY_MAP:Lio/realm/RealmFieldType;

    .line 31
    new-instance v2, Lio/realm/RealmFieldType;

    const-string v9, "STRING_TO_DATE_MAP"

    const/16 v13, 0x1e

    move-object/from16 v33, v4

    const/16 v4, 0x208

    invoke-direct {v2, v9, v13, v4}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/realm/RealmFieldType;->STRING_TO_DATE_MAP:Lio/realm/RealmFieldType;

    .line 32
    new-instance v4, Lio/realm/RealmFieldType;

    const-string v9, "STRING_TO_FLOAT_MAP"

    const/16 v13, 0x1f

    move-object/from16 v34, v2

    const/16 v2, 0x209

    invoke-direct {v4, v9, v13, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/realm/RealmFieldType;->STRING_TO_FLOAT_MAP:Lio/realm/RealmFieldType;

    .line 33
    new-instance v2, Lio/realm/RealmFieldType;

    const-string v9, "STRING_TO_DOUBLE_MAP"

    const/16 v13, 0x20

    move-object/from16 v35, v4

    const/16 v4, 0x20a

    invoke-direct {v2, v9, v13, v4}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/realm/RealmFieldType;->STRING_TO_DOUBLE_MAP:Lio/realm/RealmFieldType;

    .line 34
    new-instance v4, Lio/realm/RealmFieldType;

    const-string v9, "STRING_TO_DECIMAL128_MAP"

    const/16 v13, 0x21

    move-object/from16 v36, v2

    const/16 v2, 0x20b

    invoke-direct {v4, v9, v13, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/realm/RealmFieldType;->STRING_TO_DECIMAL128_MAP:Lio/realm/RealmFieldType;

    .line 35
    new-instance v2, Lio/realm/RealmFieldType;

    const-string v9, "STRING_TO_OBJECT_ID_MAP"

    const/16 v13, 0x22

    move-object/from16 v37, v4

    const/16 v4, 0x20f

    invoke-direct {v2, v9, v13, v4}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/realm/RealmFieldType;->STRING_TO_OBJECT_ID_MAP:Lio/realm/RealmFieldType;

    .line 36
    new-instance v4, Lio/realm/RealmFieldType;

    const-string v9, "STRING_TO_UUID_MAP"

    const/16 v13, 0x23

    move-object/from16 v38, v2

    const/16 v2, 0x211

    invoke-direct {v4, v9, v13, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/realm/RealmFieldType;->STRING_TO_UUID_MAP:Lio/realm/RealmFieldType;

    .line 37
    new-instance v2, Lio/realm/RealmFieldType;

    const-string v9, "STRING_TO_MIXED_MAP"

    const/16 v13, 0x24

    move-object/from16 v39, v4

    const/16 v4, 0x206

    invoke-direct {v2, v9, v13, v4}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/realm/RealmFieldType;->STRING_TO_MIXED_MAP:Lio/realm/RealmFieldType;

    .line 38
    new-instance v4, Lio/realm/RealmFieldType;

    const-string v9, "STRING_TO_LINK_MAP"

    const/16 v13, 0x25

    move-object/from16 v40, v2

    const/16 v2, 0x20c

    invoke-direct {v4, v9, v13, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/realm/RealmFieldType;->STRING_TO_LINK_MAP:Lio/realm/RealmFieldType;

    .line 39
    new-instance v2, Lio/realm/RealmFieldType;

    const-string v9, "INTEGER_SET"

    const/16 v13, 0x26

    move-object/from16 v41, v4

    const/16 v4, 0x100

    invoke-direct {v2, v9, v13, v4}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/realm/RealmFieldType;->INTEGER_SET:Lio/realm/RealmFieldType;

    .line 40
    new-instance v9, Lio/realm/RealmFieldType;

    const-string v13, "BOOLEAN_SET"

    const/16 v4, 0x27

    move-object/from16 v42, v2

    const/16 v2, 0x101

    invoke-direct {v9, v13, v4, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lio/realm/RealmFieldType;->BOOLEAN_SET:Lio/realm/RealmFieldType;

    .line 41
    new-instance v2, Lio/realm/RealmFieldType;

    const-string v4, "STRING_SET"

    const/16 v13, 0x28

    move-object/from16 v43, v9

    const/16 v9, 0x102

    invoke-direct {v2, v4, v13, v9}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/realm/RealmFieldType;->STRING_SET:Lio/realm/RealmFieldType;

    .line 42
    new-instance v4, Lio/realm/RealmFieldType;

    const-string v9, "BINARY_SET"

    const/16 v13, 0x29

    move-object/from16 v44, v2

    const/16 v2, 0x104

    invoke-direct {v4, v9, v13, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/realm/RealmFieldType;->BINARY_SET:Lio/realm/RealmFieldType;

    .line 43
    new-instance v2, Lio/realm/RealmFieldType;

    const-string v9, "DATE_SET"

    const/16 v13, 0x2a

    move-object/from16 v45, v4

    const/16 v4, 0x108

    invoke-direct {v2, v9, v13, v4}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/realm/RealmFieldType;->DATE_SET:Lio/realm/RealmFieldType;

    .line 44
    new-instance v4, Lio/realm/RealmFieldType;

    const-string v9, "FLOAT_SET"

    const/16 v13, 0x2b

    move-object/from16 v46, v2

    const/16 v2, 0x109

    invoke-direct {v4, v9, v13, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/realm/RealmFieldType;->FLOAT_SET:Lio/realm/RealmFieldType;

    .line 45
    new-instance v2, Lio/realm/RealmFieldType;

    const-string v9, "DOUBLE_SET"

    const/16 v13, 0x2c

    move-object/from16 v47, v4

    const/16 v4, 0x10a

    invoke-direct {v2, v9, v13, v4}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/realm/RealmFieldType;->DOUBLE_SET:Lio/realm/RealmFieldType;

    .line 46
    new-instance v4, Lio/realm/RealmFieldType;

    const-string v9, "DECIMAL128_SET"

    const/16 v13, 0x2d

    move-object/from16 v48, v2

    const/16 v2, 0x10b

    invoke-direct {v4, v9, v13, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/realm/RealmFieldType;->DECIMAL128_SET:Lio/realm/RealmFieldType;

    .line 47
    new-instance v2, Lio/realm/RealmFieldType;

    const-string v9, "OBJECT_ID_SET"

    const/16 v13, 0x2e

    move-object/from16 v49, v4

    const/16 v4, 0x10f

    invoke-direct {v2, v9, v13, v4}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/realm/RealmFieldType;->OBJECT_ID_SET:Lio/realm/RealmFieldType;

    .line 48
    new-instance v4, Lio/realm/RealmFieldType;

    const-string v9, "UUID_SET"

    const/16 v13, 0x2f

    move-object/from16 v50, v2

    const/16 v2, 0x111

    invoke-direct {v4, v9, v13, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/realm/RealmFieldType;->UUID_SET:Lio/realm/RealmFieldType;

    .line 49
    new-instance v2, Lio/realm/RealmFieldType;

    const-string v9, "LINK_SET"

    const/16 v13, 0x30

    move-object/from16 v51, v4

    const/16 v4, 0x10c

    invoke-direct {v2, v9, v13, v4}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/realm/RealmFieldType;->LINK_SET:Lio/realm/RealmFieldType;

    .line 50
    new-instance v4, Lio/realm/RealmFieldType;

    const-string v9, "MIXED_SET"

    const/16 v13, 0x31

    move-object/from16 v52, v2

    const/16 v2, 0x106

    invoke-direct {v4, v9, v13, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/realm/RealmFieldType;->MIXED_SET:Lio/realm/RealmFieldType;

    const/16 v2, 0x32

    new-array v2, v2, [Lio/realm/RealmFieldType;

    const/4 v9, 0x0

    aput-object v0, v2, v9

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v10, v2, v0

    const/4 v0, 0x6

    aput-object v12, v2, v0

    const/4 v0, 0x7

    aput-object v15, v2, v0

    const/16 v0, 0x8

    aput-object v8, v2, v0

    const/16 v0, 0x9

    aput-object v6, v2, v0

    const/16 v0, 0xa

    aput-object v11, v2, v0

    const/16 v0, 0xb

    aput-object v14, v2, v0

    const/16 v0, 0xc

    aput-object v18, v2, v0

    const/16 v0, 0xd

    aput-object v16, v2, v0

    const/16 v0, 0xe

    aput-object v17, v2, v0

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

    aput-object v28, v2, v0

    const/16 v0, 0x19

    aput-object v29, v2, v0

    const/16 v0, 0x1a

    aput-object v30, v2, v0

    const/16 v0, 0x1b

    aput-object v31, v2, v0

    const/16 v0, 0x1c

    aput-object v32, v2, v0

    const/16 v0, 0x1d

    aput-object v33, v2, v0

    const/16 v0, 0x1e

    aput-object v34, v2, v0

    const/16 v0, 0x1f

    aput-object v35, v2, v0

    const/16 v0, 0x20

    aput-object v36, v2, v0

    const/16 v0, 0x21

    aput-object v37, v2, v0

    const/16 v0, 0x22

    aput-object v38, v2, v0

    const/16 v0, 0x23

    aput-object v39, v2, v0

    const/16 v0, 0x24

    aput-object v40, v2, v0

    const/16 v0, 0x25

    aput-object v41, v2, v0

    const/16 v0, 0x26

    aput-object v42, v2, v0

    const/16 v0, 0x27

    aput-object v43, v2, v0

    const/16 v0, 0x28

    aput-object v44, v2, v0

    const/16 v0, 0x29

    aput-object v45, v2, v0

    const/16 v0, 0x2a

    aput-object v46, v2, v0

    const/16 v0, 0x2b

    aput-object v47, v2, v0

    const/16 v0, 0x2c

    aput-object v48, v2, v0

    const/16 v0, 0x2d

    aput-object v49, v2, v0

    const/16 v0, 0x2e

    aput-object v50, v2, v0

    const/16 v0, 0x2f

    aput-object v51, v2, v0

    const/16 v0, 0x30

    aput-object v52, v2, v0

    const/16 v0, 0x31

    aput-object v4, v2, v0

    .line 51
    sput-object v2, Lio/realm/RealmFieldType;->$VALUES:[Lio/realm/RealmFieldType;

    const/16 v0, 0x12

    new-array v1, v0, [Lio/realm/RealmFieldType;

    .line 52
    sput-object v1, Lio/realm/RealmFieldType;->basicTypes:[Lio/realm/RealmFieldType;

    new-array v1, v0, [Lio/realm/RealmFieldType;

    .line 53
    sput-object v1, Lio/realm/RealmFieldType;->listTypes:[Lio/realm/RealmFieldType;

    new-array v1, v0, [Lio/realm/RealmFieldType;

    .line 54
    sput-object v1, Lio/realm/RealmFieldType;->mapTypes:[Lio/realm/RealmFieldType;

    new-array v0, v0, [Lio/realm/RealmFieldType;

    .line 55
    sput-object v0, Lio/realm/RealmFieldType;->setTypes:[Lio/realm/RealmFieldType;

    .line 56
    invoke-static {}, Lio/realm/RealmFieldType;->values()[Lio/realm/RealmFieldType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_394
    if-ge v2, v1, :cond_3c6

    aget-object v3, v0, v2

    .line 57
    iget v4, v3, Lio/realm/RealmFieldType;->nativeValue:I

    const/16 v5, 0x80

    if-ge v4, v5, :cond_3a7

    .line 58
    sget-object v6, Lio/realm/RealmFieldType;->basicTypes:[Lio/realm/RealmFieldType;

    aput-object v3, v6, v4

    const/16 v6, 0x100

    :goto_3a4
    const/16 v7, 0x200

    goto :goto_3c3

    :cond_3a7
    const/16 v6, 0x100

    if-ge v4, v6, :cond_3b2

    .line 59
    sget-object v7, Lio/realm/RealmFieldType;->listTypes:[Lio/realm/RealmFieldType;

    add-int/lit8 v4, v4, -0x80

    aput-object v3, v7, v4

    goto :goto_3a4

    :cond_3b2
    const/16 v7, 0x200

    if-ge v4, v7, :cond_3bd

    .line 60
    sget-object v8, Lio/realm/RealmFieldType;->setTypes:[Lio/realm/RealmFieldType;

    add-int/lit16 v4, v4, -0x100

    aput-object v3, v8, v4

    goto :goto_3c3

    .line 61
    :cond_3bd
    sget-object v8, Lio/realm/RealmFieldType;->mapTypes:[Lio/realm/RealmFieldType;

    add-int/lit16 v4, v4, -0x200

    aput-object v3, v8, v4

    :goto_3c3
    add-int/lit8 v2, v2, 0x1

    goto :goto_394

    :cond_3c6
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lio/realm/RealmFieldType;->nativeValue:I

    return-void
.end method

.method public static fromNativeValue(I)Lio/realm/RealmFieldType;
    .registers 5

    if-ltz p0, :cond_c

    .line 1
    sget-object v0, Lio/realm/RealmFieldType;->basicTypes:[Lio/realm/RealmFieldType;

    array-length v1, v0

    if-ge p0, v1, :cond_c

    .line 2
    aget-object v0, v0, p0

    if-eqz v0, :cond_c

    return-object v0

    :cond_c
    const/16 v0, 0x80

    const/16 v1, 0x100

    if-gt v0, p0, :cond_20

    if-ge p0, v1, :cond_20

    add-int/lit8 v0, p0, -0x80

    .line 3
    sget-object v2, Lio/realm/RealmFieldType;->listTypes:[Lio/realm/RealmFieldType;

    array-length v3, v2

    if-ge v0, v3, :cond_20

    .line 4
    aget-object v0, v2, v0

    if-eqz v0, :cond_20

    return-object v0

    :cond_20
    const/16 v0, 0x200

    if-gt v1, p0, :cond_32

    if-ge p0, v0, :cond_32

    add-int/lit16 v1, p0, -0x100

    .line 5
    sget-object v2, Lio/realm/RealmFieldType;->setTypes:[Lio/realm/RealmFieldType;

    array-length v3, v2

    if-ge v1, v3, :cond_32

    .line 6
    aget-object v1, v2, v1

    if-eqz v1, :cond_32

    return-object v1

    :cond_32
    if-gt v0, p0, :cond_40

    add-int/lit16 v0, p0, -0x200

    .line 7
    sget-object v1, Lio/realm/RealmFieldType;->mapTypes:[Lio/realm/RealmFieldType;

    array-length v2, v1

    if-ge v0, v2, :cond_40

    .line 8
    aget-object v0, v1, v0

    if-eqz v0, :cond_40

    return-object v0

    .line 9
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid native Realm type: "

    .line 10
    invoke-static {v1, p0}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/RealmFieldType;
    .registers 2

    const-class v0, Lio/realm/RealmFieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/realm/RealmFieldType;

    return-object p0
.end method

.method public static values()[Lio/realm/RealmFieldType;
    .registers 1

    sget-object v0, Lio/realm/RealmFieldType;->$VALUES:[Lio/realm/RealmFieldType;

    invoke-virtual {v0}, [Lio/realm/RealmFieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/RealmFieldType;

    return-object v0
.end method


# virtual methods
.method public getNativeValue()I
    .registers 2

    iget v0, p0, Lio/realm/RealmFieldType;->nativeValue:I

    return v0
.end method

.method public isValid(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    iget v0, p0, Lio/realm/RealmFieldType;->nativeValue:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_67

    if-eq v0, v1, :cond_64

    const/4 v3, 0x2

    if-eq v0, v3, :cond_61

    const/4 v3, 0x4

    if-eq v0, v3, :cond_56

    const/4 v1, 0x6

    if-eq v0, v1, :cond_53

    sparse-switch v0, :sswitch_data_7a

    packed-switch v0, :pswitch_data_b4

    packed-switch v0, :pswitch_data_c8

    packed-switch v0, :pswitch_data_d2

    packed-switch v0, :pswitch_data_de

    packed-switch v0, :pswitch_data_e8

    packed-switch v0, :pswitch_data_f6

    packed-switch v0, :pswitch_data_100

    .line 2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported Realm type:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_40
    instance-of p1, p1, Lorg/bson/types/ObjectId;

    return p1

    .line 4
    :pswitch_43
    instance-of p1, p1, Lorg/bson/types/Decimal128;

    return p1

    .line 5
    :pswitch_46
    instance-of p1, p1, Ljava/lang/Double;

    return p1

    .line 6
    :pswitch_49
    instance-of p1, p1, Ljava/lang/Float;

    return p1

    .line 7
    :pswitch_4c
    instance-of p1, p1, Ljava/util/Date;

    return p1

    :pswitch_4f
    :sswitch_4f
    return v2

    .line 8
    :sswitch_50
    instance-of p1, p1, Ljava/util/UUID;

    return p1

    .line 9
    :cond_53
    :sswitch_53
    instance-of p1, p1, Lio/realm/RealmAny;

    return p1

    .line 10
    :cond_56
    instance-of v0, p1, [B

    if-nez v0, :cond_60

    instance-of p1, p1, Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_5f

    goto :goto_60

    :cond_5f
    const/4 v1, 0x0

    :cond_60
    :goto_60
    return v1

    .line 11
    :cond_61
    instance-of p1, p1, Ljava/lang/String;

    return p1

    .line 12
    :cond_64
    instance-of p1, p1, Ljava/lang/Boolean;

    return p1

    .line 13
    :cond_67
    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_79

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_79

    instance-of v0, p1, Ljava/lang/Short;

    if-nez v0, :cond_79

    instance-of p1, p1, Ljava/lang/Byte;

    if-eqz p1, :cond_78

    goto :goto_79

    :cond_78
    const/4 v1, 0x0

    :cond_79
    :goto_79
    return v1

    :sswitch_data_7a
    .sparse-switch
        0x6 -> :sswitch_53
        0x11 -> :sswitch_50
        0x84 -> :sswitch_4f
        0x86 -> :sswitch_4f
        0x8f -> :sswitch_4f
        0x91 -> :sswitch_4f
        0x104 -> :sswitch_4f
        0x106 -> :sswitch_4f
        0x10f -> :sswitch_4f
        0x111 -> :sswitch_4f
        0x204 -> :sswitch_4f
        0x206 -> :sswitch_4f
        0x20f -> :sswitch_4f
        0x211 -> :sswitch_4f
    .end sparse-switch

    :pswitch_data_b4
    .packed-switch 0x8
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_40
    .end packed-switch

    :pswitch_data_c8
    .packed-switch 0x80
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
    .end packed-switch

    :pswitch_data_d2
    .packed-switch 0x88
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
    .end packed-switch

    :pswitch_data_de
    .packed-switch 0x100
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x108
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
    .end packed-switch

    :pswitch_data_f6
    .packed-switch 0x200
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
    .end packed-switch

    :pswitch_data_100
    .packed-switch 0x208
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
    .end packed-switch
.end method
