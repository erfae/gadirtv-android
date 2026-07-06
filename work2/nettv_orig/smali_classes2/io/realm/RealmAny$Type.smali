.class public final enum Lio/realm/RealmAny$Type;
.super Ljava/lang/Enum;
.source "RealmAny.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/RealmAny;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/RealmAny$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/RealmAny$Type;

.field public static final enum BINARY:Lio/realm/RealmAny$Type;

.field public static final enum BOOLEAN:Lio/realm/RealmAny$Type;

.field public static final enum DATE:Lio/realm/RealmAny$Type;

.field public static final enum DECIMAL128:Lio/realm/RealmAny$Type;

.field public static final enum DOUBLE:Lio/realm/RealmAny$Type;

.field public static final enum FLOAT:Lio/realm/RealmAny$Type;

.field public static final enum INTEGER:Lio/realm/RealmAny$Type;

.field public static final enum NULL:Lio/realm/RealmAny$Type;

.field public static final enum OBJECT:Lio/realm/RealmAny$Type;

.field public static final enum OBJECT_ID:Lio/realm/RealmAny$Type;

.field public static final enum STRING:Lio/realm/RealmAny$Type;

.field public static final enum UUID:Lio/realm/RealmAny$Type;

.field private static final realmFieldToRealmAnyTypeMap:[Lio/realm/RealmAny$Type;


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final realmFieldType:Lio/realm/RealmFieldType;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lio/realm/RealmAny$Type;

    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-class v2, Ljava/lang/Long;

    const-string v3, "INTEGER"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lio/realm/RealmAny$Type;-><init>(Ljava/lang/String;ILio/realm/RealmFieldType;Ljava/lang/Class;)V

    sput-object v0, Lio/realm/RealmAny$Type;->INTEGER:Lio/realm/RealmAny$Type;

    .line 2
    new-instance v1, Lio/realm/RealmAny$Type;

    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-class v3, Ljava/lang/Boolean;

    const-string v5, "BOOLEAN"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v2, v3}, Lio/realm/RealmAny$Type;-><init>(Ljava/lang/String;ILio/realm/RealmFieldType;Ljava/lang/Class;)V

    sput-object v1, Lio/realm/RealmAny$Type;->BOOLEAN:Lio/realm/RealmAny$Type;

    .line 3
    new-instance v2, Lio/realm/RealmAny$Type;

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-class v5, Ljava/lang/String;

    const-string v7, "STRING"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v3, v5}, Lio/realm/RealmAny$Type;-><init>(Ljava/lang/String;ILio/realm/RealmFieldType;Ljava/lang/Class;)V

    sput-object v2, Lio/realm/RealmAny$Type;->STRING:Lio/realm/RealmAny$Type;

    .line 4
    new-instance v3, Lio/realm/RealmAny$Type;

    sget-object v5, Lio/realm/RealmFieldType;->BINARY:Lio/realm/RealmFieldType;

    const-class v7, [Ljava/lang/Byte;

    const-string v9, "BINARY"

    const/4 v10, 0x3

    invoke-direct {v3, v9, v10, v5, v7}, Lio/realm/RealmAny$Type;-><init>(Ljava/lang/String;ILio/realm/RealmFieldType;Ljava/lang/Class;)V

    sput-object v3, Lio/realm/RealmAny$Type;->BINARY:Lio/realm/RealmAny$Type;

    .line 5
    new-instance v5, Lio/realm/RealmAny$Type;

    sget-object v7, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    const-class v9, Ljava/util/Date;

    const-string v11, "DATE"

    const/4 v12, 0x4

    invoke-direct {v5, v11, v12, v7, v9}, Lio/realm/RealmAny$Type;-><init>(Ljava/lang/String;ILio/realm/RealmFieldType;Ljava/lang/Class;)V

    sput-object v5, Lio/realm/RealmAny$Type;->DATE:Lio/realm/RealmAny$Type;

    .line 6
    new-instance v7, Lio/realm/RealmAny$Type;

    sget-object v9, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    const-class v11, Ljava/lang/Float;

    const-string v13, "FLOAT"

    const/4 v14, 0x5

    invoke-direct {v7, v13, v14, v9, v11}, Lio/realm/RealmAny$Type;-><init>(Ljava/lang/String;ILio/realm/RealmFieldType;Ljava/lang/Class;)V

    sput-object v7, Lio/realm/RealmAny$Type;->FLOAT:Lio/realm/RealmAny$Type;

    .line 7
    new-instance v9, Lio/realm/RealmAny$Type;

    sget-object v11, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    const-class v13, Ljava/lang/Double;

    const-string v15, "DOUBLE"

    const/4 v14, 0x6

    invoke-direct {v9, v15, v14, v11, v13}, Lio/realm/RealmAny$Type;-><init>(Ljava/lang/String;ILio/realm/RealmFieldType;Ljava/lang/Class;)V

    sput-object v9, Lio/realm/RealmAny$Type;->DOUBLE:Lio/realm/RealmAny$Type;

    .line 8
    new-instance v11, Lio/realm/RealmAny$Type;

    sget-object v13, Lio/realm/RealmFieldType;->DECIMAL128:Lio/realm/RealmFieldType;

    const-class v15, Lorg/bson/types/Decimal128;

    const-string v14, "DECIMAL128"

    const/4 v12, 0x7

    invoke-direct {v11, v14, v12, v13, v15}, Lio/realm/RealmAny$Type;-><init>(Ljava/lang/String;ILio/realm/RealmFieldType;Ljava/lang/Class;)V

    sput-object v11, Lio/realm/RealmAny$Type;->DECIMAL128:Lio/realm/RealmAny$Type;

    .line 9
    new-instance v13, Lio/realm/RealmAny$Type;

    sget-object v14, Lio/realm/RealmFieldType;->OBJECT_ID:Lio/realm/RealmFieldType;

    const-class v15, Lorg/bson/types/ObjectId;

    const-string v12, "OBJECT_ID"

    const/16 v10, 0x8

    invoke-direct {v13, v12, v10, v14, v15}, Lio/realm/RealmAny$Type;-><init>(Ljava/lang/String;ILio/realm/RealmFieldType;Ljava/lang/Class;)V

    sput-object v13, Lio/realm/RealmAny$Type;->OBJECT_ID:Lio/realm/RealmAny$Type;

    .line 10
    new-instance v12, Lio/realm/RealmAny$Type;

    sget-object v14, Lio/realm/RealmFieldType;->TYPED_LINK:Lio/realm/RealmFieldType;

    const-class v15, Lio/realm/RealmModel;

    const-string v10, "OBJECT"

    const/16 v8, 0x9

    invoke-direct {v12, v10, v8, v14, v15}, Lio/realm/RealmAny$Type;-><init>(Ljava/lang/String;ILio/realm/RealmFieldType;Ljava/lang/Class;)V

    sput-object v12, Lio/realm/RealmAny$Type;->OBJECT:Lio/realm/RealmAny$Type;

    .line 11
    new-instance v10, Lio/realm/RealmAny$Type;

    sget-object v14, Lio/realm/RealmFieldType;->UUID:Lio/realm/RealmFieldType;

    const-class v15, Ljava/util/UUID;

    const-string v8, "UUID"

    const/16 v6, 0xa

    invoke-direct {v10, v8, v6, v14, v15}, Lio/realm/RealmAny$Type;-><init>(Ljava/lang/String;ILio/realm/RealmFieldType;Ljava/lang/Class;)V

    sput-object v10, Lio/realm/RealmAny$Type;->UUID:Lio/realm/RealmAny$Type;

    .line 12
    new-instance v8, Lio/realm/RealmAny$Type;

    const-string v14, "NULL"

    const/16 v15, 0xb

    const/4 v6, 0x0

    invoke-direct {v8, v14, v15, v6, v6}, Lio/realm/RealmAny$Type;-><init>(Ljava/lang/String;ILio/realm/RealmFieldType;Ljava/lang/Class;)V

    sput-object v8, Lio/realm/RealmAny$Type;->NULL:Lio/realm/RealmAny$Type;

    const/16 v6, 0xc

    new-array v6, v6, [Lio/realm/RealmAny$Type;

    aput-object v0, v6, v4

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v5, v6, v0

    const/4 v0, 0x5

    aput-object v7, v6, v0

    const/4 v0, 0x6

    aput-object v9, v6, v0

    const/4 v0, 0x7

    aput-object v11, v6, v0

    const/16 v0, 0x8

    aput-object v13, v6, v0

    const/16 v0, 0x9

    aput-object v12, v6, v0

    const/16 v0, 0xa

    aput-object v10, v6, v0

    aput-object v8, v6, v15

    .line 13
    sput-object v6, Lio/realm/RealmAny$Type;->$VALUES:[Lio/realm/RealmAny$Type;

    const/16 v0, 0x13

    new-array v0, v0, [Lio/realm/RealmAny$Type;

    .line 14
    sput-object v0, Lio/realm/RealmAny$Type;->realmFieldToRealmAnyTypeMap:[Lio/realm/RealmAny$Type;

    .line 15
    invoke-static {}, Lio/realm/RealmAny$Type;->values()[Lio/realm/RealmAny$Type;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v2, v0, v4

    .line 16
    sget-object v3, Lio/realm/RealmAny$Type;->NULL:Lio/realm/RealmAny$Type;

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 17
    :cond_0
    iget-object v3, v2, Lio/realm/RealmAny$Type;->realmFieldType:Lio/realm/RealmFieldType;

    invoke-virtual {v3}, Lio/realm/RealmFieldType;->getNativeValue()I

    move-result v3

    .line 18
    sget-object v5, Lio/realm/RealmAny$Type;->realmFieldToRealmAnyTypeMap:[Lio/realm/RealmAny$Type;

    aput-object v2, v5, v3

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 19
    :cond_1
    sget-object v0, Lio/realm/RealmAny$Type;->realmFieldToRealmAnyTypeMap:[Lio/realm/RealmAny$Type;

    sget-object v1, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    invoke-virtual {v1}, Lio/realm/RealmFieldType;->getNativeValue()I

    move-result v1

    sget-object v2, Lio/realm/RealmAny$Type;->OBJECT:Lio/realm/RealmAny$Type;

    aput-object v2, v0, v1

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILio/realm/RealmFieldType;Ljava/lang/Class;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmFieldType;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lio/realm/RealmAny$Type;->realmFieldType:Lio/realm/RealmFieldType;

    .line 3
    iput-object p4, p0, Lio/realm/RealmAny$Type;->clazz:Ljava/lang/Class;

    return-void
.end method

.method public static fromNativeValue(I)Lio/realm/RealmAny$Type;
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 1
    sget-object p0, Lio/realm/RealmAny$Type;->NULL:Lio/realm/RealmAny$Type;

    return-object p0

    .line 2
    :cond_0
    sget-object v0, Lio/realm/RealmAny$Type;->realmFieldToRealmAnyTypeMap:[Lio/realm/RealmAny$Type;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/RealmAny$Type;
    .locals 1

    const-class v0, Lio/realm/RealmAny$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/realm/RealmAny$Type;

    return-object p0
.end method

.method public static values()[Lio/realm/RealmAny$Type;
    .locals 1

    sget-object v0, Lio/realm/RealmAny$Type;->$VALUES:[Lio/realm/RealmAny$Type;

    invoke-virtual {v0}, [Lio/realm/RealmAny$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/RealmAny$Type;

    return-object v0
.end method


# virtual methods
.method public getTypedClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/RealmAny$Type;->clazz:Ljava/lang/Class;

    return-object v0
.end method
