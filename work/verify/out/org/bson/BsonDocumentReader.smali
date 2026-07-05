.class public Lorg/bson/BsonDocumentReader;
.super Lorg/bson/AbstractBsonReader;
.source "BsonDocumentReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bson/BsonDocumentReader$Context;,
        Lorg/bson/BsonDocumentReader$BsonDocumentMarkableIterator;,
        Lorg/bson/BsonDocumentReader$Mark;
    }
.end annotation


# instance fields
.field private currentValue:Lorg/bson/BsonValue;

.field private mark:Lorg/bson/BsonDocumentReader$Mark;


# direct methods
.method public constructor <init>(Lorg/bson/BsonDocument;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lorg/bson/AbstractBsonReader;-><init>()V

    .line 2
    new-instance v0, Lorg/bson/BsonDocumentReader$Context;

    sget-object v1, Lorg/bson/BsonContextType;->TOP_LEVEL:Lorg/bson/BsonContextType;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1, p1}, Lorg/bson/BsonDocumentReader$Context;-><init>(Lorg/bson/BsonDocumentReader;Lorg/bson/BsonDocumentReader$Context;Lorg/bson/BsonContextType;Lorg/bson/BsonDocument;)V

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setContext(Lorg/bson/AbstractBsonReader$Context;)V

    .line 3
    iput-object p1, p0, Lorg/bson/BsonDocumentReader;->currentValue:Lorg/bson/BsonValue;

    return-void
.end method

.method public static synthetic access$000(Lorg/bson/BsonDocumentReader;)Lorg/bson/BsonValue;
    .registers 1

    iget-object p0, p0, Lorg/bson/BsonDocumentReader;->currentValue:Lorg/bson/BsonValue;

    return-object p0
.end method

.method public static synthetic access$002(Lorg/bson/BsonDocumentReader;Lorg/bson/BsonValue;)Lorg/bson/BsonValue;
    .registers 2

    iput-object p1, p0, Lorg/bson/BsonDocumentReader;->currentValue:Lorg/bson/BsonValue;

    return-object p1
.end method


# virtual methods
.method public final doPeekBinarySize()I
    .registers 2

    iget-object v0, p0, Lorg/bson/BsonDocumentReader;->currentValue:Lorg/bson/BsonValue;

    invoke-virtual {v0}, Lorg/bson/BsonValue;->asBinary()Lorg/bson/BsonBinary;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/BsonBinary;->getData()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public final doPeekBinarySubType()B
    .registers 2

    iget-object v0, p0, Lorg/bson/BsonDocumentReader;->currentValue:Lorg/bson/BsonValue;

    invoke-virtual {v0}, Lorg/bson/BsonValue;->asBinary()Lorg/bson/BsonBinary;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/BsonBinary;->getType()B

    move-result v0

    return v0
.end method

.method public final doReadBinaryData()Lorg/bson/BsonBinary;
    .registers 2

    iget-object v0, p0, Lorg/bson/BsonDocumentReader;->currentValue:Lorg/bson/BsonValue;

    invoke-virtual {v0}, Lorg/bson/BsonValue;->asBinary()Lorg/bson/BsonBinary;

    move-result-object v0

    return-object v0
.end method

.method public final doReadBoolean()Z
    .registers 2

    iget-object v0, p0, Lorg/bson/BsonDocumentReader;->currentValue:Lorg/bson/BsonValue;

    invoke-virtual {v0}, Lorg/bson/BsonValue;->asBoolean()Lorg/bson/BsonBoolean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/BsonBoolean;->getValue()Z

    move-result v0

    return v0
.end method

.method public final doReadDBPointer()Lorg/bson/BsonDbPointer;
    .registers 2

    iget-object v0, p0, Lorg/bson/BsonDocumentReader;->currentValue:Lorg/bson/BsonValue;

    invoke-virtual {v0}, Lorg/bson/BsonValue;->asDBPointer()Lorg/bson/BsonDbPointer;

    move-result-object v0

    return-object v0
.end method

.method public final doReadDateTime()J
    .registers 3

    iget-object v0, p0, Lorg/bson/BsonDocumentReader;->currentValue:Lorg/bson/BsonValue;

    invoke-virtual {v0}, Lorg/bson/BsonValue;->asDateTime()Lorg/bson/BsonDateTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/BsonDateTime;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public doReadDecimal128()Lorg/bson/types/Decimal128;
    .registers 2

    iget-object v0, p0, Lorg/bson/BsonDocumentReader;->currentValue:Lorg/bson/BsonValue;

    invoke-virtual {v0}, Lorg/bson/BsonValue;->asDecimal128()Lorg/bson/BsonDecimal128;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/BsonDecimal128;->getValue()Lorg/bson/types/Decimal128;

    move-result-object v0

    return-object v0
.end method

.method public final doReadDouble()D
    .registers 3

    iget-object v0, p0, Lorg/bson/BsonDocumentReader;->currentValue:Lorg/bson/BsonValue;

    invoke-virtual {v0}, Lorg/bson/BsonValue;->asDouble()Lorg/bson/BsonDouble;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/BsonDouble;->getValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final doReadEndArray()V
    .registers 2

    invoke-virtual {p0}, Lorg/bson/BsonDocumentReader;->getContext()Lorg/bson/BsonDocumentReader$Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/AbstractBsonReader$Context;->getParentContext()Lorg/bson/AbstractBsonReader$Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setContext(Lorg/bson/AbstractBsonReader$Context;)V

    return-void
.end method

.method public final doReadEndDocument()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/bson/BsonDocumentReader;->getContext()Lorg/bson/BsonDocumentReader$Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/AbstractBsonReader$Context;->getParentContext()Lorg/bson/AbstractBsonReader$Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setContext(Lorg/bson/AbstractBsonReader$Context;)V

    .line 2
    sget-object v0, Lorg/bson/BsonDocumentReader$1;->$SwitchMap$org$bson$BsonContextType:[I

    invoke-virtual {p0}, Lorg/bson/BsonDocumentReader;->getContext()Lorg/bson/BsonDocumentReader$Context;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bson/AbstractBsonReader$Context;->getContextType()Lorg/bson/BsonContextType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_32

    const/4 v1, 0x2

    if-eq v0, v1, :cond_32

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2a

    .line 3
    sget-object v0, Lorg/bson/AbstractBsonReader$State;->DONE:Lorg/bson/AbstractBsonReader$State;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setState(Lorg/bson/AbstractBsonReader$State;)V

    goto :goto_37

    .line 4
    :cond_2a
    new-instance v0, Lorg/bson/BSONException;

    const-string v1, "Unexpected ContextType."

    invoke-direct {v0, v1}, Lorg/bson/BSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_32
    sget-object v0, Lorg/bson/AbstractBsonReader$State;->TYPE:Lorg/bson/AbstractBsonReader$State;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setState(Lorg/bson/AbstractBsonReader$State;)V

    :goto_37
    return-void
.end method

.method public final doReadInt32()I
    .registers 2

    iget-object v0, p0, Lorg/bson/BsonDocumentReader;->currentValue:Lorg/bson/BsonValue;

    invoke-virtual {v0}, Lorg/bson/BsonValue;->asInt32()Lorg/bson/BsonInt32;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/BsonInt32;->getValue()I

    move-result v0

    return v0
.end method

.method public final doReadInt64()J
    .registers 3

    iget-object v0, p0, Lorg/bson/BsonDocumentReader;->currentValue:Lorg/bson/BsonValue;

    invoke-virtual {v0}, Lorg/bson/BsonValue;->asInt64()Lorg/bson/BsonInt64;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/BsonInt64;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final doReadJavaScript()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bson/BsonDocumentReader;->currentValue:Lorg/bson/BsonValue;

    invoke-virtual {v0}, Lorg/bson/BsonValue;->asJavaScript()Lorg/bson/BsonJavaScript;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/BsonJavaScript;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final doReadJavaScriptWithScope()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bson/BsonDocumentReader;->currentValue:Lorg/bson/BsonValue;

    invoke-virtual {v0}, Lorg/bson/BsonValue;->asJavaScriptWithScope()Lorg/bson/BsonJavaScriptWithScope;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/BsonJavaScriptWithScope;->getCode()Ljava/lang/String;

    move-result-object v0

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

    iget-object v0, p0, Lorg/bson/BsonDocumentReader;->currentValue:Lorg/bson/BsonValue;

    invoke-virtual {v0}, Lorg/bson/BsonValue;->asObjectId()Lorg/bson/BsonObjectId;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/BsonObjectId;->getValue()Lorg/bson/types/ObjectId;

    move-result-object v0

    return-object v0
.end method

.method public final doReadRegularExpression()Lorg/bson/BsonRegularExpression;
    .registers 2

    iget-object v0, p0, Lorg/bson/BsonDocumentReader;->currentValue:Lorg/bson/BsonValue;

    invoke-virtual {v0}, Lorg/bson/BsonValue;->asRegularExpression()Lorg/bson/BsonRegularExpression;

    move-result-object v0

    return-object v0
.end method

.method public final doReadStartArray()V
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/bson/BsonDocumentReader;->currentValue:Lorg/bson/BsonValue;

    invoke-virtual {v0}, Lorg/bson/BsonValue;->asArray()Lorg/bson/BsonArray;

    move-result-object v0

    .line 2
    new-instance v1, Lorg/bson/BsonDocumentReader$Context;

    invoke-virtual {p0}, Lorg/bson/BsonDocumentReader;->getContext()Lorg/bson/BsonDocumentReader$Context;

    move-result-object v2

    sget-object v3, Lorg/bson/BsonContextType;->ARRAY:Lorg/bson/BsonContextType;

    invoke-direct {v1, p0, v2, v3, v0}, Lorg/bson/BsonDocumentReader$Context;-><init>(Lorg/bson/BsonDocumentReader;Lorg/bson/BsonDocumentReader$Context;Lorg/bson/BsonContextType;Lorg/bson/BsonArray;)V

    invoke-virtual {p0, v1}, Lorg/bson/AbstractBsonReader;->setContext(Lorg/bson/AbstractBsonReader$Context;)V

    return-void
.end method

.method public final doReadStartDocument()V
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/bson/BsonDocumentReader;->currentValue:Lorg/bson/BsonValue;

    invoke-virtual {v0}, Lorg/bson/BsonValue;->getBsonType()Lorg/bson/BsonType;

    move-result-object v0

    sget-object v1, Lorg/bson/BsonType;->JAVASCRIPT_WITH_SCOPE:Lorg/bson/BsonType;

    if-ne v0, v1, :cond_15

    .line 2
    iget-object v0, p0, Lorg/bson/BsonDocumentReader;->currentValue:Lorg/bson/BsonValue;

    invoke-virtual {v0}, Lorg/bson/BsonValue;->asJavaScriptWithScope()Lorg/bson/BsonJavaScriptWithScope;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/BsonJavaScriptWithScope;->getScope()Lorg/bson/BsonDocument;

    move-result-object v0

    goto :goto_1b

    .line 3
    :cond_15
    iget-object v0, p0, Lorg/bson/BsonDocumentReader;->currentValue:Lorg/bson/BsonValue;

    invoke-virtual {v0}, Lorg/bson/BsonValue;->asDocument()Lorg/bson/BsonDocument;

    move-result-object v0

    .line 4
    :goto_1b
    new-instance v1, Lorg/bson/BsonDocumentReader$Context;

    invoke-virtual {p0}, Lorg/bson/BsonDocumentReader;->getContext()Lorg/bson/BsonDocumentReader$Context;

    move-result-object v2

    sget-object v3, Lorg/bson/BsonContextType;->DOCUMENT:Lorg/bson/BsonContextType;

    invoke-direct {v1, p0, v2, v3, v0}, Lorg/bson/BsonDocumentReader$Context;-><init>(Lorg/bson/BsonDocumentReader;Lorg/bson/BsonDocumentReader$Context;Lorg/bson/BsonContextType;Lorg/bson/BsonDocument;)V

    invoke-virtual {p0, v1}, Lorg/bson/AbstractBsonReader;->setContext(Lorg/bson/AbstractBsonReader$Context;)V

    return-void
.end method

.method public final doReadString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bson/BsonDocumentReader;->currentValue:Lorg/bson/BsonValue;

    invoke-virtual {v0}, Lorg/bson/BsonValue;->asString()Lorg/bson/BsonString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/BsonString;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final doReadSymbol()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bson/BsonDocumentReader;->currentValue:Lorg/bson/BsonValue;

    invoke-virtual {v0}, Lorg/bson/BsonValue;->asSymbol()Lorg/bson/BsonSymbol;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/BsonSymbol;->getSymbol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final doReadTimestamp()Lorg/bson/BsonTimestamp;
    .registers 2

    iget-object v0, p0, Lorg/bson/BsonDocumentReader;->currentValue:Lorg/bson/BsonValue;

    invoke-virtual {v0}, Lorg/bson/BsonValue;->asTimestamp()Lorg/bson/BsonTimestamp;

    move-result-object v0

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
    .registers 1

    return-void
.end method

.method public final bridge synthetic getContext()Lorg/bson/AbstractBsonReader$Context;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/bson/BsonDocumentReader;->getContext()Lorg/bson/BsonDocumentReader$Context;

    move-result-object v0

    return-object v0
.end method

.method public final getContext()Lorg/bson/BsonDocumentReader$Context;
    .registers 2

    .line 2
    invoke-super {p0}, Lorg/bson/AbstractBsonReader;->getContext()Lorg/bson/AbstractBsonReader$Context;

    move-result-object v0

    check-cast v0, Lorg/bson/BsonDocumentReader$Context;

    return-object v0
.end method

.method public getMark()Lorg/bson/BsonReaderMark;
    .registers 2

    new-instance v0, Lorg/bson/BsonDocumentReader$Mark;

    invoke-direct {v0, p0}, Lorg/bson/BsonDocumentReader$Mark;-><init>(Lorg/bson/BsonDocumentReader;)V

    return-object v0
.end method

.method public mark()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bson/BsonDocumentReader;->mark:Lorg/bson/BsonDocumentReader$Mark;

    if-nez v0, :cond_c

    .line 2
    new-instance v0, Lorg/bson/BsonDocumentReader$Mark;

    invoke-direct {v0, p0}, Lorg/bson/BsonDocumentReader$Mark;-><init>(Lorg/bson/BsonDocumentReader;)V

    iput-object v0, p0, Lorg/bson/BsonDocumentReader;->mark:Lorg/bson/BsonDocumentReader$Mark;

    return-void

    .line 3
    :cond_c
    new-instance v0, Lorg/bson/BSONException;

    const-string v1, "A mark already exists; it needs to be reset before creating a new one"

    invoke-direct {v0, v1}, Lorg/bson/BSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readBsonType()Lorg/bson/BsonType;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getState()Lorg/bson/AbstractBsonReader$State;

    move-result-object v0

    sget-object v1, Lorg/bson/AbstractBsonReader$State;->INITIAL:Lorg/bson/AbstractBsonReader$State;

    if-eq v0, v1, :cond_94

    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getState()Lorg/bson/AbstractBsonReader$State;

    move-result-object v0

    sget-object v1, Lorg/bson/AbstractBsonReader$State;->SCOPE_DOCUMENT:Lorg/bson/AbstractBsonReader$State;

    if-ne v0, v1, :cond_12

    goto/16 :goto_94

    .line 2
    :cond_12
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getState()Lorg/bson/AbstractBsonReader$State;

    move-result-object v0

    sget-object v1, Lorg/bson/AbstractBsonReader$State;->TYPE:Lorg/bson/AbstractBsonReader$State;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_88

    .line 3
    sget-object v0, Lorg/bson/BsonDocumentReader$1;->$SwitchMap$org$bson$BsonContextType:[I

    invoke-virtual {p0}, Lorg/bson/BsonDocumentReader;->getContext()Lorg/bson/BsonDocumentReader$Context;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bson/AbstractBsonReader$Context;->getContextType()Lorg/bson/BsonContextType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v2, :cond_61

    const/4 v1, 0x2

    if-ne v0, v1, :cond_59

    .line 4
    invoke-virtual {p0}, Lorg/bson/BsonDocumentReader;->getContext()Lorg/bson/BsonDocumentReader$Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/BsonDocumentReader$Context;->getNextElement()Ljava/util/Map$Entry;

    move-result-object v0

    if-nez v0, :cond_42

    .line 5
    sget-object v0, Lorg/bson/AbstractBsonReader$State;->END_OF_DOCUMENT:Lorg/bson/AbstractBsonReader$State;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setState(Lorg/bson/AbstractBsonReader$State;)V

    .line 6
    sget-object v0, Lorg/bson/BsonType;->END_OF_DOCUMENT:Lorg/bson/BsonType;

    return-object v0

    .line 7
    :cond_42
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/bson/AbstractBsonReader;->setCurrentName(Ljava/lang/String;)V

    .line 8
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bson/BsonValue;

    iput-object v0, p0, Lorg/bson/BsonDocumentReader;->currentValue:Lorg/bson/BsonValue;

    .line 9
    sget-object v0, Lorg/bson/AbstractBsonReader$State;->NAME:Lorg/bson/AbstractBsonReader$State;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setState(Lorg/bson/AbstractBsonReader$State;)V

    goto :goto_7a

    .line 10
    :cond_59
    new-instance v0, Lorg/bson/BSONException;

    const-string v1, "Invalid ContextType."

    invoke-direct {v0, v1}, Lorg/bson/BSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_61
    invoke-virtual {p0}, Lorg/bson/BsonDocumentReader;->getContext()Lorg/bson/BsonDocumentReader$Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/BsonDocumentReader$Context;->getNextValue()Lorg/bson/BsonValue;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/BsonDocumentReader;->currentValue:Lorg/bson/BsonValue;

    if-nez v0, :cond_75

    .line 12
    sget-object v0, Lorg/bson/AbstractBsonReader$State;->END_OF_ARRAY:Lorg/bson/AbstractBsonReader$State;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setState(Lorg/bson/AbstractBsonReader$State;)V

    .line 13
    sget-object v0, Lorg/bson/BsonType;->END_OF_DOCUMENT:Lorg/bson/BsonType;

    return-object v0

    .line 14
    :cond_75
    sget-object v0, Lorg/bson/AbstractBsonReader$State;->VALUE:Lorg/bson/AbstractBsonReader$State;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setState(Lorg/bson/AbstractBsonReader$State;)V

    .line 15
    :goto_7a
    iget-object v0, p0, Lorg/bson/BsonDocumentReader;->currentValue:Lorg/bson/BsonValue;

    invoke-virtual {v0}, Lorg/bson/BsonValue;->getBsonType()Lorg/bson/BsonType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    .line 16
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getCurrentBsonType()Lorg/bson/BsonType;

    move-result-object v0

    return-object v0

    :cond_88
    new-array v0, v2, [Lorg/bson/AbstractBsonReader$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "ReadBSONType"

    .line 17
    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonReader;->throwInvalidState(Ljava/lang/String;[Lorg/bson/AbstractBsonReader$State;)V

    const/4 v0, 0x0

    throw v0

    .line 18
    :cond_94
    :goto_94
    sget-object v0, Lorg/bson/BsonType;->DOCUMENT:Lorg/bson/BsonType;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setCurrentBsonType(Lorg/bson/BsonType;)V

    .line 19
    sget-object v0, Lorg/bson/AbstractBsonReader$State;->VALUE:Lorg/bson/AbstractBsonReader$State;

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonReader;->setState(Lorg/bson/AbstractBsonReader$State;)V

    .line 20
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getCurrentBsonType()Lorg/bson/BsonType;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bson/BsonDocumentReader;->mark:Lorg/bson/BsonDocumentReader$Mark;

    if-eqz v0, :cond_b

    .line 2
    invoke-virtual {v0}, Lorg/bson/BsonDocumentReader$Mark;->reset()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/bson/BsonDocumentReader;->mark:Lorg/bson/BsonDocumentReader$Mark;

    return-void

    .line 4
    :cond_b
    new-instance v0, Lorg/bson/BSONException;

    const-string v1, "trying to reset a mark before creating it"

    invoke-direct {v0, v1}, Lorg/bson/BSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
