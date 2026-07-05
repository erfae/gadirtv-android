.class public abstract Lio/realm/RealmObjectSchema;
.super Ljava/lang/Object;
.source "RealmObjectSchema.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/RealmObjectSchema$FieldMetaData;,
        Lio/realm/RealmObjectSchema$DynamicColumnIndices;,
        Lio/realm/RealmObjectSchema$Function;
    }
.end annotation


# static fields
.field public static final SUPPORTED_DICTIONARY_SIMPLE_FIELDS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lio/realm/RealmObjectSchema$FieldMetaData;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUPPORTED_LINKED_FIELDS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lio/realm/RealmObjectSchema$FieldMetaData;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUPPORTED_LIST_SIMPLE_FIELDS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lio/realm/RealmObjectSchema$FieldMetaData;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUPPORTED_SET_SIMPLE_FIELDS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lio/realm/RealmObjectSchema$FieldMetaData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final columnInfo:Lio/realm/internal/ColumnInfo;

.field public final realm:Lio/realm/BaseRealm;

.field public final table:Lio/realm/internal/Table;


# direct methods
.method public static constructor <clinit>()V
    .registers 32

    .line 1
    const-class v0, Lio/realm/RealmAny;

    const-class v1, [B

    const-class v2, Ljava/lang/Byte;

    const-class v3, Ljava/lang/Boolean;

    const-class v4, Ljava/lang/Double;

    const-class v5, Ljava/lang/Float;

    const-class v6, Ljava/lang/Long;

    const-class v7, Ljava/lang/Integer;

    const-class v8, Ljava/lang/Short;

    const-class v9, Ljava/lang/String;

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v11, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v12, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    sget-object v13, Lio/realm/RealmFieldType;->STRING_LIST:Lio/realm/RealmFieldType;

    const/4 v14, 0x1

    invoke-direct {v11, v12, v13, v14}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v10, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v11, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-instance v13, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v15, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    sget-object v14, Lio/realm/RealmFieldType;->INTEGER_LIST:Lio/realm/RealmFieldType;

    move-object/from16 v17, v9

    const/4 v9, 0x0

    invoke-direct {v13, v15, v14, v9}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v10, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v11, Lio/realm/RealmObjectSchema$FieldMetaData;

    const/4 v13, 0x1

    invoke-direct {v11, v15, v14, v13}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v10, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v13, Lio/realm/RealmObjectSchema$FieldMetaData;

    invoke-direct {v13, v15, v14, v9}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v10, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v13, Lio/realm/RealmObjectSchema$FieldMetaData;

    const/4 v9, 0x1

    invoke-direct {v13, v15, v14, v9}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v10, v7, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v13, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v9, Lio/realm/RealmObjectSchema$FieldMetaData;

    move-object/from16 v18, v7

    const/4 v7, 0x0

    invoke-direct {v9, v15, v14, v7}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v10, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v9, Lio/realm/RealmObjectSchema$FieldMetaData;

    const/4 v7, 0x1

    invoke-direct {v9, v15, v14, v7}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v10, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v7, Lio/realm/RealmObjectSchema$FieldMetaData;

    move-object/from16 v19, v6

    sget-object v6, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    move-object/from16 v20, v13

    sget-object v13, Lio/realm/RealmFieldType;->FLOAT_LIST:Lio/realm/RealmFieldType;

    move-object/from16 v21, v11

    const/4 v11, 0x0

    invoke-direct {v7, v6, v13, v11}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v10, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v7, Lio/realm/RealmObjectSchema$FieldMetaData;

    const/4 v11, 0x1

    invoke-direct {v7, v6, v13, v11}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v10, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v13, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v11, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    move-object/from16 v22, v5

    sget-object v5, Lio/realm/RealmFieldType;->DOUBLE_LIST:Lio/realm/RealmFieldType;

    move-object/from16 v23, v9

    const/4 v9, 0x0

    invoke-direct {v13, v11, v5, v9}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v10, v7, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v7, Lio/realm/RealmObjectSchema$FieldMetaData;

    const/4 v13, 0x1

    invoke-direct {v7, v11, v5, v13}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v10, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v7, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v13, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    move-object/from16 v24, v4

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN_LIST:Lio/realm/RealmFieldType;

    invoke-direct {v7, v13, v4, v9}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v10, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v7, Lio/realm/RealmObjectSchema$FieldMetaData;

    const/4 v9, 0x1

    invoke-direct {v7, v13, v4, v9}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v10, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-instance v7, Lio/realm/RealmObjectSchema$FieldMetaData;

    const/4 v9, 0x0

    invoke-direct {v7, v15, v14, v9}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v10, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance v4, Lio/realm/RealmObjectSchema$FieldMetaData;

    const/4 v7, 0x1

    invoke-direct {v4, v15, v14, v7}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v10, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v4, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v9, Lio/realm/RealmFieldType;->BINARY:Lio/realm/RealmFieldType;

    sget-object v14, Lio/realm/RealmFieldType;->BINARY_LIST:Lio/realm/RealmFieldType;

    invoke-direct {v4, v9, v14, v7}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v10, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-class v4, Ljava/util/Date;

    new-instance v14, Lio/realm/RealmObjectSchema$FieldMetaData;

    move-object/from16 v16, v1

    sget-object v1, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    move-object/from16 v25, v9

    sget-object v9, Lio/realm/RealmFieldType;->DATE_LIST:Lio/realm/RealmFieldType;

    invoke-direct {v14, v1, v9, v7}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v10, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-class v4, Lorg/bson/types/ObjectId;

    new-instance v9, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v14, Lio/realm/RealmFieldType;->OBJECT_ID:Lio/realm/RealmFieldType;

    move-object/from16 v26, v1

    sget-object v1, Lio/realm/RealmFieldType;->OBJECT_ID_LIST:Lio/realm/RealmFieldType;

    invoke-direct {v9, v14, v1, v7}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v10, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-class v1, Lorg/bson/types/Decimal128;

    new-instance v4, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v9, Lio/realm/RealmFieldType;->DECIMAL128:Lio/realm/RealmFieldType;

    move-object/from16 v27, v14

    sget-object v14, Lio/realm/RealmFieldType;->DECIMAL128_LIST:Lio/realm/RealmFieldType;

    invoke-direct {v4, v9, v14, v7}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v10, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-class v1, Ljava/util/UUID;

    new-instance v4, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v14, Lio/realm/RealmFieldType;->UUID:Lio/realm/RealmFieldType;

    move-object/from16 v28, v9

    sget-object v9, Lio/realm/RealmFieldType;->UUID_LIST:Lio/realm/RealmFieldType;

    invoke-direct {v4, v14, v9, v7}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v10, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v1, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v4, Lio/realm/RealmFieldType;->MIXED:Lio/realm/RealmFieldType;

    sget-object v9, Lio/realm/RealmFieldType;->MIXED_LIST:Lio/realm/RealmFieldType;

    invoke-direct {v1, v4, v9, v7}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {v10}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lio/realm/RealmObjectSchema;->SUPPORTED_LIST_SIMPLE_FIELDS:Ljava/util/Map;

    .line 24
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 25
    new-instance v9, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v10, Lio/realm/RealmFieldType;->STRING_TO_STRING_MAP:Lio/realm/RealmFieldType;

    invoke-direct {v9, v12, v10, v7}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    move-object/from16 v10, v17

    invoke-virtual {v1, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v9, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-instance v7, Lio/realm/RealmObjectSchema$FieldMetaData;

    move-object/from16 v29, v10

    sget-object v10, Lio/realm/RealmFieldType;->STRING_TO_INTEGER_MAP:Lio/realm/RealmFieldType;

    move-object/from16 v30, v12

    const/4 v12, 0x0

    invoke-direct {v7, v15, v10, v12}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v1, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance v7, Lio/realm/RealmObjectSchema$FieldMetaData;

    const/4 v9, 0x1

    invoke-direct {v7, v15, v10, v9}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v1, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v7, Lio/realm/RealmObjectSchema$FieldMetaData;

    invoke-direct {v7, v15, v10, v12}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    move-object/from16 v12, v21

    invoke-virtual {v1, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    new-instance v7, Lio/realm/RealmObjectSchema$FieldMetaData;

    invoke-direct {v7, v15, v10, v9}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    move-object/from16 v9, v18

    invoke-virtual {v1, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v7, Lio/realm/RealmObjectSchema$FieldMetaData;

    const/4 v9, 0x0

    invoke-direct {v7, v15, v10, v9}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    move-object/from16 v9, v20

    invoke-virtual {v1, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v7, Lio/realm/RealmObjectSchema$FieldMetaData;

    const/4 v9, 0x1

    invoke-direct {v7, v15, v10, v9}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    move-object/from16 v9, v19

    invoke-virtual {v1, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance v7, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v9, Lio/realm/RealmFieldType;->STRING_TO_FLOAT_MAP:Lio/realm/RealmFieldType;

    const/4 v12, 0x0

    invoke-direct {v7, v6, v9, v12}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    move-object/from16 v12, v23

    invoke-virtual {v1, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    new-instance v7, Lio/realm/RealmObjectSchema$FieldMetaData;

    const/4 v12, 0x1

    invoke-direct {v7, v6, v9, v12}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    move-object/from16 v9, v22

    invoke-virtual {v1, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v12, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v9, Lio/realm/RealmFieldType;->STRING_TO_DOUBLE_MAP:Lio/realm/RealmFieldType;

    move-object/from16 v31, v6

    const/4 v6, 0x0

    invoke-direct {v12, v11, v9, v6}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v1, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v7, Lio/realm/RealmObjectSchema$FieldMetaData;

    const/4 v12, 0x1

    invoke-direct {v7, v11, v9, v12}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    move-object/from16 v9, v24

    invoke-virtual {v1, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance v7, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v12, Lio/realm/RealmFieldType;->STRING_TO_BOOLEAN_MAP:Lio/realm/RealmFieldType;

    invoke-direct {v7, v13, v12, v6}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v1, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v7, Lio/realm/RealmObjectSchema$FieldMetaData;

    const/4 v6, 0x1

    invoke-direct {v7, v13, v12, v6}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v1, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-instance v12, Lio/realm/RealmObjectSchema$FieldMetaData;

    const/4 v6, 0x0

    invoke-direct {v12, v15, v10, v6}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v1, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    new-instance v6, Lio/realm/RealmObjectSchema$FieldMetaData;

    const/4 v7, 0x1

    invoke-direct {v6, v15, v10, v7}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    new-instance v6, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v10, Lio/realm/RealmFieldType;->STRING_TO_BINARY_MAP:Lio/realm/RealmFieldType;

    move-object/from16 v12, v25

    invoke-direct {v6, v12, v10, v7}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    move-object/from16 v10, v16

    invoke-virtual {v1, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-class v6, Ljava/util/Date;

    new-instance v10, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v12, Lio/realm/RealmFieldType;->STRING_TO_DATE_MAP:Lio/realm/RealmFieldType;

    move-object/from16 v17, v2

    move-object/from16 v2, v26

    invoke-direct {v10, v2, v12, v7}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v1, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-class v6, Lorg/bson/types/ObjectId;

    new-instance v10, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v12, Lio/realm/RealmFieldType;->STRING_TO_OBJECT_ID_MAP:Lio/realm/RealmFieldType;

    move-object/from16 v2, v27

    invoke-direct {v10, v2, v12, v7}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v1, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-class v6, Lorg/bson/types/Decimal128;

    new-instance v10, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v12, Lio/realm/RealmFieldType;->STRING_TO_DECIMAL128_MAP:Lio/realm/RealmFieldType;

    move-object/from16 v2, v28

    invoke-direct {v10, v2, v12, v7}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v1, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-class v6, Ljava/util/UUID;

    new-instance v10, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v12, Lio/realm/RealmFieldType;->STRING_TO_UUID_MAP:Lio/realm/RealmFieldType;

    invoke-direct {v10, v14, v12, v7}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v1, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance v6, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v10, Lio/realm/RealmFieldType;->STRING_TO_MIXED_MAP:Lio/realm/RealmFieldType;

    invoke-direct {v6, v4, v10, v7}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v1, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lio/realm/RealmObjectSchema;->SUPPORTED_DICTIONARY_SIMPLE_FIELDS:Ljava/util/Map;

    .line 47
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 48
    new-instance v6, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v10, Lio/realm/RealmFieldType;->STRING_SET:Lio/realm/RealmFieldType;

    move-object/from16 v12, v30

    invoke-direct {v6, v12, v10, v7}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    move-object/from16 v10, v29

    invoke-virtual {v1, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-instance v10, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v12, Lio/realm/RealmFieldType;->INTEGER_SET:Lio/realm/RealmFieldType;

    const/4 v7, 0x0

    invoke-direct {v10, v15, v12, v7}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v1, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    new-instance v6, Lio/realm/RealmObjectSchema$FieldMetaData;

    const/4 v10, 0x1

    invoke-direct {v6, v15, v12, v10}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v1, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance v6, Lio/realm/RealmObjectSchema$FieldMetaData;

    invoke-direct {v6, v15, v12, v7}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    move-object/from16 v8, v21

    invoke-virtual {v1, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance v6, Lio/realm/RealmObjectSchema$FieldMetaData;

    invoke-direct {v6, v15, v12, v10}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    move-object/from16 v8, v18

    invoke-virtual {v1, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    new-instance v6, Lio/realm/RealmObjectSchema$FieldMetaData;

    invoke-direct {v6, v15, v12, v7}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    move-object/from16 v8, v20

    invoke-virtual {v1, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-instance v6, Lio/realm/RealmObjectSchema$FieldMetaData;

    invoke-direct {v6, v15, v12, v10}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    move-object/from16 v8, v19

    invoke-virtual {v1, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    new-instance v6, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v8, Lio/realm/RealmFieldType;->FLOAT_SET:Lio/realm/RealmFieldType;

    move-object/from16 v10, v31

    invoke-direct {v6, v10, v8, v7}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    move-object/from16 v7, v23

    invoke-virtual {v1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance v6, Lio/realm/RealmObjectSchema$FieldMetaData;

    const/4 v7, 0x1

    invoke-direct {v6, v10, v8, v7}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    move-object/from16 v8, v22

    invoke-virtual {v1, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v8, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v10, Lio/realm/RealmFieldType;->DOUBLE_SET:Lio/realm/RealmFieldType;

    const/4 v7, 0x0

    invoke-direct {v8, v11, v10, v7}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v1, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance v6, Lio/realm/RealmObjectSchema$FieldMetaData;

    const/4 v8, 0x1

    invoke-direct {v6, v11, v10, v8}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v1, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    new-instance v6, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v9, Lio/realm/RealmFieldType;->BOOLEAN_SET:Lio/realm/RealmFieldType;

    invoke-direct {v6, v13, v9, v7}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance v5, Lio/realm/RealmObjectSchema$FieldMetaData;

    invoke-direct {v5, v13, v9, v8}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-instance v5, Lio/realm/RealmObjectSchema$FieldMetaData;

    invoke-direct {v5, v15, v12, v7}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance v3, Lio/realm/RealmObjectSchema$FieldMetaData;

    invoke-direct {v3, v15, v12, v8}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    move-object/from16 v5, v17

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v3, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v5, Lio/realm/RealmFieldType;->BINARY_SET:Lio/realm/RealmFieldType;

    move-object/from16 v6, v25

    invoke-direct {v3, v6, v5, v8}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    move-object/from16 v5, v16

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-class v3, Ljava/util/Date;

    new-instance v5, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v6, Lio/realm/RealmFieldType;->DATE_SET:Lio/realm/RealmFieldType;

    move-object/from16 v7, v26

    invoke-direct {v5, v7, v6, v8}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-class v3, Lorg/bson/types/ObjectId;

    new-instance v5, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v6, Lio/realm/RealmFieldType;->OBJECT_ID_SET:Lio/realm/RealmFieldType;

    move-object/from16 v7, v27

    invoke-direct {v5, v7, v6, v8}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-class v3, Lorg/bson/types/Decimal128;

    new-instance v5, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v6, Lio/realm/RealmFieldType;->DECIMAL128_SET:Lio/realm/RealmFieldType;

    invoke-direct {v5, v2, v6, v8}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-class v2, Ljava/util/UUID;

    new-instance v3, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v5, Lio/realm/RealmFieldType;->UUID_SET:Lio/realm/RealmFieldType;

    invoke-direct {v3, v14, v5, v8}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance v2, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v3, Lio/realm/RealmFieldType;->MIXED_SET:Lio/realm/RealmFieldType;

    invoke-direct {v2, v4, v3, v8}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/realm/RealmObjectSchema;->SUPPORTED_SET_SIMPLE_FIELDS:Ljava/util/Map;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 71
    const-class v1, Lio/realm/RealmObject;

    new-instance v2, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v3, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-class v1, Lio/realm/RealmList;

    new-instance v2, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v3, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    invoke-direct {v2, v3, v4, v5}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-class v1, Lio/realm/RealmDictionary;

    new-instance v2, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v3, Lio/realm/RealmFieldType;->STRING_TO_LINK_MAP:Lio/realm/RealmFieldType;

    invoke-direct {v2, v3, v4, v5}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-class v1, Lio/realm/RealmSet;

    new-instance v2, Lio/realm/RealmObjectSchema$FieldMetaData;

    sget-object v3, Lio/realm/RealmFieldType;->LINK_SET:Lio/realm/RealmFieldType;

    invoke-direct {v2, v3, v4, v5}, Lio/realm/RealmObjectSchema$FieldMetaData;-><init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/realm/RealmObjectSchema;->SUPPORTED_LINKED_FIELDS:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/Table;Lio/realm/internal/ColumnInfo;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/realm/RealmObjectSchema;->realm:Lio/realm/BaseRealm;

    .line 3
    iput-object p2, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    .line 4
    iput-object p3, p0, Lio/realm/RealmObjectSchema;->columnInfo:Lio/realm/internal/ColumnInfo;

    return-void
.end method

.method public static checkLegalName(Ljava/lang/String;)V
    .registers 2

    if-eqz p0, :cond_29

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "."

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x3f

    if-gt p0, v0, :cond_19

    return-void

    .line 4
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Field name is currently limited to max 63 characters."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Field name can not contain \'.\'"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Field name can not be null or empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public varargs abstract addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;[",
            "Lio/realm/FieldAttribute;",
            ")",
            "Lio/realm/RealmObjectSchema;"
        }
    .end annotation
.end method

.method public abstract addIndex(Ljava/lang/String;)Lio/realm/RealmObjectSchema;
.end method

.method public abstract addPrimaryKey(Ljava/lang/String;)Lio/realm/RealmObjectSchema;
.end method

.method public abstract addRealmDictionaryField(Ljava/lang/String;Lio/realm/RealmObjectSchema;)Lio/realm/RealmObjectSchema;
.end method

.method public abstract addRealmDictionaryField(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmObjectSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lio/realm/RealmObjectSchema;"
        }
    .end annotation
.end method

.method public abstract addRealmListField(Ljava/lang/String;Lio/realm/RealmObjectSchema;)Lio/realm/RealmObjectSchema;
.end method

.method public abstract addRealmListField(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmObjectSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lio/realm/RealmObjectSchema;"
        }
    .end annotation
.end method

.method public abstract addRealmObjectField(Ljava/lang/String;Lio/realm/RealmObjectSchema;)Lio/realm/RealmObjectSchema;
.end method

.method public abstract addRealmSetField(Ljava/lang/String;Lio/realm/RealmObjectSchema;)Lio/realm/RealmObjectSchema;
.end method

.method public abstract addRealmSetField(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmObjectSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lio/realm/RealmObjectSchema;"
        }
    .end annotation
.end method

.method public final checkFieldExists(Ljava/lang/String;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v0, p1}, Lio/realm/internal/Table;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    return-void

    .line 2
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field name doesn\'t exist on object \'"

    .line 3
    invoke-static {v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lio/realm/RealmObjectSchema;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getAndCheckFieldColumnKey(Ljava/lang/String;)J
    .registers 7

    .line 1
    iget-object v0, p0, Lio/realm/RealmObjectSchema;->columnInfo:Lio/realm/internal/ColumnInfo;

    invoke-virtual {v0, p1}, Lio/realm/internal/ColumnInfo;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_d

    return-wide v0

    .line 2
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field does not exist: "

    .line 3
    invoke-static {v1, p1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getColumnKey(Ljava/lang/String;)J
    .registers 7

    .line 1
    iget-object v0, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v0, p1}, Lio/realm/internal/Table;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    return-wide v0

    .line 2
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0}, Lio/realm/RealmObjectSchema;->getClassName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    const-string p1, "Field name \'%s\' does not exist on schema for \'%s\'"

    .line 4
    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFieldNames()Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->getColumnCount()J

    move-result-wide v0

    long-to-int v1, v0

    .line 2
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 3
    iget-object v1, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v1}, Lio/realm/internal/Table;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_1e

    aget-object v4, v1, v3

    .line 4
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_1e
    return-object v0
.end method

.method public getFieldType(Ljava/lang/String;)Lio/realm/RealmFieldType;
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lio/realm/RealmObjectSchema;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 2
    iget-object p1, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/Table;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object p1

    return-object p1
.end method

.method public getPrimaryKey()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/RealmObjectSchema;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {p0}, Lio/realm/RealmObjectSchema;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/realm/internal/OsObjectStore;->getPrimaryKeyForObject(Lio/realm/internal/OsSharedRealm;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    return-object v0

    .line 2
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/realm/RealmObjectSchema;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " doesn\'t have a primary key."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getPropertyClassName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public hasField(Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v0, p1}, Lio/realm/internal/Table;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public hasIndex(Ljava/lang/String;)Z
    .registers 5

    .line 1
    invoke-static {p1}, Lio/realm/RealmObjectSchema;->checkLegalName(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lio/realm/RealmObjectSchema;->checkFieldExists(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v0, p1}, Lio/realm/internal/Table;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/Table;->hasSearchIndex(J)Z

    move-result p1

    return p1
.end method

.method public hasPrimaryKey()Z
    .registers 3

    iget-object v0, p0, Lio/realm/RealmObjectSchema;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {p0}, Lio/realm/RealmObjectSchema;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/realm/internal/OsObjectStore;->getPrimaryKeyForObject(Lio/realm/internal/OsSharedRealm;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public isEmbedded()Z
    .registers 2

    iget-object v0, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->isEmbedded()Z

    move-result v0

    return v0
.end method

.method public isNullable(Ljava/lang/String;)Z
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lio/realm/RealmObjectSchema;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 2
    iget-object p1, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result p1

    return p1
.end method

.method public isPrimaryKey(Ljava/lang/String;)Z
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lio/realm/RealmObjectSchema;->checkFieldExists(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/realm/RealmObjectSchema;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {p0}, Lio/realm/RealmObjectSchema;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/realm/internal/OsObjectStore;->getPrimaryKeyForObject(Lio/realm/internal/OsSharedRealm;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isRequired(Ljava/lang/String;)Z
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lio/realm/RealmObjectSchema;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 2
    iget-object p1, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public abstract removeField(Ljava/lang/String;)Lio/realm/RealmObjectSchema;
.end method

.method public abstract removeIndex(Ljava/lang/String;)Lio/realm/RealmObjectSchema;
.end method

.method public abstract removePrimaryKey()Lio/realm/RealmObjectSchema;
.end method

.method public abstract renameField(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmObjectSchema;
.end method

.method public abstract setClassName(Ljava/lang/String;)Lio/realm/RealmObjectSchema;
.end method

.method public setEmbedded(Z)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lio/realm/RealmObjectSchema;->hasPrimaryKey()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2
    iget-object v0, p0, Lio/realm/RealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v0, p1}, Lio/realm/internal/Table;->setEmbedded(Z)Z

    move-result v0

    if-nez v0, :cond_19

    if-nez p1, :cond_11

    goto :goto_19

    .line 3
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The class could not be marked as embedded as some objects of this type break some of the Embedded Objects invariants. In order to convert all objects to be embedded, they must have one and exactly one parent objectpointing to them."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_19
    :goto_19
    return-void

    .line 4
    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Embedded classes cannot have primary keys. This class has a primary key defined so cannot be marked as embedded: "

    .line 5
    invoke-static {v0}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lio/realm/RealmObjectSchema;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract setNullable(Ljava/lang/String;Z)Lio/realm/RealmObjectSchema;
.end method

.method public abstract setRequired(Ljava/lang/String;Z)Lio/realm/RealmObjectSchema;
.end method

.method public abstract transform(Lio/realm/RealmObjectSchema$Function;)Lio/realm/RealmObjectSchema;
.end method
