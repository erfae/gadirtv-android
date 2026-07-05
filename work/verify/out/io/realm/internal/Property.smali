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
    .registers 2

    invoke-static {}, Lio/realm/internal/Property;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/Property;->nativeFinalizerPtr:J

    return-void
.end method

.method public constructor <init>(J)V
    .registers 3

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
    .registers 5

    .line 1
    sget-object v0, Lio/realm/internal/Property$1;->$SwitchMap$io$realm$RealmFieldType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_c6

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

    :pswitch_23
    const/16 v1, 0x109

    goto/16 :goto_b4

    :pswitch_27
    const/16 p0, 0x107

    return p0

    :pswitch_2a
    const/16 v1, 0x10c

    goto/16 :goto_b4

    :pswitch_2e
    const/16 v1, 0x10a

    goto/16 :goto_b4

    :pswitch_32
    const/16 v1, 0x10b

    goto/16 :goto_b4

    :pswitch_36
    const/16 v1, 0x104

    goto/16 :goto_b4

    :pswitch_3a
    const/16 v1, 0x103

    goto/16 :goto_b4

    :pswitch_3e
    const/16 v1, 0x106

    goto/16 :goto_b4

    :pswitch_42
    const/16 v1, 0x105

    goto/16 :goto_b4

    :pswitch_46
    const/16 v1, 0x100

    goto/16 :goto_b4

    :pswitch_4a
    const/16 v1, 0x102

    goto/16 :goto_b4

    :pswitch_4e
    const/16 v1, 0x101

    goto/16 :goto_b4

    :pswitch_52
    const/16 v1, 0x207

    goto/16 :goto_b4

    :pswitch_56
    const/16 v1, 0x20c

    goto/16 :goto_b4

    :pswitch_5a
    const/16 v1, 0x20a

    goto/16 :goto_b4

    :pswitch_5e
    const/16 v1, 0x20b

    goto/16 :goto_b4

    :pswitch_62
    const/16 v1, 0x204

    goto/16 :goto_b4

    :pswitch_66
    const/16 v1, 0x203

    goto/16 :goto_b4

    :pswitch_6a
    const/16 v1, 0x206

    goto :goto_b4

    :pswitch_6d
    const/16 v1, 0x205

    goto :goto_b4

    :pswitch_70
    const/16 v1, 0x200

    goto :goto_b4

    :pswitch_73
    const/16 v1, 0x202

    goto :goto_b4

    :pswitch_76
    const/16 v1, 0x201

    goto :goto_b4

    :pswitch_79
    const/16 v1, 0x209

    goto :goto_b4

    :pswitch_7c
    const/16 v1, 0x89

    goto :goto_b4

    :pswitch_7f
    const/16 v1, 0x86

    goto :goto_b4

    :pswitch_82
    const/16 v1, 0x8c

    goto :goto_b4

    :pswitch_85
    const/16 v1, 0x8a

    goto :goto_b4

    :pswitch_88
    const/16 v1, 0x8b

    goto :goto_b4

    :pswitch_8b
    const/16 v1, 0x85

    goto :goto_b4

    :pswitch_8e
    const/16 v1, 0x84

    goto :goto_b4

    :pswitch_91
    const/16 v1, 0x83

    goto :goto_b4

    :pswitch_94
    const/16 v1, 0x82

    goto :goto_b4

    :pswitch_97
    const/16 v1, 0x81

    goto :goto_b4

    :pswitch_9a
    const/16 v1, 0x80

    goto :goto_b4

    :pswitch_9d
    const/4 v1, 0x6

    goto :goto_b4

    :pswitch_9f
    const/16 v1, 0x9

    goto :goto_b4

    :pswitch_a2
    const/16 v1, 0xc

    goto :goto_b4

    :pswitch_a5
    const/16 v1, 0xa

    goto :goto_b4

    :pswitch_a8
    const/16 v1, 0xb

    goto :goto_b4

    :pswitch_ab
    const/4 v1, 0x5

    goto :goto_b4

    :pswitch_ad
    const/4 v1, 0x4

    goto :goto_b4

    :pswitch_af
    const/4 v1, 0x3

    goto :goto_b4

    :pswitch_b1
    const/4 v1, 0x2

    goto :goto_b4

    :pswitch_b3
    const/4 v1, 0x0

    :goto_b4
    :pswitch_b4
    if-eqz p1, :cond_b7

    goto :goto_b9

    :cond_b7
    const/16 v2, 0x40

    :goto_b9
    or-int p0, v1, v2

    return p0

    :pswitch_bc
    const/16 p0, 0x88

    return p0

    :pswitch_bf
    const/16 p0, 0x87

    return p0

    :pswitch_c2
    const/16 p0, 0x47

    return p0

    nop

    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_c2
        :pswitch_bf
        :pswitch_bc
        :pswitch_b3
        :pswitch_b4
        :pswitch_b1
        :pswitch_af
        :pswitch_ad
        :pswitch_ab
        :pswitch_a8
        :pswitch_a5
        :pswitch_a2
        :pswitch_9f
        :pswitch_9d
        :pswitch_9a
        :pswitch_97
        :pswitch_94
        :pswitch_91
        :pswitch_8e
        :pswitch_8b
        :pswitch_88
        :pswitch_85
        :pswitch_82
        :pswitch_7f
        :pswitch_7c
        :pswitch_79
        :pswitch_76
        :pswitch_73
        :pswitch_70
        :pswitch_6d
        :pswitch_6a
        :pswitch_66
        :pswitch_62
        :pswitch_5e
        :pswitch_5a
        :pswitch_56
        :pswitch_52
        :pswitch_4e
        :pswitch_4a
        :pswitch_46
        :pswitch_42
        :pswitch_3e
        :pswitch_3a
        :pswitch_36
        :pswitch_32
        :pswitch_2e
        :pswitch_2a
        :pswitch_27
        :pswitch_23
    .end packed-switch
.end method

.method private static convertToRealmFieldType(I)Lio/realm/RealmFieldType;
    .registers 5

    and-int/lit8 v0, p0, -0x41

    packed-switch v0, :pswitch_data_c2

    packed-switch v0, :pswitch_data_d6

    packed-switch v0, :pswitch_data_e2

    packed-switch v0, :pswitch_data_100

    packed-switch v0, :pswitch_data_114

    packed-switch v0, :pswitch_data_120

    packed-switch v0, :pswitch_data_134

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
    :pswitch_2f
    sget-object p0, Lio/realm/RealmFieldType;->STRING_TO_UUID_MAP:Lio/realm/RealmFieldType;

    return-object p0

    .line 4
    :pswitch_32
    sget-object p0, Lio/realm/RealmFieldType;->STRING_TO_DECIMAL128_MAP:Lio/realm/RealmFieldType;

    return-object p0

    .line 5
    :pswitch_35
    sget-object p0, Lio/realm/RealmFieldType;->STRING_TO_OBJECT_ID_MAP:Lio/realm/RealmFieldType;

    return-object p0

    .line 6
    :pswitch_38
    sget-object p0, Lio/realm/RealmFieldType;->STRING_TO_MIXED_MAP:Lio/realm/RealmFieldType;

    return-object p0

    .line 7
    :pswitch_3b
    sget-object p0, Lio/realm/RealmFieldType;->STRING_TO_LINK_MAP:Lio/realm/RealmFieldType;

    return-object p0

    .line 8
    :pswitch_3e
    sget-object p0, Lio/realm/RealmFieldType;->STRING_TO_DOUBLE_MAP:Lio/realm/RealmFieldType;

    return-object p0

    .line 9
    :pswitch_41
    sget-object p0, Lio/realm/RealmFieldType;->STRING_TO_FLOAT_MAP:Lio/realm/RealmFieldType;

    return-object p0

    .line 10
    :pswitch_44
    sget-object p0, Lio/realm/RealmFieldType;->STRING_TO_DATE_MAP:Lio/realm/RealmFieldType;

    return-object p0

    .line 11
    :pswitch_47
    sget-object p0, Lio/realm/RealmFieldType;->STRING_TO_BINARY_MAP:Lio/realm/RealmFieldType;

    return-object p0

    .line 12
    :pswitch_4a
    sget-object p0, Lio/realm/RealmFieldType;->STRING_TO_STRING_MAP:Lio/realm/RealmFieldType;

    return-object p0

    .line 13
    :pswitch_4d
    sget-object p0, Lio/realm/RealmFieldType;->STRING_TO_BOOLEAN_MAP:Lio/realm/RealmFieldType;

    return-object p0

    .line 14
    :pswitch_50
    sget-object p0, Lio/realm/RealmFieldType;->STRING_TO_INTEGER_MAP:Lio/realm/RealmFieldType;

    return-object p0

    .line 15
    :pswitch_53
    sget-object p0, Lio/realm/RealmFieldType;->UUID_SET:Lio/realm/RealmFieldType;

    return-object p0

    .line 16
    :pswitch_56
    sget-object p0, Lio/realm/RealmFieldType;->DECIMAL128_SET:Lio/realm/RealmFieldType;

    return-object p0

    .line 17
    :pswitch_59
    sget-object p0, Lio/realm/RealmFieldType;->OBJECT_ID_SET:Lio/realm/RealmFieldType;

    return-object p0

    .line 18
    :pswitch_5c
    sget-object p0, Lio/realm/RealmFieldType;->MIXED_SET:Lio/realm/RealmFieldType;

    return-object p0

    .line 19
    :pswitch_5f
    sget-object p0, Lio/realm/RealmFieldType;->LINK_SET:Lio/realm/RealmFieldType;

    return-object p0

    .line 20
    :pswitch_62
    sget-object p0, Lio/realm/RealmFieldType;->DOUBLE_SET:Lio/realm/RealmFieldType;

    return-object p0

    .line 21
    :pswitch_65
    sget-object p0, Lio/realm/RealmFieldType;->FLOAT_SET:Lio/realm/RealmFieldType;

    return-object p0

    .line 22
    :pswitch_68
    sget-object p0, Lio/realm/RealmFieldType;->DATE_SET:Lio/realm/RealmFieldType;

    return-object p0

    .line 23
    :pswitch_6b
    sget-object p0, Lio/realm/RealmFieldType;->BINARY_SET:Lio/realm/RealmFieldType;

    return-object p0

    .line 24
    :pswitch_6e
    sget-object p0, Lio/realm/RealmFieldType;->STRING_SET:Lio/realm/RealmFieldType;

    return-object p0

    .line 25
    :pswitch_71
    sget-object p0, Lio/realm/RealmFieldType;->BOOLEAN_SET:Lio/realm/RealmFieldType;

    return-object p0

    .line 26
    :pswitch_74
    sget-object p0, Lio/realm/RealmFieldType;->INTEGER_SET:Lio/realm/RealmFieldType;

    return-object p0

    .line 27
    :pswitch_77
    sget-object p0, Lio/realm/RealmFieldType;->UUID_LIST:Lio/realm/RealmFieldType;

    return-object p0

    .line 28
    :pswitch_7a
    sget-object p0, Lio/realm/RealmFieldType;->DECIMAL128_LIST:Lio/realm/RealmFieldType;

    return-object p0

    .line 29
    :pswitch_7d
    sget-object p0, Lio/realm/RealmFieldType;->OBJECT_ID_LIST:Lio/realm/RealmFieldType;

    return-object p0

    .line 30
    :pswitch_80
    sget-object p0, Lio/realm/RealmFieldType;->MIXED_LIST:Lio/realm/RealmFieldType;

    return-object p0

    .line 31
    :pswitch_83
    sget-object p0, Lio/realm/RealmFieldType;->LINKING_OBJECTS:Lio/realm/RealmFieldType;

    return-object p0

    .line 32
    :pswitch_86
    sget-object p0, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    return-object p0

    .line 33
    :pswitch_89
    sget-object p0, Lio/realm/RealmFieldType;->DOUBLE_LIST:Lio/realm/RealmFieldType;

    return-object p0

    .line 34
    :pswitch_8c
    sget-object p0, Lio/realm/RealmFieldType;->FLOAT_LIST:Lio/realm/RealmFieldType;

    return-object p0

    .line 35
    :pswitch_8f
    sget-object p0, Lio/realm/RealmFieldType;->DATE_LIST:Lio/realm/RealmFieldType;

    return-object p0

    .line 36
    :pswitch_92
    sget-object p0, Lio/realm/RealmFieldType;->BINARY_LIST:Lio/realm/RealmFieldType;

    return-object p0

    .line 37
    :pswitch_95
    sget-object p0, Lio/realm/RealmFieldType;->STRING_LIST:Lio/realm/RealmFieldType;

    return-object p0

    .line 38
    :pswitch_98
    sget-object p0, Lio/realm/RealmFieldType;->BOOLEAN_LIST:Lio/realm/RealmFieldType;

    return-object p0

    .line 39
    :pswitch_9b
    sget-object p0, Lio/realm/RealmFieldType;->INTEGER_LIST:Lio/realm/RealmFieldType;

    return-object p0

    .line 40
    :pswitch_9e
    sget-object p0, Lio/realm/RealmFieldType;->UUID:Lio/realm/RealmFieldType;

    return-object p0

    .line 41
    :pswitch_a1
    sget-object p0, Lio/realm/RealmFieldType;->DECIMAL128:Lio/realm/RealmFieldType;

    return-object p0

    .line 42
    :pswitch_a4
    sget-object p0, Lio/realm/RealmFieldType;->OBJECT_ID:Lio/realm/RealmFieldType;

    return-object p0

    .line 43
    :pswitch_a7
    sget-object p0, Lio/realm/RealmFieldType;->MIXED:Lio/realm/RealmFieldType;

    return-object p0

    .line 44
    :pswitch_aa
    sget-object p0, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    return-object p0

    .line 45
    :pswitch_ad
    sget-object p0, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    return-object p0

    .line 46
    :pswitch_b0
    sget-object p0, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    return-object p0

    .line 47
    :pswitch_b3
    sget-object p0, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    return-object p0

    .line 48
    :pswitch_b6
    sget-object p0, Lio/realm/RealmFieldType;->BINARY:Lio/realm/RealmFieldType;

    return-object p0

    .line 49
    :pswitch_b9
    sget-object p0, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    return-object p0

    .line 50
    :pswitch_bc
    sget-object p0, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    return-object p0

    .line 51
    :pswitch_bf
    sget-object p0, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    return-object p0

    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_bf
        :pswitch_bc
        :pswitch_b9
        :pswitch_b6
        :pswitch_b3
        :pswitch_b0
        :pswitch_ad
        :pswitch_aa
    .end packed-switch

    :pswitch_data_d6
    .packed-switch 0x9
        :pswitch_a7
        :pswitch_a4
        :pswitch_a1
        :pswitch_9e
    .end packed-switch

    :pswitch_data_e2
    .packed-switch 0x80
        :pswitch_9b
        :pswitch_98
        :pswitch_95
        :pswitch_92
        :pswitch_8f
        :pswitch_8c
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
    .end packed-switch

    :pswitch_data_100
    .packed-switch 0x100
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
    .end packed-switch

    :pswitch_data_114
    .packed-switch 0x109
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
    .end packed-switch

    :pswitch_data_120
    .packed-switch 0x200
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
    .end packed-switch

    :pswitch_data_134
    .packed-switch 0x209
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
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
    .registers 3

    iget-wide v0, p0, Lio/realm/internal/Property;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/Property;->nativeGetColumnKey(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLinkedObjectName()Ljava/lang/String;
    .registers 3

    iget-wide v0, p0, Lio/realm/internal/Property;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/Property;->nativeGetLinkedObjectName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNativeFinalizerPtr()J
    .registers 3

    sget-wide v0, Lio/realm/internal/Property;->nativeFinalizerPtr:J

    return-wide v0
.end method

.method public getNativePtr()J
    .registers 3

    iget-wide v0, p0, Lio/realm/internal/Property;->nativePtr:J

    return-wide v0
.end method

.method public getType()Lio/realm/RealmFieldType;
    .registers 3

    iget-wide v0, p0, Lio/realm/internal/Property;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/Property;->nativeGetType(J)I

    move-result v0

    invoke-static {v0}, Lio/realm/internal/Property;->convertToRealmFieldType(I)Lio/realm/RealmFieldType;

    move-result-object v0

    return-object v0
.end method
