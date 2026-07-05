.class public Lio/realm/internal/Property;
.super Ljava/lang/Object;
.source "Property.java"

# interfaces
.implements Lio/realm/internal/NativeObject;


# static fields
.field public static final INDEXED:Z = true

.field public static final PRIMARY_KEY:Z = true

.field public static final REQUIRED:Z = true

.field public static final TYPE_ARRAY:I = 0x80

.field public static final TYPE_BOOL:I = 0x1

.field public static final TYPE_DATA:I = 0x3

.field public static final TYPE_DATE:I = 0x4

.field public static final TYPE_DECIMAL128:I = 0xb

.field public static final TYPE_DICTIONARY:I = 0x200

.field public static final TYPE_DOUBLE:I = 0x6

.field public static final TYPE_FLOAT:I = 0x5

.field public static final TYPE_INT:I = 0x0

.field public static final TYPE_LINKING_OBJECTS:I = 0x8

.field public static final TYPE_MIXED:I = 0x9

.field public static final TYPE_NULLABLE:I = 0x40

.field public static final TYPE_OBJECT:I = 0x7

.field public static final TYPE_OBJECT_ID:I = 0xa

.field public static final TYPE_REQUIRED:I = 0x0

.field public static final TYPE_SET:I = 0x100

.field public static final TYPE_STRING:I = 0x2

.field public static final TYPE_UUID:I = 0xc

.field private static final nativeFinalizerPtr:J


# instance fields
.field private nativePtr:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lio/realm/internal/Property;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/Property;->nativeFinalizerPtr:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lio/realm/internal/Property;->nativePtr:J

    .line 3
    sget-object p1, Lio/realm/internal/NativeContext;->dummyContext:Lio/realm/internal/NativeContext;

    invoke-virtual {p1, p0}, Lio/realm/internal/NativeContext;->addReference(Lio/realm/internal/NativeObject;)V

    return-void
.end method

.method public static convertFromRealmFieldType(Lio/realm/RealmFieldType;Z)I
    .locals 3

    .line 1
    sget-object v0, Lio/realm/internal/Property$1;->$SwitchMap$io$realm$RealmFieldType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "Unsupported filed type: \'%s\'."

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const/16 v1, 0x109

    goto/16 :goto_0

    :pswitch_1
    const/16 p0, 0x107

    return p0

    :pswitch_2
    const/16 v1, 0x10c

    goto/16 :goto_0

    :pswitch_3
    const/16 v1, 0x10a

    goto/16 :goto_0

    :pswitch_4
    const/16 v1, 0x10b

    goto/16 :goto_0

    :pswitch_5
    const/16 v1, 0x104

    goto/16 :goto_0

    :pswitch_6
    const/16 v1, 0x103

    goto/16 :goto_0

    :pswitch_7
    const/16 v1, 0x106

    goto/16 :goto_0

    :pswitch_8
    const/16 v1, 0x105

    goto/16 :goto_0

    :pswitch_9
    const/16 v1, 0x100

    goto/16 :goto_0

    :pswitch_a
    const/16 v1, 0x102

    goto/16 :goto_0

    :pswitch_b
    const/16 v1, 0x101

    goto/16 :goto_0

    :pswitch_c
    const/16 v1, 0x207

    goto/16 :goto_0

    :pswitch_d
    const/16 v1, 0x20c

    goto/16 :goto_0

    :pswitch_e
    const/16 v1, 0x20a

    goto/16 :goto_0

    :pswitch_f
    const/16 v1, 0x20b

    goto/16 :goto_0

    :pswitch_10
    const/16 v1, 0x204

    goto/16 :goto_0

    :pswitch_11
    const/16 v1, 0x203

    goto/16 :goto_0

    :pswitch_12
    const/16 v1, 0x206

    goto :goto_0

    :pswitch_13
    const/16 v1, 0x205

    goto :goto_0

    :pswitch_14
    const/16 v1, 0x200

    goto :goto_0

    :pswitch_15
    const/16 v1, 0x202

    goto :goto_0

    :pswitch_16
    const/16 v1, 0x201

    goto :goto_0

    :pswitch_17
    const/16 v1, 0x209

    goto :goto_0

    :pswitch_18
    const/16 v1, 0x89

    goto :goto_0

    :pswitch_19
    const/16 v1, 0x86

    goto :goto_0

    :pswitch_1a
    const/16 v1, 0x8c

    goto :goto_0

    :pswitch_1b
    const/16 v1, 0x8a

    goto :goto_0

    :pswitch_1c
    const/16 v1, 0x8b

    goto :goto_0

    :pswitch_1d
    const/16 v1, 0x85

    goto :goto_0

    :pswitch_1e
    const/16 v1, 0x84

    goto :goto_0

    :pswitch_1f
    const/16 v1, 0x83

    goto :goto_0

    :pswitch_20
    const/16 v1, 0x82

    goto :goto_0

    :pswitch_21
    const/16 v1, 0x81

    goto :goto_0

    :pswitch_22
    const/16 v1, 0x80

    goto :goto_0

    :pswitch_23
    const/4 v1, 0x6

    goto :goto_0

    :pswitch_24
    const/16 v1, 0x9

    goto :goto_0

    :pswitch_25
    const/16 v1, 0xc

    goto :goto_0

    :pswitch_26
    const/16 v1, 0xa

    goto :goto_0

    :pswitch_27
    const/16 v1, 0xb

    goto :goto_0

    :pswitch_28
    const/4 v1, 0x5

    goto :goto_0

    :pswitch_29
    const/4 v1, 0x4

    goto :goto_0

    :pswitch_2a
    const/4 v1, 0x3

    goto :goto_0

    :pswitch_2b
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_2c
    const/4 v1, 0x0

    :goto_0
    :pswitch_2d
    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0x40

    :goto_1
    or-int p0, v1, v2

    return p0

    :pswitch_2e
    const/16 p0, 0x88

    return p0

    :pswitch_2f
    const/16 p0, 0x87

    return p0

    :pswitch_30
    const/16 p0, 0x47

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2c
        :pswitch_2d
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
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
.end method

.method private static convertToRealmFieldType(I)Lio/realm/RealmFieldType;
    .locals 4

    and-int/lit8 v0, p0, -0x41

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    packed-switch v0, :pswitch_data_5

    packed-switch v0, :pswitch_data_6

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    const-string p0, "Unsupported property type: \'%d\'"

    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :pswitch_0
    sget-object p0, Lio/realm/RealmFieldType;->STRING_TO_UUID_MAP:Lio/realm/RealmFieldType;

    return-object p0

    .line 4
    :pswitch_1
    sget-object p0, Lio/realm/RealmFieldType;->STRING_TO_DECIMAL128_MAP:Lio/realm/RealmFieldType;

    return-object p0

    .line 5
    :pswitch_2
    sget-object p0, Lio/realm/RealmFieldType;->STRING_TO_OBJECT_ID_MAP:Lio/realm/RealmFieldType;

    return-object p0

    .line 6
    :pswitch_3
    sget-object p0, Lio/realm/RealmFieldType;->STRING_TO_MIXED_MAP:Lio/realm/RealmFieldType;

    return-object p0

    .line 7
    :pswitch_4
    sget-object p0, Lio/realm/RealmFieldType;->STRING_TO_LINK_MAP:Lio/realm/RealmFieldType;

    return-object p0

    .line 8
    :pswitch_5
    sget-object p0, Lio/realm/RealmFieldType;->STRING_TO_DOUBLE_MAP:Lio/realm/RealmFieldType;

    return-object p0

    .line 9
    :pswitch_6
    sget-object p0, Lio/realm/RealmFieldType;->STRING_TO_FLOAT_MAP:Lio/realm/RealmFieldType;

    return-object p0

    .line 10
    :pswitch_7
    sget-object p0, Lio/realm/RealmFieldType;->STRING_TO_DATE_MAP:Lio/realm/RealmFieldType;

    return-object p0

    .line 11
    :pswitch_8
    sget-object p0, Lio/realm/RealmFieldType;->STRING_TO_BINARY_MAP:Lio/realm/RealmFieldType;

    return-object p0

    .line 12
    :pswitch_9
    sget-object p0, Lio/realm/RealmFieldType;->STRING_TO_STRING_MAP:Lio/realm/RealmFieldType;

    return-object p0

    .line 13
    :pswitch_a
    sget-object p0, Lio/realm/RealmFieldType;->STRING_TO_BOOLEAN_MAP:Lio/realm/RealmFieldType;

    return-object p0

    .line 14
    :pswitch_b
    sget-object p0, Lio/realm/RealmFieldType;->STRING_TO_INTEGER_MAP:Lio/realm/RealmFieldType;

    return-object p0

    .line 15
    :pswitch_c
    sget-object p0, Lio/realm/RealmFieldType;->UUID_SET:Lio/realm/RealmFieldType;

    return-object p0

    .line 16
    :pswitch_d
    sget-object p0, Lio/realm/RealmFieldType;->DECIMAL128_SET:Lio/realm/RealmFieldType;

    return-object p0

    .line 17
    :pswitch_e
    sget-object p0, Lio/realm/RealmFieldType;->OBJECT_ID_SET:Lio/realm/RealmFieldType;

    return-object p0

    .line 18
    :pswitch_f
    sget-object p0, Lio/realm/RealmFieldType;->MIXED_SET:Lio/realm/RealmFieldType;

    return-object p0

    .line 19
    :pswitch_10
    sget-object p0, Lio/realm/RealmFieldType;->LINK_SET:Lio/realm/RealmFieldType;

    return-object p0

    .line 20
    :pswitch_11
    sget-object p0, Lio/realm/RealmFieldType;->DOUBLE_SET:Lio/realm/RealmFieldType;

    return-object p0

    .line 21
    :pswitch_12
    sget-object p0, Lio/realm/RealmFieldType;->FLOAT_SET:Lio/realm/RealmFieldType;

    return-object p0

    .line 22
    :pswitch_13
    sget-object p0, Lio/realm/RealmFieldType;->DATE_SET:Lio/realm/RealmFieldType;

    return-object p0

    .line 23
    :pswitch_14
    sget-object p0, Lio/realm/RealmFieldType;->BINARY_SET:Lio/realm/RealmFieldType;

    return-object p0

    .line 24
    :pswitch_15
    sget-object p0, Lio/realm/RealmFieldType;->STRING_SET:Lio/realm/RealmFieldType;

    return-object p0

    .line 25
    :pswitch_16
    sget-object p0, Lio/realm/RealmFieldType;->BOOLEAN_SET:Lio/realm/RealmFieldType;

    return-object p0

    .line 26
    :pswitch_17
    sget-object p0, Lio/realm/RealmFieldType;->INTEGER_SET:Lio/realm/RealmFieldType;

    return-object p0

    .line 27
    :pswitch_18
    sget-object p0, Lio/realm/RealmFieldType;->UUID_LIST:Lio/realm/RealmFieldType;

    return-object p0

    .line 28
    :pswitch_19
    sget-object p0, Lio/realm/RealmFieldType;->DECIMAL128_LIST:Lio/realm/RealmFieldType;

    return-object p0

    .line 29
    :pswitch_1a
    sget-object p0, Lio/realm/RealmFieldType;->OBJECT_ID_LIST:Lio/realm/RealmFieldType;

    return-object p0

    .line 30
    :pswitch_1b
    sget-object p0, Lio/realm/RealmFieldType;->MIXED_LIST:Lio/realm/RealmFieldType;

    return-object p0

    .line 31
    :pswitch_1c
    sget-object p0, Lio/realm/RealmFieldType;->LINKING_OBJECTS:Lio/realm/RealmFieldType;

    return-object p0

    .line 32
    :pswitch_1d
    sget-object p0, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    return-object p0

    .line 33
    :pswitch_1e
    sget-object p0, Lio/realm/RealmFieldType;->DOUBLE_LIST:Lio/realm/RealmFieldType;

    return-object p0

    .line 34
    :pswitch_1f
    sget-object p0, Lio/realm/RealmFieldType;->FLOAT_LIST:Lio/realm/RealmFieldType;

    return-object p0

    .line 35
    :pswitch_20
    sget-object p0, Lio/realm/RealmFieldType;->DATE_LIST:Lio/realm/RealmFieldType;

    return-object p0

    .line 36
    :pswitch_21
    sget-object p0, Lio/realm/RealmFieldType;->BINARY_LIST:Lio/realm/RealmFieldType;

    return-object p0

    .line 37
    :pswitch_22
    sget-object p0, Lio/realm/RealmFieldType;->STRING_LIST:Lio/realm/RealmFieldType;

    return-object p0

    .line 38
    :pswitch_23
    sget-object p0, Lio/realm/RealmFieldType;->BOOLEAN_LIST:Lio/realm/RealmFieldType;

    return-object p0

    .line 39
    :pswitch_24
    sget-object p0, Lio/realm/RealmFieldType;->INTEGER_LIST:Lio/realm/RealmFieldType;

    return-object p0

    .line 40
    :pswitch_25
    sget-object p0, Lio/realm/RealmFieldType;->UUID:Lio/realm/RealmFieldType;

    return-object p0

    .line 41
    :pswitch_26
    sget-object p0, Lio/realm/RealmFieldType;->DECIMAL128:Lio/realm/RealmFieldType;

    return-object p0

    .line 42
    :pswitch_27
    sget-object p0, Lio/realm/RealmFieldType;->OBJECT_ID:Lio/realm/RealmFieldType;

    return-object p0

    .line 43
    :pswitch_28
    sget-object p0, Lio/realm/RealmFieldType;->MIXED:Lio/realm/RealmFieldType;

    return-object p0

    .line 44
    :pswitch_29
    sget-object p0, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    return-object p0

    .line 45
    :pswitch_2a
    sget-object p0, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    return-object p0

    .line 46
    :pswitch_2b
    sget-object p0, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    return-object p0

    .line 47
    :pswitch_2c
    sget-object p0, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    return-object p0

    .line 48
    :pswitch_2d
    sget-object p0, Lio/realm/RealmFieldType;->BINARY:Lio/realm/RealmFieldType;

    return-object p0

    .line 49
    :pswitch_2e
    sget-object p0, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    return-object p0

    .line 50
    :pswitch_2f
    sget-object p0, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    return-object p0

    .line 51
    :pswitch_30
    sget-object p0, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x80
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x100
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x109
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x200
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x209
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static native nativeCreateComputedLinkProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public static native nativeCreatePersistedLinkProperty(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)J
.end method

.method public static native nativeCreatePersistedProperty(Ljava/lang/String;Ljava/lang/String;IZZ)J
.end method

.method private static native nativeGetColumnKey(J)J
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method private static native nativeGetLinkedObjectName(J)Ljava/lang/String;
.end method

.method private static native nativeGetType(J)I
.end method


# virtual methods
.method public getColumnKey()J
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/Property;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/Property;->nativeGetColumnKey(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLinkedObjectName()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/Property;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/Property;->nativeGetLinkedObjectName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNativeFinalizerPtr()J
    .locals 2

    sget-wide v0, Lio/realm/internal/Property;->nativeFinalizerPtr:J

    return-wide v0
.end method

.method public getNativePtr()J
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/Property;->nativePtr:J

    return-wide v0
.end method

.method public getType()Lio/realm/RealmFieldType;
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/Property;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/Property;->nativeGetType(J)I

    move-result v0

    invoke-static {v0}, Lio/realm/internal/Property;->convertToRealmFieldType(I)Lio/realm/RealmFieldType;

    move-result-object v0

    return-object v0
.end method
