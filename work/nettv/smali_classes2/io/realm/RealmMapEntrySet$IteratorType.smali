.class public final enum Lio/realm/RealmMapEntrySet$IteratorType;
.super Ljava/lang/Enum;
.source "RealmMapEntrySet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/RealmMapEntrySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IteratorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/RealmMapEntrySet$IteratorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/RealmMapEntrySet$IteratorType;

.field public static final enum BINARY:Lio/realm/RealmMapEntrySet$IteratorType;

.field public static final enum BOOLEAN:Lio/realm/RealmMapEntrySet$IteratorType;

.field public static final enum BYTE:Lio/realm/RealmMapEntrySet$IteratorType;

.field public static final enum DATE:Lio/realm/RealmMapEntrySet$IteratorType;

.field public static final enum DECIMAL128:Lio/realm/RealmMapEntrySet$IteratorType;

.field public static final enum DOUBLE:Lio/realm/RealmMapEntrySet$IteratorType;

.field public static final enum FLOAT:Lio/realm/RealmMapEntrySet$IteratorType;

.field public static final enum INTEGER:Lio/realm/RealmMapEntrySet$IteratorType;

.field public static final enum LONG:Lio/realm/RealmMapEntrySet$IteratorType;

.field public static final enum MIXED:Lio/realm/RealmMapEntrySet$IteratorType;

.field public static final enum OBJECT:Lio/realm/RealmMapEntrySet$IteratorType;

.field public static final enum OBJECT_ID:Lio/realm/RealmMapEntrySet$IteratorType;

.field public static final enum SHORT:Lio/realm/RealmMapEntrySet$IteratorType;

.field public static final enum STRING:Lio/realm/RealmMapEntrySet$IteratorType;

.field public static final enum UUID:Lio/realm/RealmMapEntrySet$IteratorType;


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    .line 1
    new-instance v0, Lio/realm/RealmMapEntrySet$IteratorType;

    const-string v1, "LONG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/realm/RealmMapEntrySet$IteratorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/RealmMapEntrySet$IteratorType;->LONG:Lio/realm/RealmMapEntrySet$IteratorType;

    new-instance v1, Lio/realm/RealmMapEntrySet$IteratorType;

    const-string v3, "BYTE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/realm/RealmMapEntrySet$IteratorType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/realm/RealmMapEntrySet$IteratorType;->BYTE:Lio/realm/RealmMapEntrySet$IteratorType;

    new-instance v3, Lio/realm/RealmMapEntrySet$IteratorType;

    const-string v5, "SHORT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/realm/RealmMapEntrySet$IteratorType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/realm/RealmMapEntrySet$IteratorType;->SHORT:Lio/realm/RealmMapEntrySet$IteratorType;

    new-instance v5, Lio/realm/RealmMapEntrySet$IteratorType;

    const-string v7, "INTEGER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/realm/RealmMapEntrySet$IteratorType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/realm/RealmMapEntrySet$IteratorType;->INTEGER:Lio/realm/RealmMapEntrySet$IteratorType;

    new-instance v7, Lio/realm/RealmMapEntrySet$IteratorType;

    const-string v9, "FLOAT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/realm/RealmMapEntrySet$IteratorType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/realm/RealmMapEntrySet$IteratorType;->FLOAT:Lio/realm/RealmMapEntrySet$IteratorType;

    new-instance v9, Lio/realm/RealmMapEntrySet$IteratorType;

    const-string v11, "DOUBLE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lio/realm/RealmMapEntrySet$IteratorType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lio/realm/RealmMapEntrySet$IteratorType;->DOUBLE:Lio/realm/RealmMapEntrySet$IteratorType;

    new-instance v11, Lio/realm/RealmMapEntrySet$IteratorType;

    const-string v13, "STRING"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lio/realm/RealmMapEntrySet$IteratorType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lio/realm/RealmMapEntrySet$IteratorType;->STRING:Lio/realm/RealmMapEntrySet$IteratorType;

    new-instance v13, Lio/realm/RealmMapEntrySet$IteratorType;

    const-string v15, "BOOLEAN"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lio/realm/RealmMapEntrySet$IteratorType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lio/realm/RealmMapEntrySet$IteratorType;->BOOLEAN:Lio/realm/RealmMapEntrySet$IteratorType;

    new-instance v15, Lio/realm/RealmMapEntrySet$IteratorType;

    const-string v14, "DATE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lio/realm/RealmMapEntrySet$IteratorType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lio/realm/RealmMapEntrySet$IteratorType;->DATE:Lio/realm/RealmMapEntrySet$IteratorType;

    new-instance v14, Lio/realm/RealmMapEntrySet$IteratorType;

    const-string v12, "DECIMAL128"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lio/realm/RealmMapEntrySet$IteratorType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lio/realm/RealmMapEntrySet$IteratorType;->DECIMAL128:Lio/realm/RealmMapEntrySet$IteratorType;

    new-instance v12, Lio/realm/RealmMapEntrySet$IteratorType;

    const-string v10, "BINARY"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lio/realm/RealmMapEntrySet$IteratorType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lio/realm/RealmMapEntrySet$IteratorType;->BINARY:Lio/realm/RealmMapEntrySet$IteratorType;

    .line 2
    new-instance v10, Lio/realm/RealmMapEntrySet$IteratorType;

    const-string v8, "OBJECT_ID"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lio/realm/RealmMapEntrySet$IteratorType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lio/realm/RealmMapEntrySet$IteratorType;->OBJECT_ID:Lio/realm/RealmMapEntrySet$IteratorType;

    new-instance v8, Lio/realm/RealmMapEntrySet$IteratorType;

    const-string v6, "UUID"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lio/realm/RealmMapEntrySet$IteratorType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lio/realm/RealmMapEntrySet$IteratorType;->UUID:Lio/realm/RealmMapEntrySet$IteratorType;

    new-instance v6, Lio/realm/RealmMapEntrySet$IteratorType;

    const-string v4, "MIXED"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lio/realm/RealmMapEntrySet$IteratorType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lio/realm/RealmMapEntrySet$IteratorType;->MIXED:Lio/realm/RealmMapEntrySet$IteratorType;

    new-instance v4, Lio/realm/RealmMapEntrySet$IteratorType;

    const-string v2, "OBJECT"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lio/realm/RealmMapEntrySet$IteratorType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lio/realm/RealmMapEntrySet$IteratorType;->OBJECT:Lio/realm/RealmMapEntrySet$IteratorType;

    const/16 v2, 0xf

    new-array v2, v2, [Lio/realm/RealmMapEntrySet$IteratorType;

    const/16 v16, 0x0

    aput-object v0, v2, v16

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    aput-object v4, v2, v6

    .line 3
    sput-object v2, Lio/realm/RealmMapEntrySet$IteratorType;->$VALUES:[Lio/realm/RealmMapEntrySet$IteratorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/RealmMapEntrySet$IteratorType;
    .locals 1

    const-class v0, Lio/realm/RealmMapEntrySet$IteratorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/realm/RealmMapEntrySet$IteratorType;

    return-object p0
.end method

.method public static values()[Lio/realm/RealmMapEntrySet$IteratorType;
    .locals 1

    sget-object v0, Lio/realm/RealmMapEntrySet$IteratorType;->$VALUES:[Lio/realm/RealmMapEntrySet$IteratorType;

    invoke-virtual {v0}, [Lio/realm/RealmMapEntrySet$IteratorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/RealmMapEntrySet$IteratorType;

    return-object v0
.end method
