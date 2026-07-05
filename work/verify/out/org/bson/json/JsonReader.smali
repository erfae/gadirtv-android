.class public Lorg/bson/json/JsonReader;
.super Lorg/bson/AbstractBsonReader;
.source "JsonReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bson/json/JsonReader$Context;,
        Lorg/bson/json/JsonReader$Mark;
    }
.end annotation


# instance fields
.field private currentValue:Ljava/lang/Object;

.field private mark:Lorg/bson/json/JsonReader$Mark;

.field private pushedToken:Lorg/bson/json/JsonToken;

.field private final scanner:Lorg/bson/json/JsonScanner;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3

    .line 2
    new-instance v0, Lorg/bson/json/JsonScanner;

    invoke-direct {v0, p1}, Lorg/bson/json/JsonScanner;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;-><init>(Lorg/bson/json/JsonScanner;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 1
    new-instance v0, Lorg/bson/json/JsonScanner;

    invoke-direct {v0, p1}, Lorg/bson/json/JsonScanner;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;-><init>(Lorg/bson/json/JsonScanner;)V

    return-void
.end method

.method private constructor <init>(Lorg/bson/json/JsonScanner;)V
    .registers 4

    .line 3
    invoke-direct {p0}, Lorg/bson/AbstractBsonReader;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/bson/json/JsonReader;->scanner:Lorg/bson/json/JsonScanner;

    .line 5
    new-instance p1, Lorg/bson/json/JsonReader$Context;

    sget-object v0, Lorg/bson/BsonContextType;->TOP_LEVEL:Lorg/bson/BsonContextType;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1, v0}, Lorg/bson/json/JsonReader$Context;-><init>(Lorg/bson/json/JsonReader;Lorg/bson/AbstractBsonReader$Context;Lorg/bson/BsonContextType;)V

    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonReader;->setContext(Lorg/bson/AbstractBsonReader$Context;)V

    return-void
.end method

.method public static synthetic access$000(Lorg/bson/json/JsonReader;)Lorg/bson/json/JsonToken;
    .registers 1

    iget-object p0, p0, Lorg/bson/json/JsonReader;->pushedToken:Lorg/bson/json/JsonToken;

    return-object p0
.end method

.method public static synthetic access$002(Lorg/bson/json/JsonReader;Lorg/bson/json/JsonToken;)Lorg/bson/json/JsonToken;
    .registers 2

    iput-object p1, p0, Lorg/bson/json/JsonReader;->pushedToken:Lorg/bson/json/JsonToken;

    return-object p1
.end method

.method public static synthetic access$100(Lorg/bson/json/JsonReader;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$102(Lorg/bson/json/JsonReader;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$200(Lorg/bson/json/JsonReader;)Lorg/bson/json/JsonScanner;
    .registers 1

    iget-object p0, p0, Lorg/bson/json/JsonReader;->scanner:Lorg/bson/json/JsonScanner;

    return-object p0
.end method

.method private static decodeHex(Ljava/lang/String;)[B
    .registers 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_48

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 3
    :goto_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_47

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    add-int/lit8 v4, v1, 0x1

    .line 5
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3b

    if-eq v3, v4, :cond_3b

    .line 6
    div-int/lit8 v4, v1, 0x2

    mul-int/lit8 v2, v2, 0x10

    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v4

    add-int/lit8 v1, v1, 0x2

    goto :goto_11

    .line 7
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A hex string can only contain the characters 0-9, A-F, a-f: "

    .line 8
    invoke-static {v1, p0}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 9
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_47
    return-object v0

    .line 10
    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A hex string must contain an even number of characters: "

    .line 11
    invoke-static {v1, p0}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 12
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private popToken()Lorg/bson/json/JsonToken;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/bson/json/JsonReader;->pushedToken:Lorg/bson/json/JsonToken;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lorg/bson/json/JsonReader;->pushedToken:Lorg/bson/json/JsonToken;

    return-object v0

    .line 3
    :cond_8
    iget-object v0, p0, Lorg/bson/json/JsonReader;->scanner:Lorg/bson/json/JsonScanner;

    invoke-virtual {v0}, Lorg/bson/json/JsonScanner;->nextToken()Lorg/bson/json/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method private pushToken(Lorg/bson/json/JsonToken;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/bson/json/JsonReader;->pushedToken:Lorg/bson/json/JsonToken;

    if-nez v0, :cond_7

    .line 2
    iput-object p1, p0, Lorg/bson/json/JsonReader;->pushedToken:Lorg/bson/json/JsonToken;

    return-void

    .line 3
    :cond_7
    new-instance p1, Lorg/bson/BsonInvalidOperationException;

    const-string v0, "There is already a pending token."

    invoke-direct {p1, v0}, Lorg/bson/BsonInvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readBinarySubtypeFromExtendedJson()B
    .registers 5

    .line 1
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->popToken()Lorg/bson/json/JsonToken;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v1

    sget-object v2, Lorg/bson/json/JsonTokenType;->STRING:Lorg/bson/json/JsonTokenType;

    if-eq v1, v2, :cond_27

    invoke-virtual {v0}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v1

    sget-object v3, Lorg/bson/json/JsonTokenType;->INT32:Lorg/bson/json/JsonTokenType;

    if-ne v1, v3, :cond_15

    goto :goto_27

    .line 3
    :cond_15
    new-instance v1, Lorg/bson/json/JsonParseException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lorg/bson/json/JsonToken;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "JSON reader expected a string or number but found \'%s\'."

    invoke-direct {v1, v0, v2}, Lorg/bson/json/JsonParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 4
    :cond_27
    :goto_27
    invoke-virtual {v0}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v1

    if-ne v1, v2, :cond_3d

    .line 5
    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/bson/json/JsonToken;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-byte v0, v0

    return v0

    .line 6
    :cond_3d
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lorg/bson/json/JsonToken;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->byteValue()B

    move-result v0

    return v0
.end method

.method private readDbPointerIdFromExtendedJson()Lorg/bson/types/ObjectId;
    .registers 3

    .line 1
    sget-object v0, Lorg/bson/json/JsonTokenType;->COLON:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 2
    sget-object v0, Lorg/bson/json/JsonTokenType;->BEGIN_OBJECT:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 3
    sget-object v0, Lorg/bson/json/JsonTokenType;->STRING:Lorg/bson/json/JsonTokenType;

    const-string v1, "$oid"

    invoke-direct {p0, v0, v1}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;Ljava/lang/Object;)V

    .line 4
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->visitObjectIdExtendedJson()Lorg/bson/types/ObjectId;

    move-result-object v0

    return-object v0
.end method

.method private readIntFromExtendedJson()I
    .registers 5

    .line 1
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->popToken()Lorg/bson/json/JsonToken;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v1

    sget-object v2, Lorg/bson/json/JsonTokenType;->INT32:Lorg/bson/json/JsonTokenType;

    if-ne v1, v2, :cond_19

    .line 3
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lorg/bson/json/JsonToken;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2d

    .line 4
    :cond_19
    invoke-virtual {v0}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v1

    sget-object v2, Lorg/bson/json/JsonTokenType;->INT64:Lorg/bson/json/JsonTokenType;

    if-ne v1, v2, :cond_2e

    .line 5
    const-class v1, Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lorg/bson/json/JsonToken;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    :goto_2d
    return v0

    .line 6
    :cond_2e
    new-instance v1, Lorg/bson/json/JsonParseException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lorg/bson/json/JsonToken;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "JSON reader expected an integer but found \'%s\'."

    invoke-direct {v1, v0, v2}, Lorg/bson/json/JsonParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method private readStringFromExtendedJson()Ljava/lang/String;
    .registers 5

    .line 1
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->popToken()Lorg/bson/json/JsonToken;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v1

    sget-object v2, Lorg/bson/json/JsonTokenType;->STRING:Lorg/bson/json/JsonTokenType;

    if-ne v1, v2, :cond_15

    .line 3
    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/bson/json/JsonToken;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4
    :cond_15
    new-instance v1, Lorg/bson/json/JsonParseException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lorg/bson/json/JsonToken;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "JSON reader expected a string but found \'%s\'."

    invoke-direct {v1, v0, v2}, Lorg/bson/json/JsonParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method private verifyString(Ljava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_32

    .line 1
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->popToken()Lorg/bson/json/JsonToken;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v1

    .line 3
    sget-object v2, Lorg/bson/json/JsonTokenType;->STRING:Lorg/bson/json/JsonTokenType;

    if-eq v1, v2, :cond_12

    sget-object v2, Lorg/bson/json/JsonTokenType;->UNQUOTED_STRING:Lorg/bson/json/JsonTokenType;

    if-ne v1, v2, :cond_1d

    :cond_12
    invoke-virtual {v0}, Lorg/bson/json/JsonToken;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    return-void

    .line 4
    :cond_1d
    new-instance v1, Lorg/bson/json/JsonParseException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-virtual {v0}, Lorg/bson/json/JsonToken;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, p1

    const-string p1, "JSON reader expected \'%s\' but found \'%s\'."

    invoke-direct {v1, p1, v2}, Lorg/bson/json/JsonParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 5
    :cond_32
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private verifyToken(Lorg/bson/json/JsonTokenType;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->popToken()Lorg/bson/json/JsonToken;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v1

    if-ne p1, v1, :cond_b

    return-void

    .line 3
    :cond_b
    new-instance v1, Lorg/bson/json/JsonParseException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-virtual {v0}, Lorg/bson/json/JsonToken;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, p1

    const-string p1, "JSON reader expected token type \'%s\' but found \'%s\'."

    invoke-direct {v1, p1, v2}, Lorg/bson/json/JsonParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method private verifyToken(Lorg/bson/json/JsonTokenType;Ljava/lang/Object;)V
    .registers 8

    .line 4
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->popToken()Lorg/bson/json/JsonToken;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne p1, v1, :cond_2a

    .line 6
    invoke-virtual {v0}, Lorg/bson/json/JsonToken;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    return-void

    .line 7
    :cond_18
    new-instance p1, Lorg/bson/json/JsonParseException;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-virtual {v0}, Lorg/bson/json/JsonToken;->getValue()Ljava/lang/Object;

    move-result-object p2

    aput-object p2, v1, v2

    const-string p2, "JSON reader expected \'%s\' but found \'%s\'."

    invoke-direct {p1, p2, v1}, Lorg/bson/json/JsonParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 8
    :cond_2a
    new-instance p2, Lorg/bson/json/JsonParseException;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {v0}, Lorg/bson/json/JsonToken;->getValue()Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "JSON reader expected token type \'%s\' but found \'%s\'."

    invoke-direct {p2, p1, v1}, Lorg/bson/json/JsonParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2
.end method

.method private visitBinDataConstructor()Lorg/bson/BsonBinary;
    .registers 7

    .line 1
    sget-object v0, Lorg/bson/json/JsonTokenType;->LEFT_PAREN:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 2
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->popToken()Lorg/bson/json/JsonToken;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v1

    sget-object v2, Lorg/bson/json/JsonTokenType;->INT32:Lorg/bson/json/JsonTokenType;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_60

    .line 4
    sget-object v1, Lorg/bson/json/JsonTokenType;->COMMA:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v1}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 5
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->popToken()Lorg/bson/json/JsonToken;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v2

    sget-object v5, Lorg/bson/json/JsonTokenType;->UNQUOTED_STRING:Lorg/bson/json/JsonTokenType;

    if-eq v2, v5, :cond_3d

    invoke-virtual {v1}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v2

    sget-object v5, Lorg/bson/json/JsonTokenType;->STRING:Lorg/bson/json/JsonTokenType;

    if-ne v2, v5, :cond_2d

    goto :goto_3d

    .line 7
    :cond_2d
    new-instance v0, Lorg/bson/json/JsonParseException;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/bson/json/JsonToken;->getValue()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "JSON reader expected a string but found \'%s\'."

    invoke-direct {v0, v1, v2}, Lorg/bson/json/JsonParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 8
    :cond_3d
    :goto_3d
    sget-object v2, Lorg/bson/json/JsonTokenType;->RIGHT_PAREN:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v2}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 9
    const-class v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/bson/json/JsonToken;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/bson/internal/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 10
    new-instance v2, Lorg/bson/BsonBinary;

    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lorg/bson/json/JsonToken;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->byteValue()B

    move-result v0

    invoke-direct {v2, v0, v1}, Lorg/bson/BsonBinary;-><init>(B[B)V

    return-object v2

    .line 11
    :cond_60
    new-instance v1, Lorg/bson/json/JsonParseException;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/bson/json/JsonToken;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "JSON reader expected a binary subtype but found \'%s\'."

    invoke-direct {v1, v0, v2}, Lorg/bson/json/JsonParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method private visitBinDataExtendedJson(Ljava/lang/String;)Lorg/bson/BsonBinary;
    .registers 8

    const-string v0, "base64"

    .line 1
    new-instance v1, Lorg/bson/json/JsonReader$Mark;

    invoke-direct {v1, p0}, Lorg/bson/json/JsonReader$Mark;-><init>(Lorg/bson/json/JsonReader;)V

    .line 2
    :try_start_7
    sget-object v2, Lorg/bson/json/JsonTokenType;->COLON:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v2}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    const-string v3, "$binary"

    .line 3
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 4
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->popToken()Lorg/bson/json/JsonToken;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v3

    sget-object v4, Lorg/bson/json/JsonTokenType;->BEGIN_OBJECT:Lorg/bson/json/JsonTokenType;

    if-ne v3, v4, :cond_9a

    .line 6
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->popToken()Lorg/bson/json/JsonToken;

    move-result-object p1

    .line 7
    const-class v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/bson/json/JsonToken;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_b0

    const-string v4, "subType"

    if-eqz v3, :cond_4f

    .line 9
    :try_start_34
    invoke-direct {p0, v2}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 10
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->readStringFromExtendedJson()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/bson/internal/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p1

    .line 11
    sget-object v0, Lorg/bson/json/JsonTokenType;->COMMA:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 12
    invoke-direct {p0, v4}, Lorg/bson/json/JsonReader;->verifyString(Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, v2}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 14
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->readBinarySubtypeFromExtendedJson()B

    move-result v0

    goto :goto_72

    .line 15
    :cond_4f
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    .line 16
    invoke-direct {p0, v2}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 17
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->readBinarySubtypeFromExtendedJson()B

    move-result p1

    .line 18
    sget-object v3, Lorg/bson/json/JsonTokenType;->COMMA:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v3}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 19
    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->verifyString(Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, v2}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 21
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->readStringFromExtendedJson()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bson/internal/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    move-object v5, v0

    move v0, p1

    move-object p1, v5

    .line 22
    :goto_72
    sget-object v2, Lorg/bson/json/JsonTokenType;->END_OBJECT:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v2}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 23
    invoke-direct {p0, v2}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 24
    new-instance v2, Lorg/bson/BsonBinary;

    invoke-direct {v2, v0, p1}, Lorg/bson/BsonBinary;-><init>(B[B)V
    :try_end_7f
    .catchall {:try_start_34 .. :try_end_7f} :catchall_b0

    .line 25
    invoke-virtual {v1}, Lorg/bson/json/JsonReader$Mark;->discard()V

    return-object v2

    .line 26
    :cond_83
    :try_start_83
    new-instance v0, Lorg/bson/json/JsonParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected key for $binary: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bson/json/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_9a
    invoke-virtual {v1}, Lorg/bson/json/JsonReader$Mark;->reset()V

    .line 28
    invoke-direct {p0, p1}, Lorg/bson/json/JsonReader;->visitLegacyBinaryExtendedJson(Ljava/lang/String;)Lorg/bson/BsonBinary;

    move-result-object p1
    :try_end_a1
    .catchall {:try_start_83 .. :try_end_a1} :catchall_b0

    .line 29
    invoke-virtual {v1}, Lorg/bson/json/JsonReader$Mark;->discard()V

    return-object p1

    .line 30
    :cond_a5
    :try_start_a5
    invoke-virtual {v1}, Lorg/bson/json/JsonReader$Mark;->reset()V

    .line 31
    invoke-direct {p0, p1}, Lorg/bson/json/JsonReader;->visitLegacyBinaryExtendedJson(Ljava/lang/String;)Lorg/bson/BsonBinary;

    move-result-object p1
    :try_end_ac
    .catchall {:try_start_a5 .. :try_end_ac} :catchall_b0

    .line 32
    invoke-virtual {v1}, Lorg/bson/json/JsonReader$Mark;->discard()V

    return-object p1

    :catchall_b0
    move-exception p1

    invoke-virtual {v1}, Lorg/bson/json/JsonReader$Mark;->discard()V

    .line 33
    throw p1
.end method

.method private visitDBPointerConstructor()Lorg/bson/BsonDbPointer;
    .registers 4

    .line 1
    sget-object v0, Lorg/bson/json/JsonTokenType;->LEFT_PAREN:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 2
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->readStringFromExtendedJson()Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Lorg/bson/json/JsonTokenType;->COMMA:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v1}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 4
    new-instance v1, Lorg/bson/types/ObjectId;

    invoke-direct {p0}, Lorg/bson/json/JsonReader;->readStringFromExtendedJson()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bson/types/ObjectId;-><init>(Ljava/lang/String;)V

    .line 5
    sget-object v2, Lorg/bson/json/JsonTokenType;->RIGHT_PAREN:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v2}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 6
    new-instance v2, Lorg/bson/BsonDbPointer;

    invoke-direct {v2, v0, v1}, Lorg/bson/BsonDbPointer;-><init>(Ljava/lang/String;Lorg/bson/types/ObjectId;)V

    return-object v2
.end method

.method private visitDateTimeConstructor()J
    .registers 10

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "EEE MMM dd yyyy HH:mm:ss z"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2
    sget-object v1, Lorg/bson/json/JsonTokenType;->LEFT_PAREN:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v1}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 3
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->popToken()Lorg/bson/json/JsonToken;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v2

    sget-object v3, Lorg/bson/json/JsonTokenType;->RIGHT_PAREN:Lorg/bson/json/JsonTokenType;

    if-ne v2, v3, :cond_24

    .line 5
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0

    .line 6
    :cond_24
    invoke-virtual {v1}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v2

    sget-object v4, Lorg/bson/json/JsonTokenType;->STRING:Lorg/bson/json/JsonTokenType;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v2, v4, :cond_5f

    .line 7
    invoke-direct {p0, v3}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 8
    const-class v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/bson/json/JsonToken;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 9
    new-instance v2, Ljava/text/ParsePosition;

    invoke-direct {v2, v6}, Ljava/text/ParsePosition;-><init>(I)V

    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 11
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_53

    .line 12
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0

    .line 13
    :cond_53
    new-instance v0, Lorg/bson/json/JsonParseException;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v1, v2, v6

    const-string v1, "JSON reader expected a date in \'EEE MMM dd yyyy HH:mm:ss z\' format but found \'%s\'."

    invoke-direct {v0, v1, v2}, Lorg/bson/json/JsonParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 14
    :cond_5f
    invoke-virtual {v1}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v0

    sget-object v2, Lorg/bson/json/JsonTokenType;->INT32:Lorg/bson/json/JsonTokenType;

    if-eq v0, v2, :cond_80

    invoke-virtual {v1}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v0

    sget-object v2, Lorg/bson/json/JsonTokenType;->INT64:Lorg/bson/json/JsonTokenType;

    if-ne v0, v2, :cond_70

    goto :goto_80

    .line 15
    :cond_70
    new-instance v0, Lorg/bson/json/JsonParseException;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/bson/json/JsonToken;->getValue()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v2, v6

    const-string v1, "JSON reader expected an integer or a string but found \'%s\'."

    invoke-direct {v0, v1, v2}, Lorg/bson/json/JsonParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_80
    :goto_80
    const/4 v0, 0x7

    new-array v2, v0, [J

    const/4 v3, 0x0

    :cond_84
    :goto_84
    if-ge v3, v0, :cond_97

    add-int/lit8 v4, v3, 0x1

    .line 16
    const-class v7, Ljava/lang/Long;

    invoke-virtual {v1, v7}, Lorg/bson/json/JsonToken;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    aput-wide v7, v2, v3

    move v3, v4

    .line 17
    :cond_97
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->popToken()Lorg/bson/json/JsonToken;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v4

    sget-object v7, Lorg/bson/json/JsonTokenType;->RIGHT_PAREN:Lorg/bson/json/JsonTokenType;

    if-ne v4, v7, :cond_102

    if-ne v3, v5, :cond_a8

    aget-wide v0, v2, v6

    return-wide v0

    :cond_a8
    const/4 v1, 0x3

    if-lt v3, v1, :cond_f2

    if-gt v3, v0, :cond_f2

    const-string v0, "UTC"

    .line 19
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    aget-wide v3, v2, v6

    long-to-int v4, v3

    .line 20
    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->set(II)V

    aget-wide v3, v2, v5

    long-to-int v4, v3

    const/4 v3, 0x2

    .line 21
    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    aget-wide v3, v2, v3

    long-to-int v4, v3

    const/4 v3, 0x5

    .line 22
    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xb

    aget-wide v5, v2, v1

    long-to-int v1, v5

    .line 23
    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    const/4 v4, 0x4

    aget-wide v4, v2, v4

    long-to-int v5, v4

    .line 24
    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    aget-wide v3, v2, v3

    long-to-int v4, v3

    .line 25
    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    const/4 v3, 0x6

    aget-wide v3, v2, v3

    long-to-int v2, v3

    .line 26
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 27
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0

    .line 28
    :cond_f2
    new-instance v0, Lorg/bson/json/JsonParseException;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "JSON reader expected 1 or 3-7 integers but found %d."

    invoke-direct {v0, v2, v1}, Lorg/bson/json/JsonParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 29
    :cond_102
    invoke-virtual {v1}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v4

    sget-object v7, Lorg/bson/json/JsonTokenType;->COMMA:Lorg/bson/json/JsonTokenType;

    if-ne v4, v7, :cond_130

    .line 30
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->popToken()Lorg/bson/json/JsonToken;

    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v4

    sget-object v7, Lorg/bson/json/JsonTokenType;->INT32:Lorg/bson/json/JsonTokenType;

    if-eq v4, v7, :cond_84

    invoke-virtual {v1}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v4

    sget-object v7, Lorg/bson/json/JsonTokenType;->INT64:Lorg/bson/json/JsonTokenType;

    if-ne v4, v7, :cond_120

    goto/16 :goto_84

    .line 32
    :cond_120
    new-instance v0, Lorg/bson/json/JsonParseException;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/bson/json/JsonToken;->getValue()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v2, v6

    const-string v1, "JSON reader expected an integer but found \'%s\'."

    invoke-direct {v0, v1, v2}, Lorg/bson/json/JsonParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 33
    :cond_130
    new-instance v0, Lorg/bson/json/JsonParseException;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/bson/json/JsonToken;->getValue()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v2, v6

    const-string v1, "JSON reader expected a \',\' or a \')\' but found \'%s\'."

    invoke-direct {v0, v1, v2}, Lorg/bson/json/JsonParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private visitDateTimeConstructorWithOutNew()Ljava/lang/String;
    .registers 5

    .line 1
    sget-object v0, Lorg/bson/json/JsonTokenType;->LEFT_PAREN:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 2
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->popToken()Lorg/bson/json/JsonToken;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v1

    sget-object v2, Lorg/bson/json/JsonTokenType;->RIGHT_PAREN:Lorg/bson/json/JsonTokenType;

    if-eq v1, v2, :cond_40

    .line 4
    :cond_11
    invoke-virtual {v0}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v1

    sget-object v2, Lorg/bson/json/JsonTokenType;->END_OF_FILE:Lorg/bson/json/JsonTokenType;

    if-eq v1, v2, :cond_25

    .line 5
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->popToken()Lorg/bson/json/JsonToken;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v1

    sget-object v2, Lorg/bson/json/JsonTokenType;->RIGHT_PAREN:Lorg/bson/json/JsonTokenType;

    if-ne v1, v2, :cond_11

    .line 7
    :cond_25
    invoke-virtual {v0}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v1

    sget-object v2, Lorg/bson/json/JsonTokenType;->RIGHT_PAREN:Lorg/bson/json/JsonTokenType;

    if-ne v1, v2, :cond_2e

    goto :goto_40

    .line 8
    :cond_2e
    new-instance v1, Lorg/bson/json/JsonParseException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lorg/bson/json/JsonToken;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "JSON reader expected a \')\' but found \'%s\'."

    invoke-direct {v1, v0, v2}, Lorg/bson/json/JsonParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 9
    :cond_40
    :goto_40
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "EEE MMM dd yyyy HH:mm:ss z"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 10
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private visitDateTimeExtendedJson()J
    .registers 7

    .line 1
    const-class v0, Ljava/lang/String;

    sget-object v1, Lorg/bson/json/JsonTokenType;->COLON:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v1}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 2
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->popToken()Lorg/bson/json/JsonToken;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v2

    sget-object v3, Lorg/bson/json/JsonTokenType;->BEGIN_OBJECT:Lorg/bson/json/JsonTokenType;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_45

    .line 4
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->popToken()Lorg/bson/json/JsonToken;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v0}, Lorg/bson/json/JsonToken;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "$numberLong"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 7
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->visitNumberLongExtendedJson()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 8
    sget-object v2, Lorg/bson/json/JsonTokenType;->END_OBJECT:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v2}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    goto :goto_97

    .line 9
    :cond_35
    new-instance v1, Lorg/bson/json/JsonParseException;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    const-string v0, "JSON reader expected $numberLong within $date, but found %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bson/json/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 10
    :cond_45
    invoke-virtual {v1}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v2

    sget-object v3, Lorg/bson/json/JsonTokenType;->INT32:Lorg/bson/json/JsonTokenType;

    if-eq v2, v3, :cond_86

    invoke-virtual {v1}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v2

    sget-object v3, Lorg/bson/json/JsonTokenType;->INT64:Lorg/bson/json/JsonTokenType;

    if-ne v2, v3, :cond_56

    goto :goto_86

    .line 11
    :cond_56
    invoke-virtual {v1}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v2

    sget-object v3, Lorg/bson/json/JsonTokenType;->STRING:Lorg/bson/json/JsonTokenType;

    if-ne v2, v3, :cond_76

    .line 12
    invoke-virtual {v1, v0}, Lorg/bson/json/JsonToken;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 13
    :try_start_64
    invoke-static {v0}, Lorg/bson/json/DateTimeFormatter;->parse(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_68
    .catch Ljava/lang/IllegalArgumentException; {:try_start_64 .. :try_end_68} :catch_69

    goto :goto_92

    :catch_69
    move-exception v0

    .line 14
    new-instance v1, Lorg/bson/json/JsonParseException;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    const-string v0, "Failed to parse string as a date"

    invoke-direct {v1, v0, v2}, Lorg/bson/json/JsonParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 15
    :cond_76
    new-instance v0, Lorg/bson/json/JsonParseException;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/bson/json/JsonToken;->getValue()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v2, v4

    const-string v1, "JSON reader expected an integer or string but found \'%s\'."

    invoke-direct {v0, v1, v2}, Lorg/bson/json/JsonParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 16
    :cond_86
    :goto_86
    const-class v0, Ljava/lang/Long;

    invoke-virtual {v1, v0}, Lorg/bson/json/JsonToken;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 17
    :goto_92
    sget-object v2, Lorg/bson/json/JsonTokenType;->END_OBJECT:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v2}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    :goto_97
    return-wide v0
.end method

.method private visitDbPointerExtendedJson()Lorg/bson/BsonDbPointer;
    .registers 6

    .line 1
    sget-object v0, Lorg/bson/json/JsonTokenType;->COLON:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 2
    sget-object v1, Lorg/bson/json/JsonTokenType;->BEGIN_OBJECT:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v1}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 3
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->readStringFromExtendedJson()Ljava/lang/String;

    move-result-object v1

    const-string v2, "$ref"

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "$id"

    if-eqz v3, :cond_31

    .line 5
    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 6
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->readStringFromExtendedJson()Ljava/lang/String;

    move-result-object v0

    .line 7
    sget-object v1, Lorg/bson/json/JsonTokenType;->COMMA:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v1}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 8
    invoke-direct {p0, v4}, Lorg/bson/json/JsonReader;->verifyString(Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->readDbPointerIdFromExtendedJson()Lorg/bson/types/ObjectId;

    move-result-object v1

    .line 10
    sget-object v2, Lorg/bson/json/JsonTokenType;->END_OBJECT:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v2}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    goto :goto_4a

    .line 11
    :cond_31
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 12
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->readDbPointerIdFromExtendedJson()Lorg/bson/types/ObjectId;

    move-result-object v1

    .line 13
    sget-object v3, Lorg/bson/json/JsonTokenType;->COMMA:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v3}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 14
    invoke-direct {p0, v2}, Lorg/bson/json/JsonReader;->verifyString(Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 16
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->readStringFromExtendedJson()Ljava/lang/String;

    move-result-object v0

    .line 17
    :goto_4a
    sget-object v2, Lorg/bson/json/JsonTokenType;->END_OBJECT:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v2}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 18
    new-instance v2, Lorg/bson/BsonDbPointer;

    invoke-direct {v2, v0, v1}, Lorg/bson/BsonDbPointer;-><init>(Ljava/lang/String;Lorg/bson/types/ObjectId;)V

    return-object v2

    .line 19
    :cond_55
    new-instance v0, Lorg/bson/json/JsonParseException;

    const-string v2, "Expected $ref and $id fields in $dbPointer document but found "

    .line 20
    invoke-static {v2, v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-direct {v0, v1}, Lorg/bson/json/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private visitEmptyConstructor()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->popToken()Lorg/bson/json/JsonToken;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v1

    sget-object v2, Lorg/bson/json/JsonTokenType;->LEFT_PAREN:Lorg/bson/json/JsonTokenType;

    if-ne v1, v2, :cond_12

    .line 3
    sget-object v0, Lorg/bson/json/JsonTokenType;->RIGHT_PAREN:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    goto :goto_15

    .line 4
    :cond_12
    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->pushToken(Lorg/bson/json/JsonToken;)V

    :goto_15
    return-void
.end method

.method private visitExtendedJSON()V
    .registers 5

    .line 1
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->popToken()Lorg/bson/json/JsonToken;

    move-result-object v0

    .line 2
    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/bson/json/JsonToken;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v2

    .line 4
    sget-object v3, Lorg/bson/json/JsonTokenType;->STRING:Lorg/bson/json/JsonTokenType;

    if-eq v2, v3, :cond_18

    sget-object v3, Lorg/bson/json/JsonTokenType;->UNQUOTED_STRING:Lorg/bson/json/JsonTokenType;

    if-ne v2, v3, :cond_16c

    :cond_18
    const-string v2, "$binary"

    .line 5
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15e

    const-string v2, "$type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    goto/16 :goto_15e

    :cond_2a
    const-string v2, "$regex"

    .line 6
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_150

    const-string v2, "$options"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    goto/16 :goto_150

    :cond_3c
    const-string v2, "$code"

    .line 7
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 8
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->visitJavaScriptExtendedJson()V

    return-void

    :cond_48
    const-string v2, "$date"

    .line 9
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 10
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->visitDateTimeExtendedJson()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    .line 11
    sget-object v0, Lorg/bson/BsonType;->DATE_TIME:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    return-void

    :cond_60
    const-string v2, "$maxKey"

    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 13
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->visitMaxKeyExtendedJson()Lorg/bson/types/MaxKey;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    .line 14
    sget-object v0, Lorg/bson/BsonType;->MAX_KEY:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    return-void

    :cond_74
    const-string v2, "$minKey"

    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 16
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->visitMinKeyExtendedJson()Lorg/bson/types/MinKey;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    .line 17
    sget-object v0, Lorg/bson/BsonType;->MIN_KEY:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    return-void

    :cond_88
    const-string v2, "$oid"

    .line 18
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 19
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->visitObjectIdExtendedJson()Lorg/bson/types/ObjectId;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    .line 20
    sget-object v0, Lorg/bson/BsonType;->OBJECT_ID:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    return-void

    :cond_9c
    const-string v2, "$regularExpression"

    .line 21
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 22
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->visitNewRegularExpressionExtendedJson()Lorg/bson/BsonRegularExpression;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    .line 23
    sget-object v0, Lorg/bson/BsonType;->REGULAR_EXPRESSION:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    return-void

    :cond_b0
    const-string v2, "$symbol"

    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c4

    .line 25
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->visitSymbolExtendedJson()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    .line 26
    sget-object v0, Lorg/bson/BsonType;->SYMBOL:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    return-void

    :cond_c4
    const-string v2, "$timestamp"

    .line 27
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d8

    .line 28
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->visitTimestampExtendedJson()Lorg/bson/BsonTimestamp;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    .line 29
    sget-object v0, Lorg/bson/BsonType;->TIMESTAMP:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    return-void

    :cond_d8
    const-string v2, "$undefined"

    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ec

    .line 31
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->visitUndefinedExtendedJson()Lorg/bson/BsonUndefined;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    .line 32
    sget-object v0, Lorg/bson/BsonType;->UNDEFINED:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    return-void

    :cond_ec
    const-string v2, "$numberLong"

    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_100

    .line 34
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->visitNumberLongExtendedJson()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    .line 35
    sget-object v0, Lorg/bson/BsonType;->INT64:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    return-void

    :cond_100
    const-string v2, "$numberInt"

    .line 36
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_114

    .line 37
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->visitNumberIntExtendedJson()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    .line 38
    sget-object v0, Lorg/bson/BsonType;->INT32:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    return-void

    :cond_114
    const-string v2, "$numberDouble"

    .line 39
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_128

    .line 40
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->visitNumberDoubleExtendedJson()Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    .line 41
    sget-object v0, Lorg/bson/BsonType;->DOUBLE:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    return-void

    :cond_128
    const-string v2, "$numberDecimal"

    .line 42
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13c

    .line 43
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->visitNumberDecimalExtendedJson()Lorg/bson/types/Decimal128;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    .line 44
    sget-object v0, Lorg/bson/BsonType;->DECIMAL128:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    return-void

    :cond_13c
    const-string v2, "$dbPointer"

    .line 45
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16c

    .line 46
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->visitDbPointerExtendedJson()Lorg/bson/BsonDbPointer;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    .line 47
    sget-object v0, Lorg/bson/BsonType;->DB_POINTER:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    return-void

    .line 48
    :cond_150
    :goto_150
    invoke-direct {p0, v1}, Lorg/bson/json/JsonReader;->visitRegularExpressionExtendedJson(Ljava/lang/String;)Lorg/bson/BsonRegularExpression;

    move-result-object v1

    iput-object v1, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    if-eqz v1, :cond_16c

    .line 49
    sget-object v0, Lorg/bson/BsonType;->REGULAR_EXPRESSION:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    return-void

    .line 50
    :cond_15e
    :goto_15e
    invoke-direct {p0, v1}, Lorg/bson/json/JsonReader;->visitBinDataExtendedJson(Ljava/lang/String;)Lorg/bson/BsonBinary;

    move-result-object v1

    iput-object v1, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    if-eqz v1, :cond_16c

    .line 51
    sget-object v0, Lorg/bson/BsonType;->BINARY:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    return-void

    .line 52
    :cond_16c
    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->pushToken(Lorg/bson/json/JsonToken;)V

    .line 53
    sget-object v0, Lorg/bson/BsonType;->DOCUMENT:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    return-void
.end method

.method private visitHexDataConstructor()Lorg/bson/BsonBinary;
    .registers 9

    .line 1
    sget-object v0, Lorg/bson/json/JsonTokenType;->LEFT_PAREN:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 2
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->popToken()Lorg/bson/json/JsonToken;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v1

    sget-object v2, Lorg/bson/json/JsonTokenType;->INT32:Lorg/bson/json/JsonTokenType;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_60

    .line 4
    sget-object v1, Lorg/bson/json/JsonTokenType;->COMMA:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v1}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 5
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->readStringFromExtendedJson()Ljava/lang/String;

    move-result-object v1

    .line 6
    sget-object v2, Lorg/bson/json/JsonTokenType;->RIGHT_PAREN:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v2}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    and-int/2addr v2, v4

    if-eqz v2, :cond_2e

    const-string v2, "0"

    .line 8
    invoke-static {v2, v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    :cond_2e
    invoke-static {}, Lorg/bson/BsonBinarySubType;->values()[Lorg/bson/BsonBinarySubType;

    move-result-object v2

    array-length v4, v2

    :goto_33
    if-ge v3, v4, :cond_56

    aget-object v5, v2, v3

    .line 10
    invoke-virtual {v5}, Lorg/bson/BsonBinarySubType;->getValue()B

    move-result v6

    const-class v7, Ljava/lang/Integer;

    invoke-virtual {v0, v7}, Lorg/bson/json/JsonToken;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v6, v7, :cond_53

    .line 11
    new-instance v0, Lorg/bson/BsonBinary;

    invoke-static {v1}, Lorg/bson/json/JsonReader;->decodeHex(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v5, v1}, Lorg/bson/BsonBinary;-><init>(Lorg/bson/BsonBinarySubType;[B)V

    return-object v0

    :cond_53
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 12
    :cond_56
    new-instance v0, Lorg/bson/BsonBinary;

    invoke-static {v1}, Lorg/bson/json/JsonReader;->decodeHex(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bson/BsonBinary;-><init>([B)V

    return-object v0

    .line 13
    :cond_60
    new-instance v1, Lorg/bson/json/JsonParseException;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/bson/json/JsonToken;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "JSON reader expected a binary subtype but found \'%s\'."

    invoke-direct {v1, v0, v2}, Lorg/bson/json/JsonParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method private visitISODateTimeConstructor()J
    .registers 12

    .line 1
    sget-object v0, Lorg/bson/json/JsonTokenType;->LEFT_PAREN:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 2
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->popToken()Lorg/bson/json/JsonToken;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v1

    sget-object v2, Lorg/bson/json/JsonTokenType;->RIGHT_PAREN:Lorg/bson/json/JsonTokenType;

    if-ne v1, v2, :cond_1b

    .line 4
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0

    .line 5
    :cond_1b
    invoke-virtual {v0}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v1

    sget-object v3, Lorg/bson/json/JsonTokenType;->STRING:Lorg/bson/json/JsonTokenType;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v3, :cond_99

    .line 6
    invoke-direct {p0, v2}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    const/4 v1, 0x3

    const-string v2, "yyyy-MM-dd"

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ssz"

    const-string v6, "yyyy-MM-dd\'T\'HH:mm:ss.SSSz"

    .line 7
    filled-new-array {v2, v3, v6}, [Ljava/lang/String;

    move-result-object v2

    .line 8
    new-instance v3, Ljava/text/SimpleDateFormat;

    aget-object v6, v2, v5

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v3, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 9
    new-instance v6, Ljava/text/ParsePosition;

    invoke-direct {v6, v5}, Ljava/text/ParsePosition;-><init>(I)V

    .line 10
    const-class v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Lorg/bson/json/JsonToken;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v7, "Z"

    .line 11
    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 12
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v4

    invoke-virtual {v0, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "GMT-00:00"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6b
    const/4 v7, 0x0

    :goto_6c
    if-ge v7, v1, :cond_91

    .line 13
    aget-object v8, v2, v7

    .line 14
    invoke-virtual {v3, v8}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 16
    invoke-virtual {v6, v5}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 17
    invoke-virtual {v3, v0, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v8

    if-eqz v8, :cond_8e

    .line 18
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v9, v10, :cond_8e

    .line 19
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0

    :cond_8e
    add-int/lit8 v7, v7, 0x1

    goto :goto_6c

    .line 20
    :cond_91
    new-instance v0, Lorg/bson/json/JsonParseException;

    const-string v1, "Invalid date format."

    invoke-direct {v0, v1}, Lorg/bson/json/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_99
    new-instance v1, Lorg/bson/json/JsonParseException;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/bson/json/JsonToken;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v5

    const-string v0, "JSON reader expected a string but found \'%s\'."

    invoke-direct {v1, v0, v2}, Lorg/bson/json/JsonParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method private visitJavaScriptExtendedJson()V
    .registers 6

    .line 1
    sget-object v0, Lorg/bson/json/JsonTokenType;->COLON:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 2
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->readStringFromExtendedJson()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->popToken()Lorg/bson/json/JsonToken;

    move-result-object v2

    .line 4
    sget-object v3, Lorg/bson/json/JsonReader$1;->$SwitchMap$org$bson$json$JsonTokenType:[I

    invoke-virtual {v2}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x3

    if-eq v3, v4, :cond_51

    const/16 v4, 0xb

    if-ne v3, v4, :cond_43

    const-string v2, "$scope"

    .line 5
    invoke-direct {p0, v2}, Lorg/bson/json/JsonReader;->verifyString(Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 7
    sget-object v0, Lorg/bson/AbstractBsonReader$State;->VALUE:Lorg/bson/AbstractBsonReader$State;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setState(Lorg/bson/AbstractBsonReader$State;)V

    .line 8
    iput-object v1, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    .line 9
    sget-object v0, Lorg/bson/BsonType;->JAVASCRIPT_WITH_SCOPE:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    .line 10
    new-instance v0, Lorg/bson/json/JsonReader$Context;

    invoke-virtual {p0}, Lorg/bson/json/JsonReader;->getContext()Lorg/bson/json/JsonReader$Context;

    move-result-object v1

    sget-object v2, Lorg/bson/BsonContextType;->SCOPE_DOCUMENT:Lorg/bson/BsonContextType;

    invoke-direct {v0, p0, v1, v2}, Lorg/bson/json/JsonReader$Context;-><init>(Lorg/bson/json/JsonReader;Lorg/bson/AbstractBsonReader$Context;Lorg/bson/BsonContextType;)V

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setContext(Lorg/bson/AbstractBsonReader$Context;)V

    goto :goto_58

    .line 11
    :cond_43
    new-instance v0, Lorg/bson/json/JsonParseException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "JSON reader expected \',\' or \'}\' but found \'%s\'."

    invoke-direct {v0, v2, v1}, Lorg/bson/json/JsonParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 12
    :cond_51
    iput-object v1, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    .line 13
    sget-object v0, Lorg/bson/BsonType;->JAVASCRIPT:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    :goto_58
    return-void
.end method

.method private visitLegacyBinaryExtendedJson(Ljava/lang/String;)Lorg/bson/BsonBinary;
    .registers 8

    const-string v0, "$binary"

    .line 1
    new-instance v1, Lorg/bson/json/JsonReader$Mark;

    invoke-direct {v1, p0}, Lorg/bson/json/JsonReader$Mark;-><init>(Lorg/bson/json/JsonReader;)V

    const/4 v2, 0x0

    .line 2
    :try_start_8
    sget-object v3, Lorg/bson/json/JsonTokenType;->COLON:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v3}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 4
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->readStringFromExtendedJson()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/bson/internal/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p1

    .line 5
    sget-object v0, Lorg/bson/json/JsonTokenType;->COMMA:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    const-string v0, "$type"

    .line 6
    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->verifyString(Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, v3}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 8
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->readBinarySubtypeFromExtendedJson()B

    move-result v0

    goto :goto_47

    .line 9
    :cond_2d
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->readBinarySubtypeFromExtendedJson()B

    move-result p1

    .line 10
    sget-object v4, Lorg/bson/json/JsonTokenType;->COMMA:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v4}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 11
    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->verifyString(Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, v3}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 13
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->readStringFromExtendedJson()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bson/internal/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    move-object v5, v0

    move v0, p1

    move-object p1, v5

    .line 14
    :goto_47
    sget-object v3, Lorg/bson/json/JsonTokenType;->END_OBJECT:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v3}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 15
    new-instance v3, Lorg/bson/BsonBinary;

    invoke-direct {v3, v0, p1}, Lorg/bson/BsonBinary;-><init>(B[B)V
    :try_end_51
    .catch Lorg/bson/json/JsonParseException; {:try_start_8 .. :try_end_51} :catch_5e
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_51} :catch_57
    .catchall {:try_start_8 .. :try_end_51} :catchall_55

    .line 16
    invoke-virtual {v1}, Lorg/bson/json/JsonReader$Mark;->discard()V

    return-object v3

    :catchall_55
    move-exception p1

    goto :goto_65

    .line 17
    :catch_57
    :try_start_57
    invoke-virtual {v1}, Lorg/bson/json/JsonReader$Mark;->reset()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_55

    .line 18
    invoke-virtual {v1}, Lorg/bson/json/JsonReader$Mark;->discard()V

    return-object v2

    .line 19
    :catch_5e
    :try_start_5e
    invoke-virtual {v1}, Lorg/bson/json/JsonReader$Mark;->reset()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_55

    .line 20
    invoke-virtual {v1}, Lorg/bson/json/JsonReader$Mark;->discard()V

    return-object v2

    :goto_65
    invoke-virtual {v1}, Lorg/bson/json/JsonReader$Mark;->discard()V

    .line 21
    throw p1
.end method

.method private visitMaxKeyExtendedJson()Lorg/bson/types/MaxKey;
    .registers 3

    .line 1
    sget-object v0, Lorg/bson/json/JsonTokenType;->COLON:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 2
    sget-object v0, Lorg/bson/json/JsonTokenType;->INT32:Lorg/bson/json/JsonTokenType;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;Ljava/lang/Object;)V

    .line 3
    sget-object v0, Lorg/bson/json/JsonTokenType;->END_OBJECT:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 4
    new-instance v0, Lorg/bson/types/MaxKey;

    invoke-direct {v0}, Lorg/bson/types/MaxKey;-><init>()V

    return-object v0
.end method

.method private visitMinKeyExtendedJson()Lorg/bson/types/MinKey;
    .registers 3

    .line 1
    sget-object v0, Lorg/bson/json/JsonTokenType;->COLON:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 2
    sget-object v0, Lorg/bson/json/JsonTokenType;->INT32:Lorg/bson/json/JsonTokenType;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;Ljava/lang/Object;)V

    .line 3
    sget-object v0, Lorg/bson/json/JsonTokenType;->END_OBJECT:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 4
    new-instance v0, Lorg/bson/types/MinKey;

    invoke-direct {v0}, Lorg/bson/types/MinKey;-><init>()V

    return-object v0
.end method

.method private visitNew()V
    .registers 7

    .line 1
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->popToken()Lorg/bson/json/JsonToken;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v1

    sget-object v2, Lorg/bson/json/JsonTokenType;->UNQUOTED_STRING:Lorg/bson/json/JsonTokenType;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "JSON reader expected a type name but found \'%s\'."

    if-ne v1, v2, :cond_181

    .line 3
    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/bson/json/JsonToken;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "MinKey"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 5
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->visitEmptyConstructor()V

    .line 6
    sget-object v0, Lorg/bson/BsonType;->MIN_KEY:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    .line 7
    new-instance v0, Lorg/bson/types/MinKey;

    invoke-direct {v0}, Lorg/bson/types/MinKey;-><init>()V

    iput-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    goto/16 :goto_180

    :cond_31
    const-string v1, "MaxKey"

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 9
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->visitEmptyConstructor()V

    .line 10
    sget-object v0, Lorg/bson/BsonType;->MAX_KEY:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    .line 11
    new-instance v0, Lorg/bson/types/MaxKey;

    invoke-direct {v0}, Lorg/bson/types/MaxKey;-><init>()V

    iput-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    goto/16 :goto_180

    :cond_4a
    const-string v1, "BinData"

    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 13
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->visitBinDataConstructor()Lorg/bson/BsonBinary;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    .line 14
    sget-object v0, Lorg/bson/BsonType;->BINARY:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    goto/16 :goto_180

    :cond_5f
    const-string v1, "Date"

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 16
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->visitDateTimeConstructor()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    .line 17
    sget-object v0, Lorg/bson/BsonType;->DATE_TIME:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    goto/16 :goto_180

    :cond_78
    const-string v1, "HexData"

    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 19
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->visitHexDataConstructor()Lorg/bson/BsonBinary;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    .line 20
    sget-object v0, Lorg/bson/BsonType;->BINARY:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    goto/16 :goto_180

    :cond_8d
    const-string v1, "ISODate"

    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 22
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->visitISODateTimeConstructor()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    .line 23
    sget-object v0, Lorg/bson/BsonType;->DATE_TIME:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    goto/16 :goto_180

    :cond_a6
    const-string v1, "NumberInt"

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 25
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->visitNumberIntConstructor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    .line 26
    sget-object v0, Lorg/bson/BsonType;->INT32:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    goto/16 :goto_180

    :cond_bf
    const-string v1, "NumberLong"

    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d8

    .line 28
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->visitNumberLongConstructor()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    .line 29
    sget-object v0, Lorg/bson/BsonType;->INT64:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    goto/16 :goto_180

    :cond_d8
    const-string v1, "NumberDecimal"

    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ed

    .line 31
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->visitNumberDecimalConstructor()Lorg/bson/types/Decimal128;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    .line 32
    sget-object v0, Lorg/bson/BsonType;->DECIMAL128:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    goto/16 :goto_180

    :cond_ed
    const-string v1, "ObjectId"

    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_102

    .line 34
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->visitObjectIdConstructor()Lorg/bson/types/ObjectId;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    .line 35
    sget-object v0, Lorg/bson/BsonType;->OBJECT_ID:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    goto/16 :goto_180

    :cond_102
    const-string v1, "RegExp"

    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_116

    .line 37
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->visitRegularExpressionConstructor()Lorg/bson/BsonRegularExpression;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    .line 38
    sget-object v0, Lorg/bson/BsonType;->REGULAR_EXPRESSION:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    goto :goto_180

    :cond_116
    const-string v1, "DBPointer"

    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12a

    .line 40
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->visitDBPointerConstructor()Lorg/bson/BsonDbPointer;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    .line 41
    sget-object v0, Lorg/bson/BsonType;->DB_POINTER:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    goto :goto_180

    :cond_12a
    const-string v1, "UUID"

    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_175

    const-string v1, "GUID"

    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_175

    const-string v1, "CSUUID"

    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_175

    const-string v1, "CSGUID"

    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_175

    const-string v1, "JUUID"

    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_175

    const-string v1, "JGUID"

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_175

    const-string v1, "PYUUID"

    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_175

    const-string v1, "PYGUID"

    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16b

    goto :goto_175

    .line 50
    :cond_16b
    new-instance v1, Lorg/bson/json/JsonParseException;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-direct {v1, v5, v2}, Lorg/bson/json/JsonParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 51
    :cond_175
    :goto_175
    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->visitUUIDConstructor(Ljava/lang/String;)Lorg/bson/BsonBinary;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    .line 52
    sget-object v0, Lorg/bson/BsonType;->BINARY:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    :goto_180
    return-void

    .line 53
    :cond_181
    new-instance v1, Lorg/bson/json/JsonParseException;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/bson/json/JsonToken;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-direct {v1, v5, v2}, Lorg/bson/json/JsonParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method private visitNewRegularExpressionExtendedJson()Lorg/bson/BsonRegularExpression;
    .registers 7

    .line 1
    sget-object v0, Lorg/bson/json/JsonTokenType;->COLON:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 2
    sget-object v1, Lorg/bson/json/JsonTokenType;->BEGIN_OBJECT:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v1}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 3
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->readStringFromExtendedJson()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pattern"

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "options"

    if-eqz v3, :cond_2f

    .line 5
    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 6
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->readStringFromExtendedJson()Ljava/lang/String;

    move-result-object v1

    .line 7
    sget-object v2, Lorg/bson/json/JsonTokenType;->COMMA:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v2}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 8
    invoke-direct {p0, v4}, Lorg/bson/json/JsonReader;->verifyString(Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 10
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->readStringFromExtendedJson()Ljava/lang/String;

    move-result-object v0

    goto :goto_4e

    .line 11
    :cond_2f
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 12
    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 13
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->readStringFromExtendedJson()Ljava/lang/String;

    move-result-object v1

    .line 14
    sget-object v3, Lorg/bson/json/JsonTokenType;->COMMA:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v3}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 15
    invoke-direct {p0, v2}, Lorg/bson/json/JsonReader;->verifyString(Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 17
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->readStringFromExtendedJson()Ljava/lang/String;

    move-result-object v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 18
    :goto_4e
    sget-object v2, Lorg/bson/json/JsonTokenType;->END_OBJECT:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v2}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 19
    invoke-direct {p0, v2}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 20
    new-instance v2, Lorg/bson/BsonRegularExpression;

    invoke-direct {v2, v1, v0}, Lorg/bson/BsonRegularExpression;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 21
    :cond_5c
    new-instance v0, Lorg/bson/json/JsonParseException;

    const-string v2, "Expected \'t\' and \'i\' fields in $timestamp document but found "

    .line 22
    invoke-static {v2, v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Lorg/bson/json/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private visitNumberDecimalConstructor()Lorg/bson/types/Decimal128;
    .registers 5

    .line 1
    sget-object v0, Lorg/bson/json/JsonTokenType;->LEFT_PAREN:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 2
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->popToken()Lorg/bson/json/JsonToken;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v1

    sget-object v2, Lorg/bson/json/JsonTokenType;->INT32:Lorg/bson/json/JsonTokenType;

    if-eq v1, v2, :cond_49

    invoke-virtual {v0}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v1

    sget-object v2, Lorg/bson/json/JsonTokenType;->INT64:Lorg/bson/json/JsonTokenType;

    if-eq v1, v2, :cond_49

    .line 4
    invoke-virtual {v0}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v1

    sget-object v2, Lorg/bson/json/JsonTokenType;->DOUBLE:Lorg/bson/json/JsonTokenType;

    if-ne v1, v2, :cond_22

    goto :goto_49

    .line 5
    :cond_22
    invoke-virtual {v0}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v1

    sget-object v2, Lorg/bson/json/JsonTokenType;->STRING:Lorg/bson/json/JsonTokenType;

    if-ne v1, v2, :cond_37

    .line 6
    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/bson/json/JsonToken;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/bson/types/Decimal128;->parse(Ljava/lang/String;)Lorg/bson/types/Decimal128;

    move-result-object v0

    goto :goto_51

    .line 7
    :cond_37
    new-instance v1, Lorg/bson/json/JsonParseException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lorg/bson/json/JsonToken;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "JSON reader expected a number or a string but found \'%s\'."

    invoke-direct {v1, v0, v2}, Lorg/bson/json/JsonParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 8
    :cond_49
    :goto_49
    const-class v1, Lorg/bson/types/Decimal128;

    invoke-virtual {v0, v1}, Lorg/bson/json/JsonToken;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bson/types/Decimal128;

    .line 9
    :goto_51
    sget-object v1, Lorg/bson/json/JsonTokenType;->RIGHT_PAREN:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v1}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    return-object v0
.end method

.method private visitNumberDecimalExtendedJson()Lorg/bson/types/Decimal128;
    .registers 7

    .line 1
    sget-object v0, Lorg/bson/json/JsonTokenType;->COLON:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 2
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->readStringFromExtendedJson()Ljava/lang/String;

    move-result-object v0

    .line 3
    :try_start_9
    invoke-static {v0}, Lorg/bson/types/Decimal128;->parse(Ljava/lang/String;)Lorg/bson/types/Decimal128;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_d} :catch_13

    .line 4
    sget-object v1, Lorg/bson/json/JsonTokenType;->END_OBJECT:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v1}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    return-object v0

    :catch_13
    move-exception v1

    .line 5
    new-instance v2, Lorg/bson/json/JsonParseException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-class v0, Lorg/bson/types/Decimal128;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    aput-object v0, v3, v5

    const-string v0, "Exception converting value \'%s\' to type %s"

    .line 7
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-direct {v2, v0, v3}, Lorg/bson/json/JsonParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
.end method

.method private visitNumberDoubleExtendedJson()Ljava/lang/Double;
    .registers 7

    .line 1
    sget-object v0, Lorg/bson/json/JsonTokenType;->COLON:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 2
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->readStringFromExtendedJson()Ljava/lang/String;

    move-result-object v0

    .line 3
    :try_start_9
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_d} :catch_13

    .line 4
    sget-object v1, Lorg/bson/json/JsonTokenType;->END_OBJECT:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v1}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    return-object v0

    :catch_13
    move-exception v1

    .line 5
    new-instance v2, Lorg/bson/json/JsonParseException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-class v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    aput-object v0, v3, v5

    const-string v0, "Exception converting value \'%s\' to type %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-direct {v2, v0, v3}, Lorg/bson/json/JsonParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
.end method

.method private visitNumberIntConstructor()I
    .registers 5

    .line 1
    sget-object v0, Lorg/bson/json/JsonTokenType;->LEFT_PAREN:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 2
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->popToken()Lorg/bson/json/JsonToken;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v1

    sget-object v2, Lorg/bson/json/JsonTokenType;->INT32:Lorg/bson/json/JsonTokenType;

    if-ne v1, v2, :cond_1e

    .line 4
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lorg/bson/json/JsonToken;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_32

    .line 5
    :cond_1e
    invoke-virtual {v0}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v1

    sget-object v2, Lorg/bson/json/JsonTokenType;->STRING:Lorg/bson/json/JsonTokenType;

    if-ne v1, v2, :cond_38

    .line 6
    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/bson/json/JsonToken;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 7
    :goto_32
    sget-object v1, Lorg/bson/json/JsonTokenType;->RIGHT_PAREN:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v1}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    return v0

    .line 8
    :cond_38
    new-instance v1, Lorg/bson/json/JsonParseException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lorg/bson/json/JsonToken;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "JSON reader expected an integer or a string but found \'%s\'."

    invoke-direct {v1, v0, v2}, Lorg/bson/json/JsonParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method private visitNumberIntExtendedJson()Ljava/lang/Integer;
    .registers 7

    .line 1
    sget-object v0, Lorg/bson/json/JsonTokenType;->COLON:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 2
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->readStringFromExtendedJson()Ljava/lang/String;

    move-result-object v0

    .line 3
    :try_start_9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_d} :catch_13

    .line 4
    sget-object v1, Lorg/bson/json/JsonTokenType;->END_OBJECT:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v1}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    return-object v0

    :catch_13
    move-exception v1

    .line 5
    new-instance v2, Lorg/bson/json/JsonParseException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    aput-object v0, v3, v5

    const-string v0, "Exception converting value \'%s\' to type %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-direct {v2, v0, v3}, Lorg/bson/json/JsonParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
.end method

.method private visitNumberLongConstructor()J
    .registers 5

    .line 1
    sget-object v0, Lorg/bson/json/JsonTokenType;->LEFT_PAREN:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 2
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->popToken()Lorg/bson/json/JsonToken;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v1

    sget-object v2, Lorg/bson/json/JsonTokenType;->INT32:Lorg/bson/json/JsonTokenType;

    if-eq v1, v2, :cond_41

    invoke-virtual {v0}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v1

    sget-object v2, Lorg/bson/json/JsonTokenType;->INT64:Lorg/bson/json/JsonTokenType;

    if-ne v1, v2, :cond_1a

    goto :goto_41

    .line 4
    :cond_1a
    invoke-virtual {v0}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v1

    sget-object v2, Lorg/bson/json/JsonTokenType;->STRING:Lorg/bson/json/JsonTokenType;

    if-ne v1, v2, :cond_2f

    .line 5
    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/bson/json/JsonToken;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_4d

    .line 6
    :cond_2f
    new-instance v1, Lorg/bson/json/JsonParseException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lorg/bson/json/JsonToken;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "JSON reader expected an integer or a string but found \'%s\'."

    invoke-direct {v1, v0, v2}, Lorg/bson/json/JsonParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 7
    :cond_41
    :goto_41
    const-class v1, Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lorg/bson/json/JsonToken;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 8
    :goto_4d
    sget-object v2, Lorg/bson/json/JsonTokenType;->RIGHT_PAREN:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v2}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    return-wide v0
.end method

.method private visitNumberLongExtendedJson()Ljava/lang/Long;
    .registers 7

    .line 1
    sget-object v0, Lorg/bson/json/JsonTokenType;->COLON:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 2
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->readStringFromExtendedJson()Ljava/lang/String;

    move-result-object v0

    .line 3
    :try_start_9
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_d} :catch_13

    .line 4
    sget-object v1, Lorg/bson/json/JsonTokenType;->END_OBJECT:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v1}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    return-object v0

    :catch_13
    move-exception v1

    .line 5
    new-instance v2, Lorg/bson/json/JsonParseException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    aput-object v0, v3, v5

    const-string v0, "Exception converting value \'%s\' to type %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-direct {v2, v0, v3}, Lorg/bson/json/JsonParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
.end method

.method private visitObjectIdConstructor()Lorg/bson/types/ObjectId;
    .registers 3

    .line 1
    sget-object v0, Lorg/bson/json/JsonTokenType;->LEFT_PAREN:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 2
    new-instance v0, Lorg/bson/types/ObjectId;

    invoke-direct {p0}, Lorg/bson/json/JsonReader;->readStringFromExtendedJson()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bson/types/ObjectId;-><init>(Ljava/lang/String;)V

    .line 3
    sget-object v1, Lorg/bson/json/JsonTokenType;->RIGHT_PAREN:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v1}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    return-object v0
.end method

.method private visitObjectIdExtendedJson()Lorg/bson/types/ObjectId;
    .registers 3

    .line 1
    sget-object v0, Lorg/bson/json/JsonTokenType;->COLON:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 2
    new-instance v0, Lorg/bson/types/ObjectId;

    invoke-direct {p0}, Lorg/bson/json/JsonReader;->readStringFromExtendedJson()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bson/types/ObjectId;-><init>(Ljava/lang/String;)V

    .line 3
    sget-object v1, Lorg/bson/json/JsonTokenType;->END_OBJECT:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v1}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    return-object v0
.end method

.method private visitRegularExpressionConstructor()Lorg/bson/BsonRegularExpression;
    .registers 5

    .line 1
    sget-object v0, Lorg/bson/json/JsonTokenType;->LEFT_PAREN:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 2
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->readStringFromExtendedJson()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->popToken()Lorg/bson/json/JsonToken;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v2

    sget-object v3, Lorg/bson/json/JsonTokenType;->COMMA:Lorg/bson/json/JsonTokenType;

    if-ne v2, v3, :cond_1a

    .line 5
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->readStringFromExtendedJson()Ljava/lang/String;

    move-result-object v1

    goto :goto_1f

    .line 6
    :cond_1a
    invoke-direct {p0, v1}, Lorg/bson/json/JsonReader;->pushToken(Lorg/bson/json/JsonToken;)V

    const-string v1, ""

    .line 7
    :goto_1f
    sget-object v2, Lorg/bson/json/JsonTokenType;->RIGHT_PAREN:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v2}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 8
    new-instance v2, Lorg/bson/BsonRegularExpression;

    invoke-direct {v2, v0, v1}, Lorg/bson/BsonRegularExpression;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private visitRegularExpressionExtendedJson(Ljava/lang/String;)Lorg/bson/BsonRegularExpression;
    .registers 7

    const-string v0, "$regex"

    .line 1
    new-instance v1, Lorg/bson/json/JsonReader$Mark;

    invoke-direct {v1, p0}, Lorg/bson/json/JsonReader$Mark;-><init>(Lorg/bson/json/JsonReader;)V

    .line 2
    :try_start_7
    sget-object v2, Lorg/bson/json/JsonTokenType;->COLON:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v2}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 4
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->readStringFromExtendedJson()Ljava/lang/String;

    move-result-object p1

    .line 5
    sget-object v0, Lorg/bson/json/JsonTokenType;->COMMA:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    const-string v0, "$options"

    .line 6
    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->verifyString(Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, v2}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 8
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->readStringFromExtendedJson()Ljava/lang/String;

    move-result-object v0

    goto :goto_3e

    .line 9
    :cond_28
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->readStringFromExtendedJson()Ljava/lang/String;

    move-result-object p1

    .line 10
    sget-object v3, Lorg/bson/json/JsonTokenType;->COMMA:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v3}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 11
    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->verifyString(Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, v2}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 13
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->readStringFromExtendedJson()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    .line 14
    :goto_3e
    sget-object v2, Lorg/bson/json/JsonTokenType;->END_OBJECT:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v2}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 15
    new-instance v2, Lorg/bson/BsonRegularExpression;

    invoke-direct {v2, p1, v0}, Lorg/bson/BsonRegularExpression;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_48
    .catch Lorg/bson/json/JsonParseException; {:try_start_7 .. :try_end_48} :catch_4e
    .catchall {:try_start_7 .. :try_end_48} :catchall_4c

    .line 16
    invoke-virtual {v1}, Lorg/bson/json/JsonReader$Mark;->discard()V

    return-object v2

    :catchall_4c
    move-exception p1

    goto :goto_56

    .line 17
    :catch_4e
    :try_start_4e
    invoke-virtual {v1}, Lorg/bson/json/JsonReader$Mark;->reset()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_4c

    const/4 p1, 0x0

    .line 18
    invoke-virtual {v1}, Lorg/bson/json/JsonReader$Mark;->discard()V

    return-object p1

    :goto_56
    invoke-virtual {v1}, Lorg/bson/json/JsonReader$Mark;->discard()V

    .line 19
    throw p1
.end method

.method private visitSymbolExtendedJson()Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lorg/bson/json/JsonTokenType;->COLON:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 2
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->readStringFromExtendedJson()Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Lorg/bson/json/JsonTokenType;->END_OBJECT:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v1}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    return-object v0
.end method

.method private visitTimestampConstructor()Lorg/bson/BsonTimestamp;
    .registers 10

    .line 1
    const-class v0, Ljava/lang/Integer;

    sget-object v1, Lorg/bson/json/JsonTokenType;->LEFT_PAREN:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v1}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 2
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->popToken()Lorg/bson/json/JsonToken;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v2

    sget-object v3, Lorg/bson/json/JsonTokenType;->INT32:Lorg/bson/json/JsonTokenType;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "JSON reader expected an integer but found \'%s\'."

    if-ne v2, v3, :cond_53

    .line 4
    invoke-virtual {v1, v0}, Lorg/bson/json/JsonToken;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 5
    sget-object v7, Lorg/bson/json/JsonTokenType;->COMMA:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v7}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 6
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->popToken()Lorg/bson/json/JsonToken;

    move-result-object v7

    .line 7
    invoke-virtual {v7}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v8

    if-ne v8, v3, :cond_45

    .line 8
    invoke-virtual {v7, v0}, Lorg/bson/json/JsonToken;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 9
    sget-object v1, Lorg/bson/json/JsonTokenType;->RIGHT_PAREN:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v1}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 10
    new-instance v1, Lorg/bson/BsonTimestamp;

    invoke-direct {v1, v2, v0}, Lorg/bson/BsonTimestamp;-><init>(II)V

    return-object v1

    .line 11
    :cond_45
    new-instance v0, Lorg/bson/json/JsonParseException;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/bson/json/JsonToken;->getValue()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-direct {v0, v6, v2}, Lorg/bson/json/JsonParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 12
    :cond_53
    new-instance v0, Lorg/bson/json/JsonParseException;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/bson/json/JsonToken;->getValue()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-direct {v0, v6, v2}, Lorg/bson/json/JsonParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private visitTimestampExtendedJson()Lorg/bson/BsonTimestamp;
    .registers 7

    .line 1
    sget-object v0, Lorg/bson/json/JsonTokenType;->COLON:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 2
    sget-object v1, Lorg/bson/json/JsonTokenType;->BEGIN_OBJECT:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v1}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 3
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->readStringFromExtendedJson()Ljava/lang/String;

    move-result-object v1

    const-string v2, "t"

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "i"

    if-eqz v3, :cond_2f

    .line 5
    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 6
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->readIntFromExtendedJson()I

    move-result v1

    .line 7
    sget-object v2, Lorg/bson/json/JsonTokenType;->COMMA:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v2}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 8
    invoke-direct {p0, v4}, Lorg/bson/json/JsonReader;->verifyString(Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 10
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->readIntFromExtendedJson()I

    move-result v0

    goto :goto_4e

    .line 11
    :cond_2f
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 12
    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 13
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->readIntFromExtendedJson()I

    move-result v1

    .line 14
    sget-object v3, Lorg/bson/json/JsonTokenType;->COMMA:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v3}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 15
    invoke-direct {p0, v2}, Lorg/bson/json/JsonReader;->verifyString(Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 17
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->readIntFromExtendedJson()I

    move-result v0

    move v5, v1

    move v1, v0

    move v0, v5

    .line 18
    :goto_4e
    sget-object v2, Lorg/bson/json/JsonTokenType;->END_OBJECT:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v2}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 19
    invoke-direct {p0, v2}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 20
    new-instance v2, Lorg/bson/BsonTimestamp;

    invoke-direct {v2, v1, v0}, Lorg/bson/BsonTimestamp;-><init>(II)V

    return-object v2

    .line 21
    :cond_5c
    new-instance v0, Lorg/bson/json/JsonParseException;

    const-string v2, "Expected \'t\' and \'i\' fields in $timestamp document but found "

    .line 22
    invoke-static {v2, v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Lorg/bson/json/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private visitUUIDConstructor(Ljava/lang/String;)Lorg/bson/BsonBinary;
    .registers 5

    .line 1
    sget-object v0, Lorg/bson/json/JsonTokenType;->LEFT_PAREN:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 2
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->readStringFromExtendedJson()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\{"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Lorg/bson/json/JsonTokenType;->RIGHT_PAREN:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v1}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 4
    invoke-static {v0}, Lorg/bson/json/JsonReader;->decodeHex(Ljava/lang/String;)[B

    move-result-object v0

    .line 5
    sget-object v1, Lorg/bson/BsonBinarySubType;->UUID_STANDARD:Lorg/bson/BsonBinarySubType;

    const-string v2, "UUID"

    .line 6
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    const-string v2, "GUID"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3a

    .line 7
    :cond_38
    sget-object v1, Lorg/bson/BsonBinarySubType;->UUID_LEGACY:Lorg/bson/BsonBinarySubType;

    .line 8
    :cond_3a
    new-instance p1, Lorg/bson/BsonBinary;

    invoke-direct {p1, v1, v0}, Lorg/bson/BsonBinary;-><init>(Lorg/bson/BsonBinarySubType;[B)V

    return-object p1
.end method

.method private visitUndefinedExtendedJson()Lorg/bson/BsonUndefined;
    .registers 5

    .line 1
    sget-object v0, Lorg/bson/json/JsonTokenType;->COLON:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 2
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->popToken()Lorg/bson/json/JsonToken;

    move-result-object v0

    .line 3
    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/bson/json/JsonToken;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 4
    sget-object v0, Lorg/bson/json/JsonTokenType;->END_OBJECT:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 5
    new-instance v0, Lorg/bson/BsonUndefined;

    invoke-direct {v0}, Lorg/bson/BsonUndefined;-><init>()V

    return-object v0

    .line 6
    :cond_24
    new-instance v1, Lorg/bson/json/JsonParseException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v0}, Lorg/bson/json/JsonToken;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "JSON reader requires $undefined to have the value of true but found \'%s\'."

    invoke-direct {v1, v0, v2}, Lorg/bson/json/JsonParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public final doPeekBinarySize()I
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    check-cast v0, Lorg/bson/BsonBinary;

    .line 2
    invoke-virtual {v0}, Lorg/bson/BsonBinary;->getData()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public final doPeekBinarySubType()B
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    check-cast v0, Lorg/bson/BsonBinary;

    .line 2
    invoke-virtual {v0}, Lorg/bson/BsonBinary;->getType()B

    move-result v0

    return v0
.end method

.method public final doReadBinaryData()Lorg/bson/BsonBinary;
    .registers 2

    iget-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    check-cast v0, Lorg/bson/BsonBinary;

    return-object v0
.end method

.method public final doReadBoolean()Z
    .registers 2

    iget-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final doReadDBPointer()Lorg/bson/BsonDbPointer;
    .registers 2

    iget-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    check-cast v0, Lorg/bson/BsonDbPointer;

    return-object v0
.end method

.method public final doReadDateTime()J
    .registers 3

    iget-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public doReadDecimal128()Lorg/bson/types/Decimal128;
    .registers 2

    iget-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    check-cast v0, Lorg/bson/types/Decimal128;

    return-object v0
.end method

.method public final doReadDouble()D
    .registers 3

    iget-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final doReadEndArray()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lorg/bson/json/JsonReader;->getContext()Lorg/bson/json/JsonReader$Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/json/JsonReader$Context;->getParentContext()Lorg/bson/json/JsonReader$Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setContext(Lorg/bson/AbstractBsonReader$Context;)V

    .line 2
    invoke-virtual {p0}, Lorg/bson/json/JsonReader;->getContext()Lorg/bson/json/JsonReader$Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/json/JsonReader$Context;->getContextType()Lorg/bson/BsonContextType;

    move-result-object v0

    sget-object v1, Lorg/bson/BsonContextType;->ARRAY:Lorg/bson/BsonContextType;

    if-eq v0, v1, :cond_23

    invoke-virtual {p0}, Lorg/bson/json/JsonReader;->getContext()Lorg/bson/json/JsonReader$Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/json/JsonReader$Context;->getContextType()Lorg/bson/BsonContextType;

    move-result-object v0

    sget-object v1, Lorg/bson/BsonContextType;->DOCUMENT:Lorg/bson/BsonContextType;

    if-ne v0, v1, :cond_32

    .line 3
    :cond_23
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->popToken()Lorg/bson/json/JsonToken;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v1

    sget-object v2, Lorg/bson/json/JsonTokenType;->COMMA:Lorg/bson/json/JsonTokenType;

    if-eq v1, v2, :cond_32

    .line 5
    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->pushToken(Lorg/bson/json/JsonToken;)V

    :cond_32
    return-void
.end method

.method public final doReadEndDocument()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lorg/bson/json/JsonReader;->getContext()Lorg/bson/json/JsonReader$Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/json/JsonReader$Context;->getParentContext()Lorg/bson/json/JsonReader$Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setContext(Lorg/bson/AbstractBsonReader$Context;)V

    .line 2
    invoke-virtual {p0}, Lorg/bson/json/JsonReader;->getContext()Lorg/bson/json/JsonReader$Context;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Lorg/bson/json/JsonReader;->getContext()Lorg/bson/json/JsonReader$Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/json/JsonReader$Context;->getContextType()Lorg/bson/BsonContextType;

    move-result-object v0

    sget-object v1, Lorg/bson/BsonContextType;->SCOPE_DOCUMENT:Lorg/bson/BsonContextType;

    if-ne v0, v1, :cond_2d

    .line 3
    invoke-virtual {p0}, Lorg/bson/json/JsonReader;->getContext()Lorg/bson/json/JsonReader$Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/json/JsonReader$Context;->getParentContext()Lorg/bson/json/JsonReader$Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setContext(Lorg/bson/AbstractBsonReader$Context;)V

    .line 4
    sget-object v0, Lorg/bson/json/JsonTokenType;->END_OBJECT:Lorg/bson/json/JsonTokenType;

    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->verifyToken(Lorg/bson/json/JsonTokenType;)V

    .line 5
    :cond_2d
    invoke-virtual {p0}, Lorg/bson/json/JsonReader;->getContext()Lorg/bson/json/JsonReader$Context;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 6
    invoke-virtual {p0}, Lorg/bson/json/JsonReader;->getContext()Lorg/bson/json/JsonReader$Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/json/JsonReader$Context;->getContextType()Lorg/bson/BsonContextType;

    move-result-object v0

    sget-object v1, Lorg/bson/BsonContextType;->ARRAY:Lorg/bson/BsonContextType;

    if-eq v0, v1, :cond_4b

    invoke-virtual {p0}, Lorg/bson/json/JsonReader;->getContext()Lorg/bson/json/JsonReader$Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/json/JsonReader$Context;->getContextType()Lorg/bson/BsonContextType;

    move-result-object v0

    sget-object v1, Lorg/bson/BsonContextType;->DOCUMENT:Lorg/bson/BsonContextType;

    if-ne v0, v1, :cond_5a

    .line 7
    :cond_4b
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->popToken()Lorg/bson/json/JsonToken;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v1

    sget-object v2, Lorg/bson/json/JsonTokenType;->COMMA:Lorg/bson/json/JsonTokenType;

    if-eq v1, v2, :cond_5a

    .line 9
    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->pushToken(Lorg/bson/json/JsonToken;)V

    :cond_5a
    return-void

    .line 10
    :cond_5b
    new-instance v0, Lorg/bson/json/JsonParseException;

    const-string v1, "Unexpected end of document."

    invoke-direct {v0, v1}, Lorg/bson/json/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final doReadInt32()I
    .registers 2

    iget-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final doReadInt64()J
    .registers 3

    iget-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final doReadJavaScript()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final doReadJavaScriptWithScope()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final doReadMaxKey()V
    .registers 1

    return-void
.end method

.method public final doReadMinKey()V
    .registers 1

    return-void
.end method

.method public final doReadNull()V
    .registers 1

    return-void
.end method

.method public final doReadObjectId()Lorg/bson/types/ObjectId;
    .registers 2

    iget-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    check-cast v0, Lorg/bson/types/ObjectId;

    return-object v0
.end method

.method public final doReadRegularExpression()Lorg/bson/BsonRegularExpression;
    .registers 2

    iget-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    check-cast v0, Lorg/bson/BsonRegularExpression;

    return-object v0
.end method

.method public final doReadStartArray()V
    .registers 4

    new-instance v0, Lorg/bson/json/JsonReader$Context;

    invoke-virtual {p0}, Lorg/bson/json/JsonReader;->getContext()Lorg/bson/json/JsonReader$Context;

    move-result-object v1

    sget-object v2, Lorg/bson/BsonContextType;->ARRAY:Lorg/bson/BsonContextType;

    invoke-direct {v0, p0, v1, v2}, Lorg/bson/json/JsonReader$Context;-><init>(Lorg/bson/json/JsonReader;Lorg/bson/AbstractBsonReader$Context;Lorg/bson/BsonContextType;)V

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setContext(Lorg/bson/AbstractBsonReader$Context;)V

    return-void
.end method

.method public final doReadStartDocument()V
    .registers 4

    new-instance v0, Lorg/bson/json/JsonReader$Context;

    invoke-virtual {p0}, Lorg/bson/json/JsonReader;->getContext()Lorg/bson/json/JsonReader$Context;

    move-result-object v1

    sget-object v2, Lorg/bson/BsonContextType;->DOCUMENT:Lorg/bson/BsonContextType;

    invoke-direct {v0, p0, v1, v2}, Lorg/bson/json/JsonReader$Context;-><init>(Lorg/bson/json/JsonReader;Lorg/bson/AbstractBsonReader$Context;Lorg/bson/BsonContextType;)V

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setContext(Lorg/bson/AbstractBsonReader$Context;)V

    return-void
.end method

.method public final doReadString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final doReadSymbol()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final doReadTimestamp()Lorg/bson/BsonTimestamp;
    .registers 2

    iget-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    check-cast v0, Lorg/bson/BsonTimestamp;

    return-object v0
.end method

.method public final doReadUndefined()V
    .registers 1

    return-void
.end method

.method public final doSkipName()V
    .registers 1

    return-void
.end method

.method public final doSkipValue()V
    .registers 3

    .line 1
    sget-object v0, Lorg/bson/json/JsonReader$1;->$SwitchMap$org$bson$BsonType:[I

    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getCurrentBsonType()Lorg/bson/BsonType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_a0

    goto/16 :goto_9f

    .line 2
    :pswitch_11
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->readUndefined()V

    goto/16 :goto_9f

    .line 3
    :pswitch_16
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->readTimestamp()Lorg/bson/BsonTimestamp;

    goto/16 :goto_9f

    .line 4
    :pswitch_1b
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->readSymbol()Ljava/lang/String;

    goto/16 :goto_9f

    .line 5
    :pswitch_20
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->readString()Ljava/lang/String;

    goto/16 :goto_9f

    .line 6
    :pswitch_25
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->readRegularExpression()Lorg/bson/BsonRegularExpression;

    goto/16 :goto_9f

    .line 7
    :pswitch_2a
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->readObjectId()Lorg/bson/types/ObjectId;

    goto/16 :goto_9f

    .line 8
    :pswitch_2f
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->readNull()V

    goto/16 :goto_9f

    .line 9
    :pswitch_34
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->readMinKey()V

    goto/16 :goto_9f

    .line 10
    :pswitch_39
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->readMaxKey()V

    goto/16 :goto_9f

    .line 11
    :pswitch_3e
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->readJavaScriptWithScope()Ljava/lang/String;

    .line 12
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->readStartDocument()V

    .line 13
    :goto_44
    invoke-virtual {p0}, Lorg/bson/json/JsonReader;->readBsonType()Lorg/bson/BsonType;

    move-result-object v0

    sget-object v1, Lorg/bson/BsonType;->END_OF_DOCUMENT:Lorg/bson/BsonType;

    if-eq v0, v1, :cond_53

    .line 14
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->skipName()V

    .line 15
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->skipValue()V

    goto :goto_44

    .line 16
    :cond_53
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->readEndDocument()V

    goto :goto_9f

    .line 17
    :pswitch_57
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->readJavaScript()Ljava/lang/String;

    goto :goto_9f

    .line 18
    :pswitch_5b
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->readDecimal128()Lorg/bson/types/Decimal128;

    goto :goto_9f

    .line 19
    :pswitch_5f
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->readInt64()J

    goto :goto_9f

    .line 20
    :pswitch_63
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->readInt32()I

    goto :goto_9f

    .line 21
    :pswitch_67
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->readDouble()D

    goto :goto_9f

    .line 22
    :pswitch_6b
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->readStartDocument()V

    .line 23
    :goto_6e
    invoke-virtual {p0}, Lorg/bson/json/JsonReader;->readBsonType()Lorg/bson/BsonType;

    move-result-object v0

    sget-object v1, Lorg/bson/BsonType;->END_OF_DOCUMENT:Lorg/bson/BsonType;

    if-eq v0, v1, :cond_7d

    .line 24
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->skipName()V

    .line 25
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->skipValue()V

    goto :goto_6e

    .line 26
    :cond_7d
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->readEndDocument()V

    goto :goto_9f

    .line 27
    :pswitch_81
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->readDateTime()J

    goto :goto_9f

    .line 28
    :pswitch_85
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->readBoolean()Z

    goto :goto_9f

    .line 29
    :pswitch_89
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->readBinaryData()Lorg/bson/BsonBinary;

    goto :goto_9f

    .line 30
    :pswitch_8d
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->readStartArray()V

    .line 31
    :goto_90
    invoke-virtual {p0}, Lorg/bson/json/JsonReader;->readBsonType()Lorg/bson/BsonType;

    move-result-object v0

    sget-object v1, Lorg/bson/BsonType;->END_OF_DOCUMENT:Lorg/bson/BsonType;

    if-eq v0, v1, :cond_9c

    .line 32
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->skipValue()V

    goto :goto_90

    .line 33
    :cond_9c
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->readEndArray()V

    :goto_9f
    return-void

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_8d
        :pswitch_89
        :pswitch_85
        :pswitch_81
        :pswitch_6b
        :pswitch_67
        :pswitch_63
        :pswitch_5f
        :pswitch_5b
        :pswitch_57
        :pswitch_3e
        :pswitch_39
        :pswitch_34
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
    .end packed-switch
.end method

.method public final bridge synthetic getContext()Lorg/bson/AbstractBsonReader$Context;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/bson/json/JsonReader;->getContext()Lorg/bson/json/JsonReader$Context;

    move-result-object v0

    return-object v0
.end method

.method public final getContext()Lorg/bson/json/JsonReader$Context;
    .registers 2

    .line 2
    invoke-super {p0}, Lorg/bson/AbstractBsonReader;->getContext()Lorg/bson/AbstractBsonReader$Context;

    move-result-object v0

    check-cast v0, Lorg/bson/json/JsonReader$Context;

    return-object v0
.end method

.method public getMark()Lorg/bson/BsonReaderMark;
    .registers 2

    new-instance v0, Lorg/bson/json/JsonReader$Mark;

    invoke-direct {v0, p0}, Lorg/bson/json/JsonReader$Mark;-><init>(Lorg/bson/json/JsonReader;)V

    return-object v0
.end method

.method public mark()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bson/json/JsonReader;->mark:Lorg/bson/json/JsonReader$Mark;

    if-nez v0, :cond_c

    .line 2
    new-instance v0, Lorg/bson/json/JsonReader$Mark;

    invoke-direct {v0, p0}, Lorg/bson/json/JsonReader$Mark;-><init>(Lorg/bson/json/JsonReader;)V

    iput-object v0, p0, Lorg/bson/json/JsonReader;->mark:Lorg/bson/json/JsonReader$Mark;

    return-void

    .line 3
    :cond_c
    new-instance v0, Lorg/bson/BSONException;

    const-string v1, "A mark already exists; it needs to be reset before creating a new one"

    invoke-direct {v0, v1}, Lorg/bson/BSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readBsonType()Lorg/bson/BsonType;
    .registers 11

    .line 1
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->isClosed()Z

    move-result v1

    if-nez v1, :cond_370

    .line 2
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getState()Lorg/bson/AbstractBsonReader$State;

    move-result-object v1

    sget-object v2, Lorg/bson/AbstractBsonReader$State;->INITIAL:Lorg/bson/AbstractBsonReader$State;

    if-eq v1, v2, :cond_20

    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getState()Lorg/bson/AbstractBsonReader$State;

    move-result-object v1

    sget-object v2, Lorg/bson/AbstractBsonReader$State;->DONE:Lorg/bson/AbstractBsonReader$State;

    if-eq v1, v2, :cond_20

    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getState()Lorg/bson/AbstractBsonReader$State;

    move-result-object v1

    sget-object v2, Lorg/bson/AbstractBsonReader$State;->SCOPE_DOCUMENT:Lorg/bson/AbstractBsonReader$State;

    if-ne v1, v2, :cond_25

    .line 3
    :cond_20
    sget-object v1, Lorg/bson/AbstractBsonReader$State;->TYPE:Lorg/bson/AbstractBsonReader$State;

    invoke-virtual {p0, v1}, Lorg/bson/AbstractBsonReader;->setState(Lorg/bson/AbstractBsonReader$State;)V

    .line 4
    :cond_25
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getState()Lorg/bson/AbstractBsonReader$State;

    move-result-object v1

    sget-object v2, Lorg/bson/AbstractBsonReader$State;->TYPE:Lorg/bson/AbstractBsonReader$State;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_365

    .line 5
    invoke-virtual {p0}, Lorg/bson/json/JsonReader;->getContext()Lorg/bson/json/JsonReader$Context;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bson/json/JsonReader$Context;->getContextType()Lorg/bson/BsonContextType;

    move-result-object v1

    sget-object v2, Lorg/bson/BsonContextType;->DOCUMENT:Lorg/bson/BsonContextType;

    const/4 v5, 0x3

    if-ne v1, v2, :cond_91

    .line 6
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->popToken()Lorg/bson/json/JsonToken;

    move-result-object v1

    .line 7
    sget-object v6, Lorg/bson/json/JsonReader$1;->$SwitchMap$org$bson$json$JsonTokenType:[I

    invoke-virtual {v1}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    if-eq v6, v4, :cond_6b

    const/4 v7, 0x2

    if-eq v6, v7, :cond_6b

    if-ne v6, v5, :cond_5b

    .line 8
    sget-object v0, Lorg/bson/AbstractBsonReader$State;->END_OF_DOCUMENT:Lorg/bson/AbstractBsonReader$State;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setState(Lorg/bson/AbstractBsonReader$State;)V

    .line 9
    sget-object v0, Lorg/bson/BsonType;->END_OF_DOCUMENT:Lorg/bson/BsonType;

    return-object v0

    .line 10
    :cond_5b
    new-instance v0, Lorg/bson/json/JsonParseException;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/bson/json/JsonToken;->getValue()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "JSON reader was expecting a name but found \'%s\'."

    invoke-direct {v0, v1, v2}, Lorg/bson/json/JsonParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 11
    :cond_6b
    invoke-virtual {v1, v0}, Lorg/bson/json/JsonToken;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/bson/AbstractBsonReader;->setCurrentName(Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->popToken()Lorg/bson/json/JsonToken;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v6

    sget-object v7, Lorg/bson/json/JsonTokenType;->COLON:Lorg/bson/json/JsonTokenType;

    if-ne v6, v7, :cond_81

    goto :goto_91

    .line 14
    :cond_81
    new-instance v0, Lorg/bson/json/JsonParseException;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/bson/json/JsonToken;->getValue()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "JSON reader was expecting \':\' but found \'%s\'."

    invoke-direct {v0, v1, v2}, Lorg/bson/json/JsonParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 15
    :cond_91
    :goto_91
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->popToken()Lorg/bson/json/JsonToken;

    move-result-object v1

    .line 16
    invoke-virtual {p0}, Lorg/bson/json/JsonReader;->getContext()Lorg/bson/json/JsonReader$Context;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bson/json/JsonReader$Context;->getContextType()Lorg/bson/BsonContextType;

    move-result-object v6

    sget-object v7, Lorg/bson/BsonContextType;->ARRAY:Lorg/bson/BsonContextType;

    if-ne v6, v7, :cond_b1

    invoke-virtual {v1}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v6

    sget-object v8, Lorg/bson/json/JsonTokenType;->END_ARRAY:Lorg/bson/json/JsonTokenType;

    if-ne v6, v8, :cond_b1

    .line 17
    sget-object v0, Lorg/bson/AbstractBsonReader$State;->END_OF_ARRAY:Lorg/bson/AbstractBsonReader$State;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setState(Lorg/bson/AbstractBsonReader$State;)V

    .line 18
    sget-object v0, Lorg/bson/BsonType;->END_OF_DOCUMENT:Lorg/bson/BsonType;

    return-object v0

    .line 19
    :cond_b1
    sget-object v6, Lorg/bson/json/JsonReader$1;->$SwitchMap$org$bson$json$JsonTokenType:[I

    invoke-virtual {v1}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v6, v6, v8

    packed-switch v6, :pswitch_data_378

    :cond_c0
    :pswitch_c0
    const/4 v0, 0x1

    goto/16 :goto_308

    .line 20
    :pswitch_c3
    sget-object v0, Lorg/bson/BsonType;->REGULAR_EXPRESSION:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    .line 21
    invoke-virtual {v1}, Lorg/bson/json/JsonToken;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    goto/16 :goto_307

    .line 22
    :pswitch_d0
    sget-object v0, Lorg/bson/BsonType;->INT64:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    .line 23
    invoke-virtual {v1}, Lorg/bson/json/JsonToken;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    goto/16 :goto_307

    .line 24
    :pswitch_dd
    sget-object v0, Lorg/bson/BsonType;->INT32:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    .line 25
    invoke-virtual {v1}, Lorg/bson/json/JsonToken;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    goto/16 :goto_307

    .line 26
    :pswitch_ea
    sget-object v0, Lorg/bson/BsonType;->END_OF_DOCUMENT:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    goto/16 :goto_307

    .line 27
    :pswitch_f1
    sget-object v0, Lorg/bson/BsonType;->DOUBLE:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    .line 28
    invoke-virtual {v1}, Lorg/bson/json/JsonToken;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    goto/16 :goto_307

    .line 29
    :pswitch_fe
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->visitExtendedJSON()V

    goto/16 :goto_307

    .line 30
    :pswitch_103
    sget-object v0, Lorg/bson/BsonType;->ARRAY:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    goto/16 :goto_307

    .line 31
    :pswitch_10a
    invoke-virtual {v1, v0}, Lorg/bson/json/JsonToken;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v6, "false"

    .line 32
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2ec

    const-string v6, "true"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_122

    goto/16 :goto_2ec

    :cond_122
    const-string v6, "Infinity"

    .line 33
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_139

    .line 34
    sget-object v0, Lorg/bson/BsonType;->DOUBLE:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 35
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    goto/16 :goto_307

    :cond_139
    const-string v6, "NaN"

    .line 36
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_150

    .line 37
    sget-object v0, Lorg/bson/BsonType;->DOUBLE:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    .line 38
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    goto/16 :goto_307

    :cond_150
    const-string v6, "null"

    .line 39
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15f

    .line 40
    sget-object v0, Lorg/bson/BsonType;->NULL:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    goto/16 :goto_307

    :cond_15f
    const-string v6, "undefined"

    .line 41
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16e

    .line 42
    sget-object v0, Lorg/bson/BsonType;->UNDEFINED:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    goto/16 :goto_307

    :cond_16e
    const-string v6, "MinKey"

    .line 43
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_187

    .line 44
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->visitEmptyConstructor()V

    .line 45
    sget-object v0, Lorg/bson/BsonType;->MIN_KEY:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    .line 46
    new-instance v0, Lorg/bson/types/MinKey;

    invoke-direct {v0}, Lorg/bson/types/MinKey;-><init>()V

    iput-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    goto/16 :goto_307

    :cond_187
    const-string v6, "MaxKey"

    .line 47
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a0

    .line 48
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->visitEmptyConstructor()V

    .line 49
    sget-object v0, Lorg/bson/BsonType;->MAX_KEY:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    .line 50
    new-instance v0, Lorg/bson/types/MaxKey;

    invoke-direct {v0}, Lorg/bson/types/MaxKey;-><init>()V

    iput-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    goto/16 :goto_307

    :cond_1a0
    const-string v6, "BinData"

    .line 51
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b5

    .line 52
    sget-object v0, Lorg/bson/BsonType;->BINARY:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    .line 53
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->visitBinDataConstructor()Lorg/bson/BsonBinary;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    goto/16 :goto_307

    :cond_1b5
    const-string v6, "Date"

    .line 54
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ca

    .line 55
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->visitDateTimeConstructorWithOutNew()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    .line 56
    sget-object v0, Lorg/bson/BsonType;->STRING:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    goto/16 :goto_307

    :cond_1ca
    const-string v6, "HexData"

    .line 57
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1df

    .line 58
    sget-object v0, Lorg/bson/BsonType;->BINARY:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    .line 59
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->visitHexDataConstructor()Lorg/bson/BsonBinary;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    goto/16 :goto_307

    :cond_1df
    const-string v6, "ISODate"

    .line 60
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f8

    .line 61
    sget-object v0, Lorg/bson/BsonType;->DATE_TIME:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    .line 62
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->visitISODateTimeConstructor()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    goto/16 :goto_307

    :cond_1f8
    const-string v6, "NumberInt"

    .line 63
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_211

    .line 64
    sget-object v0, Lorg/bson/BsonType;->INT32:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    .line 65
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->visitNumberIntConstructor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    goto/16 :goto_307

    :cond_211
    const-string v6, "NumberLong"

    .line 66
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22a

    .line 67
    sget-object v0, Lorg/bson/BsonType;->INT64:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    .line 68
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->visitNumberLongConstructor()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    goto/16 :goto_307

    :cond_22a
    const-string v6, "NumberDecimal"

    .line 69
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23f

    .line 70
    sget-object v0, Lorg/bson/BsonType;->DECIMAL128:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    .line 71
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->visitNumberDecimalConstructor()Lorg/bson/types/Decimal128;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    goto/16 :goto_307

    :cond_23f
    const-string v6, "ObjectId"

    .line 72
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_254

    .line 73
    sget-object v0, Lorg/bson/BsonType;->OBJECT_ID:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    .line 74
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->visitObjectIdConstructor()Lorg/bson/types/ObjectId;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    goto/16 :goto_307

    :cond_254
    const-string v6, "Timestamp"

    .line 75
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_269

    .line 76
    sget-object v0, Lorg/bson/BsonType;->TIMESTAMP:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    .line 77
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->visitTimestampConstructor()Lorg/bson/BsonTimestamp;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    goto/16 :goto_307

    :cond_269
    const-string v6, "RegExp"

    .line 78
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27e

    .line 79
    sget-object v0, Lorg/bson/BsonType;->REGULAR_EXPRESSION:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    .line 80
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->visitRegularExpressionConstructor()Lorg/bson/BsonRegularExpression;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    goto/16 :goto_307

    :cond_27e
    const-string v6, "DBPointer"

    .line 81
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_293

    .line 82
    sget-object v0, Lorg/bson/BsonType;->DB_POINTER:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    .line 83
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->visitDBPointerConstructor()Lorg/bson/BsonDbPointer;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    goto/16 :goto_307

    :cond_293
    const-string v6, "UUID"

    .line 84
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2e0

    const-string v6, "GUID"

    .line 85
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2e0

    const-string v6, "CSUUID"

    .line 86
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2e0

    const-string v6, "CSGUID"

    .line 87
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2e0

    const-string v6, "JUUID"

    .line 88
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2e0

    const-string v6, "JGUID"

    .line 89
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2e0

    const-string v6, "PYUUID"

    .line 90
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2e0

    const-string v6, "PYGUID"

    .line 91
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d4

    goto :goto_2e0

    :cond_2d4
    const-string v6, "new"

    .line 92
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 93
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->visitNew()V

    goto :goto_307

    .line 94
    :cond_2e0
    :goto_2e0
    sget-object v6, Lorg/bson/BsonType;->BINARY:Lorg/bson/BsonType;

    invoke-virtual {p0, v6}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    .line 95
    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->visitUUIDConstructor(Ljava/lang/String;)Lorg/bson/BsonBinary;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    goto :goto_307

    .line 96
    :cond_2ec
    :goto_2ec
    sget-object v6, Lorg/bson/BsonType;->BOOLEAN:Lorg/bson/BsonType;

    invoke-virtual {p0, v6}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    .line 97
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    goto :goto_307

    .line 98
    :pswitch_2fc
    sget-object v0, Lorg/bson/BsonType;->STRING:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    .line 99
    invoke-virtual {v1}, Lorg/bson/json/JsonToken;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/JsonReader;->currentValue:Ljava/lang/Object;

    :goto_307
    const/4 v0, 0x0

    :goto_308
    if-nez v0, :cond_355

    .line 100
    invoke-virtual {p0}, Lorg/bson/json/JsonReader;->getContext()Lorg/bson/json/JsonReader$Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/json/JsonReader$Context;->getContextType()Lorg/bson/BsonContextType;

    move-result-object v0

    if-eq v0, v7, :cond_31e

    invoke-virtual {p0}, Lorg/bson/json/JsonReader;->getContext()Lorg/bson/json/JsonReader$Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/json/JsonReader$Context;->getContextType()Lorg/bson/BsonContextType;

    move-result-object v0

    if-ne v0, v2, :cond_32d

    .line 101
    :cond_31e
    invoke-direct {p0}, Lorg/bson/json/JsonReader;->popToken()Lorg/bson/json/JsonToken;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lorg/bson/json/JsonToken;->getType()Lorg/bson/json/JsonTokenType;

    move-result-object v1

    sget-object v2, Lorg/bson/json/JsonTokenType;->COMMA:Lorg/bson/json/JsonTokenType;

    if-eq v1, v2, :cond_32d

    .line 103
    invoke-direct {p0, v0}, Lorg/bson/json/JsonReader;->pushToken(Lorg/bson/json/JsonToken;)V

    .line 104
    :cond_32d
    sget-object v0, Lorg/bson/json/JsonReader$1;->$SwitchMap$org$bson$BsonContextType:[I

    invoke-virtual {p0}, Lorg/bson/json/JsonReader;->getContext()Lorg/bson/json/JsonReader$Context;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bson/json/JsonReader$Context;->getContextType()Lorg/bson/BsonContextType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v5, :cond_34b

    const/4 v1, 0x4

    if-eq v0, v1, :cond_34b

    const/4 v1, 0x5

    if-eq v0, v1, :cond_34b

    .line 105
    sget-object v0, Lorg/bson/AbstractBsonReader$State;->NAME:Lorg/bson/AbstractBsonReader$State;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setState(Lorg/bson/AbstractBsonReader$State;)V

    goto :goto_350

    .line 106
    :cond_34b
    sget-object v0, Lorg/bson/AbstractBsonReader$State;->VALUE:Lorg/bson/AbstractBsonReader$State;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setState(Lorg/bson/AbstractBsonReader$State;)V

    .line 107
    :goto_350
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getCurrentBsonType()Lorg/bson/BsonType;

    move-result-object v0

    return-object v0

    .line 108
    :cond_355
    new-instance v0, Lorg/bson/json/JsonParseException;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/bson/json/JsonToken;->getValue()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "JSON reader was expecting a value but found \'%s\'."

    invoke-direct {v0, v1, v2}, Lorg/bson/json/JsonParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_365
    new-array v0, v4, [Lorg/bson/AbstractBsonReader$State;

    aput-object v2, v0, v3

    const-string v1, "readBSONType"

    .line 109
    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonReader;->throwInvalidState(Ljava/lang/String;[Lorg/bson/AbstractBsonReader$State;)V

    const/4 v0, 0x0

    throw v0

    .line 110
    :cond_370
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This instance has been closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_378
    .packed-switch 0x1
        :pswitch_2fc
        :pswitch_10a
        :pswitch_c0
        :pswitch_103
        :pswitch_fe
        :pswitch_f1
        :pswitch_ea
        :pswitch_dd
        :pswitch_d0
        :pswitch_c3
    .end packed-switch
.end method

.method public reset()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bson/json/JsonReader;->mark:Lorg/bson/json/JsonReader$Mark;

    if-eqz v0, :cond_b

    .line 2
    invoke-virtual {v0}, Lorg/bson/json/JsonReader$Mark;->reset()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/bson/json/JsonReader;->mark:Lorg/bson/json/JsonReader$Mark;

    return-void

    .line 4
    :cond_b
    new-instance v0, Lorg/bson/BSONException;

    const-string v1, "trying to reset a mark before creating it"

    invoke-direct {v0, v1}, Lorg/bson/BSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
