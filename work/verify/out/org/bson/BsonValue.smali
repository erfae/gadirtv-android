.class public abstract Lorg/bson/BsonValue;
.super Ljava/lang/Object;
.source "BsonValue.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private throwIfInvalidType(Lorg/bson/BsonType;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lorg/bson/BsonValue;->getBsonType()Lorg/bson/BsonType;

    move-result-object v0

    if-ne v0, p1, :cond_7

    return-void

    .line 2
    :cond_7
    new-instance v0, Lorg/bson/BsonInvalidOperationException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0}, Lorg/bson/BsonValue;->getBsonType()Lorg/bson/BsonType;

    move-result-object v2

    aput-object v2, v1, p1

    const-string p1, "Value expected to be of type %s is of unexpected type %s"

    .line 4
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bson/BsonInvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asArray()Lorg/bson/BsonArray;
    .registers 2

    .line 1
    sget-object v0, Lorg/bson/BsonType;->ARRAY:Lorg/bson/BsonType;

    invoke-direct {p0, v0}, Lorg/bson/BsonValue;->throwIfInvalidType(Lorg/bson/BsonType;)V

    .line 2
    move-object v0, p0

    check-cast v0, Lorg/bson/BsonArray;

    return-object v0
.end method

.method public asBinary()Lorg/bson/BsonBinary;
    .registers 2

    .line 1
    sget-object v0, Lorg/bson/BsonType;->BINARY:Lorg/bson/BsonType;

    invoke-direct {p0, v0}, Lorg/bson/BsonValue;->throwIfInvalidType(Lorg/bson/BsonType;)V

    .line 2
    move-object v0, p0

    check-cast v0, Lorg/bson/BsonBinary;

    return-object v0
.end method

.method public asBoolean()Lorg/bson/BsonBoolean;
    .registers 2

    .line 1
    sget-object v0, Lorg/bson/BsonType;->BOOLEAN:Lorg/bson/BsonType;

    invoke-direct {p0, v0}, Lorg/bson/BsonValue;->throwIfInvalidType(Lorg/bson/BsonType;)V

    .line 2
    move-object v0, p0

    check-cast v0, Lorg/bson/BsonBoolean;

    return-object v0
.end method

.method public asDBPointer()Lorg/bson/BsonDbPointer;
    .registers 2

    .line 1
    sget-object v0, Lorg/bson/BsonType;->DB_POINTER:Lorg/bson/BsonType;

    invoke-direct {p0, v0}, Lorg/bson/BsonValue;->throwIfInvalidType(Lorg/bson/BsonType;)V

    .line 2
    move-object v0, p0

    check-cast v0, Lorg/bson/BsonDbPointer;

    return-object v0
.end method

.method public asDateTime()Lorg/bson/BsonDateTime;
    .registers 2

    .line 1
    sget-object v0, Lorg/bson/BsonType;->DATE_TIME:Lorg/bson/BsonType;

    invoke-direct {p0, v0}, Lorg/bson/BsonValue;->throwIfInvalidType(Lorg/bson/BsonType;)V

    .line 2
    move-object v0, p0

    check-cast v0, Lorg/bson/BsonDateTime;

    return-object v0
.end method

.method public asDecimal128()Lorg/bson/BsonDecimal128;
    .registers 2

    .line 1
    sget-object v0, Lorg/bson/BsonType;->DECIMAL128:Lorg/bson/BsonType;

    invoke-direct {p0, v0}, Lorg/bson/BsonValue;->throwIfInvalidType(Lorg/bson/BsonType;)V

    .line 2
    move-object v0, p0

    check-cast v0, Lorg/bson/BsonDecimal128;

    return-object v0
.end method

.method public asDocument()Lorg/bson/BsonDocument;
    .registers 2

    .line 1
    sget-object v0, Lorg/bson/BsonType;->DOCUMENT:Lorg/bson/BsonType;

    invoke-direct {p0, v0}, Lorg/bson/BsonValue;->throwIfInvalidType(Lorg/bson/BsonType;)V

    .line 2
    move-object v0, p0

    check-cast v0, Lorg/bson/BsonDocument;

    return-object v0
.end method

.method public asDouble()Lorg/bson/BsonDouble;
    .registers 2

    .line 1
    sget-object v0, Lorg/bson/BsonType;->DOUBLE:Lorg/bson/BsonType;

    invoke-direct {p0, v0}, Lorg/bson/BsonValue;->throwIfInvalidType(Lorg/bson/BsonType;)V

    .line 2
    move-object v0, p0

    check-cast v0, Lorg/bson/BsonDouble;

    return-object v0
.end method

.method public asInt32()Lorg/bson/BsonInt32;
    .registers 2

    .line 1
    sget-object v0, Lorg/bson/BsonType;->INT32:Lorg/bson/BsonType;

    invoke-direct {p0, v0}, Lorg/bson/BsonValue;->throwIfInvalidType(Lorg/bson/BsonType;)V

    .line 2
    move-object v0, p0

    check-cast v0, Lorg/bson/BsonInt32;

    return-object v0
.end method

.method public asInt64()Lorg/bson/BsonInt64;
    .registers 2

    .line 1
    sget-object v0, Lorg/bson/BsonType;->INT64:Lorg/bson/BsonType;

    invoke-direct {p0, v0}, Lorg/bson/BsonValue;->throwIfInvalidType(Lorg/bson/BsonType;)V

    .line 2
    move-object v0, p0

    check-cast v0, Lorg/bson/BsonInt64;

    return-object v0
.end method

.method public asJavaScript()Lorg/bson/BsonJavaScript;
    .registers 2

    .line 1
    sget-object v0, Lorg/bson/BsonType;->JAVASCRIPT:Lorg/bson/BsonType;

    invoke-direct {p0, v0}, Lorg/bson/BsonValue;->throwIfInvalidType(Lorg/bson/BsonType;)V

    .line 2
    move-object v0, p0

    check-cast v0, Lorg/bson/BsonJavaScript;

    return-object v0
.end method

.method public asJavaScriptWithScope()Lorg/bson/BsonJavaScriptWithScope;
    .registers 2

    .line 1
    sget-object v0, Lorg/bson/BsonType;->JAVASCRIPT_WITH_SCOPE:Lorg/bson/BsonType;

    invoke-direct {p0, v0}, Lorg/bson/BsonValue;->throwIfInvalidType(Lorg/bson/BsonType;)V

    .line 2
    move-object v0, p0

    check-cast v0, Lorg/bson/BsonJavaScriptWithScope;

    return-object v0
.end method

.method public asNumber()Lorg/bson/BsonNumber;
    .registers 5

    .line 1
    invoke-virtual {p0}, Lorg/bson/BsonValue;->getBsonType()Lorg/bson/BsonType;

    move-result-object v0

    sget-object v1, Lorg/bson/BsonType;->INT32:Lorg/bson/BsonType;

    if-eq v0, v1, :cond_2f

    invoke-virtual {p0}, Lorg/bson/BsonValue;->getBsonType()Lorg/bson/BsonType;

    move-result-object v0

    sget-object v1, Lorg/bson/BsonType;->INT64:Lorg/bson/BsonType;

    if-eq v0, v1, :cond_2f

    invoke-virtual {p0}, Lorg/bson/BsonValue;->getBsonType()Lorg/bson/BsonType;

    move-result-object v0

    sget-object v1, Lorg/bson/BsonType;->DOUBLE:Lorg/bson/BsonType;

    if-ne v0, v1, :cond_19

    goto :goto_2f

    .line 2
    :cond_19
    new-instance v0, Lorg/bson/BsonInvalidOperationException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0}, Lorg/bson/BsonValue;->getBsonType()Lorg/bson/BsonType;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Value expected to be of a numerical BSON type is of unexpected type %s"

    .line 4
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bson/BsonInvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_2f
    :goto_2f
    move-object v0, p0

    check-cast v0, Lorg/bson/BsonNumber;

    return-object v0
.end method

.method public asObjectId()Lorg/bson/BsonObjectId;
    .registers 2

    .line 1
    sget-object v0, Lorg/bson/BsonType;->OBJECT_ID:Lorg/bson/BsonType;

    invoke-direct {p0, v0}, Lorg/bson/BsonValue;->throwIfInvalidType(Lorg/bson/BsonType;)V

    .line 2
    move-object v0, p0

    check-cast v0, Lorg/bson/BsonObjectId;

    return-object v0
.end method

.method public asRegularExpression()Lorg/bson/BsonRegularExpression;
    .registers 2

    .line 1
    sget-object v0, Lorg/bson/BsonType;->REGULAR_EXPRESSION:Lorg/bson/BsonType;

    invoke-direct {p0, v0}, Lorg/bson/BsonValue;->throwIfInvalidType(Lorg/bson/BsonType;)V

    .line 2
    move-object v0, p0

    check-cast v0, Lorg/bson/BsonRegularExpression;

    return-object v0
.end method

.method public asString()Lorg/bson/BsonString;
    .registers 2

    .line 1
    sget-object v0, Lorg/bson/BsonType;->STRING:Lorg/bson/BsonType;

    invoke-direct {p0, v0}, Lorg/bson/BsonValue;->throwIfInvalidType(Lorg/bson/BsonType;)V

    .line 2
    move-object v0, p0

    check-cast v0, Lorg/bson/BsonString;

    return-object v0
.end method

.method public asSymbol()Lorg/bson/BsonSymbol;
    .registers 2

    .line 1
    sget-object v0, Lorg/bson/BsonType;->SYMBOL:Lorg/bson/BsonType;

    invoke-direct {p0, v0}, Lorg/bson/BsonValue;->throwIfInvalidType(Lorg/bson/BsonType;)V

    .line 2
    move-object v0, p0

    check-cast v0, Lorg/bson/BsonSymbol;

    return-object v0
.end method

.method public asTimestamp()Lorg/bson/BsonTimestamp;
    .registers 2

    .line 1
    sget-object v0, Lorg/bson/BsonType;->TIMESTAMP:Lorg/bson/BsonType;

    invoke-direct {p0, v0}, Lorg/bson/BsonValue;->throwIfInvalidType(Lorg/bson/BsonType;)V

    .line 2
    move-object v0, p0

    check-cast v0, Lorg/bson/BsonTimestamp;

    return-object v0
.end method

.method public abstract getBsonType()Lorg/bson/BsonType;
.end method

.method public isArray()Z
    .registers 2

    instance-of v0, p0, Lorg/bson/BsonArray;

    return v0
.end method

.method public isBinary()Z
    .registers 2

    instance-of v0, p0, Lorg/bson/BsonBinary;

    return v0
.end method

.method public isBoolean()Z
    .registers 2

    instance-of v0, p0, Lorg/bson/BsonBoolean;

    return v0
.end method

.method public isDBPointer()Z
    .registers 2

    instance-of v0, p0, Lorg/bson/BsonDbPointer;

    return v0
.end method

.method public isDateTime()Z
    .registers 2

    instance-of v0, p0, Lorg/bson/BsonDateTime;

    return v0
.end method

.method public isDecimal128()Z
    .registers 2

    instance-of v0, p0, Lorg/bson/BsonDecimal128;

    return v0
.end method

.method public isDocument()Z
    .registers 2

    instance-of v0, p0, Lorg/bson/BsonDocument;

    return v0
.end method

.method public isDouble()Z
    .registers 2

    instance-of v0, p0, Lorg/bson/BsonDouble;

    return v0
.end method

.method public isInt32()Z
    .registers 2

    instance-of v0, p0, Lorg/bson/BsonInt32;

    return v0
.end method

.method public isInt64()Z
    .registers 2

    instance-of v0, p0, Lorg/bson/BsonInt64;

    return v0
.end method

.method public isJavaScript()Z
    .registers 2

    instance-of v0, p0, Lorg/bson/BsonJavaScript;

    return v0
.end method

.method public isJavaScriptWithScope()Z
    .registers 2

    instance-of v0, p0, Lorg/bson/BsonJavaScriptWithScope;

    return v0
.end method

.method public isNull()Z
    .registers 2

    instance-of v0, p0, Lorg/bson/BsonNull;

    return v0
.end method

.method public isNumber()Z
    .registers 2

    invoke-virtual {p0}, Lorg/bson/BsonValue;->isInt32()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lorg/bson/BsonValue;->isInt64()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lorg/bson/BsonValue;->isDouble()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method public isObjectId()Z
    .registers 2

    instance-of v0, p0, Lorg/bson/BsonObjectId;

    return v0
.end method

.method public isRegularExpression()Z
    .registers 2

    instance-of v0, p0, Lorg/bson/BsonRegularExpression;

    return v0
.end method

.method public isString()Z
    .registers 2

    instance-of v0, p0, Lorg/bson/BsonString;

    return v0
.end method

.method public isSymbol()Z
    .registers 2

    instance-of v0, p0, Lorg/bson/BsonSymbol;

    return v0
.end method

.method public isTimestamp()Z
    .registers 2

    instance-of v0, p0, Lorg/bson/BsonTimestamp;

    return v0
.end method
