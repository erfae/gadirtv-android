.class public abstract Lorg/bson/AbstractBsonReader;
.super Ljava/lang/Object;
.source "AbstractBsonReader.java"

# interfaces
.implements Lorg/bson/BsonReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bson/AbstractBsonReader$State;,
        Lorg/bson/AbstractBsonReader$Context;,
        Lorg/bson/AbstractBsonReader$Mark;
    }
.end annotation


# instance fields
.field private closed:Z

.field private context:Lorg/bson/AbstractBsonReader$Context;

.field private currentBsonType:Lorg/bson/BsonType;

.field private currentName:Ljava/lang/String;

.field private state:Lorg/bson/AbstractBsonReader$State;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lorg/bson/AbstractBsonReader$State;->INITIAL:Lorg/bson/AbstractBsonReader$State;

    iput-object v0, p0, Lorg/bson/AbstractBsonReader;->state:Lorg/bson/AbstractBsonReader$State;

    return-void
.end method

.method public static synthetic access$000(Lorg/bson/AbstractBsonReader;)Lorg/bson/AbstractBsonReader$State;
    .registers 1

    iget-object p0, p0, Lorg/bson/AbstractBsonReader;->state:Lorg/bson/AbstractBsonReader$State;

    return-object p0
.end method

.method public static synthetic access$002(Lorg/bson/AbstractBsonReader;Lorg/bson/AbstractBsonReader$State;)Lorg/bson/AbstractBsonReader$State;
    .registers 2

    iput-object p1, p0, Lorg/bson/AbstractBsonReader;->state:Lorg/bson/AbstractBsonReader$State;

    return-object p1
.end method

.method public static synthetic access$100(Lorg/bson/AbstractBsonReader;)Lorg/bson/AbstractBsonReader$Context;
    .registers 1

    iget-object p0, p0, Lorg/bson/AbstractBsonReader;->context:Lorg/bson/AbstractBsonReader$Context;

    return-object p0
.end method

.method public static synthetic access$400(Lorg/bson/AbstractBsonReader;)Lorg/bson/BsonType;
    .registers 1

    iget-object p0, p0, Lorg/bson/AbstractBsonReader;->currentBsonType:Lorg/bson/BsonType;

    return-object p0
.end method

.method public static synthetic access$402(Lorg/bson/AbstractBsonReader;Lorg/bson/BsonType;)Lorg/bson/BsonType;
    .registers 2

    iput-object p1, p0, Lorg/bson/AbstractBsonReader;->currentBsonType:Lorg/bson/BsonType;

    return-object p1
.end method

.method public static synthetic access$500(Lorg/bson/AbstractBsonReader;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lorg/bson/AbstractBsonReader;->currentName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$502(Lorg/bson/AbstractBsonReader;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lorg/bson/AbstractBsonReader;->currentName:Ljava/lang/String;

    return-object p1
.end method

.method private setStateOnEnd()V
    .registers 5

    .line 1
    sget-object v0, Lorg/bson/AbstractBsonReader$1;->$SwitchMap$org$bson$BsonContextType:[I

    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getContext()Lorg/bson/AbstractBsonReader$Context;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bson/AbstractBsonReader$Context;->getContextType()Lorg/bson/BsonContextType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_37

    const/4 v2, 0x2

    if-eq v0, v2, :cond_37

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1e

    .line 2
    sget-object v0, Lorg/bson/AbstractBsonReader$State;->DONE:Lorg/bson/AbstractBsonReader$State;

    .line 3
    iput-object v0, p0, Lorg/bson/AbstractBsonReader;->state:Lorg/bson/AbstractBsonReader$State;

    goto :goto_3b

    .line 4
    :cond_1e
    new-instance v0, Lorg/bson/BSONException;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getContext()Lorg/bson/AbstractBsonReader$Context;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bson/AbstractBsonReader$Context;->getContextType()Lorg/bson/BsonContextType;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Unexpected ContextType %s."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bson/BSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_37
    sget-object v0, Lorg/bson/AbstractBsonReader$State;->TYPE:Lorg/bson/AbstractBsonReader$State;

    .line 6
    iput-object v0, p0, Lorg/bson/AbstractBsonReader;->state:Lorg/bson/AbstractBsonReader$State;

    :goto_3b
    return-void
.end method


# virtual methods
.method public final checkPreconditions(Ljava/lang/String;Lorg/bson/BsonType;)V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lorg/bson/AbstractBsonReader;->closed:Z

    if-nez v0, :cond_4c

    .line 2
    iget-object v0, p0, Lorg/bson/AbstractBsonReader;->state:Lorg/bson/AbstractBsonReader$State;

    sget-object v1, Lorg/bson/AbstractBsonReader$State;->INITIAL:Lorg/bson/AbstractBsonReader$State;

    if-eq v0, v1, :cond_12

    sget-object v1, Lorg/bson/AbstractBsonReader$State;->SCOPE_DOCUMENT:Lorg/bson/AbstractBsonReader$State;

    if-eq v0, v1, :cond_12

    sget-object v1, Lorg/bson/AbstractBsonReader$State;->TYPE:Lorg/bson/AbstractBsonReader$State;

    if-ne v0, v1, :cond_15

    .line 3
    :cond_12
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->readBsonType()Lorg/bson/BsonType;

    .line 4
    :cond_15
    iget-object v0, p0, Lorg/bson/AbstractBsonReader;->state:Lorg/bson/AbstractBsonReader$State;

    sget-object v1, Lorg/bson/AbstractBsonReader$State;->NAME:Lorg/bson/AbstractBsonReader$State;

    if-ne v0, v1, :cond_1e

    .line 5
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->skipName()V

    .line 6
    :cond_1e
    iget-object v0, p0, Lorg/bson/AbstractBsonReader;->state:Lorg/bson/AbstractBsonReader$State;

    sget-object v1, Lorg/bson/AbstractBsonReader$State;->VALUE:Lorg/bson/AbstractBsonReader$State;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_43

    .line 7
    iget-object v0, p0, Lorg/bson/AbstractBsonReader;->currentBsonType:Lorg/bson/BsonType;

    if-ne v0, p2, :cond_2b

    return-void

    .line 8
    :cond_2b
    new-instance v0, Lorg/bson/BsonInvalidOperationException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    const/4 p1, 0x2

    iget-object p2, p0, Lorg/bson/AbstractBsonReader;->currentBsonType:Lorg/bson/BsonType;

    aput-object p2, v1, p1

    const-string p1, "%s can only be called when CurrentBSONType is %s, not when CurrentBSONType is %s."

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bson/BsonInvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_43
    new-array p2, v3, [Lorg/bson/AbstractBsonReader$State;

    aput-object v1, p2, v2

    .line 9
    invoke-virtual {p0, p1, p2}, Lorg/bson/AbstractBsonReader;->throwInvalidState(Ljava/lang/String;[Lorg/bson/AbstractBsonReader$State;)V

    const/4 p1, 0x0

    throw p1

    .line 10
    :cond_4c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "BsonWriter is closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bson/AbstractBsonReader;->closed:Z

    return-void
.end method

.method public abstract doPeekBinarySize()I
.end method

.method public abstract doPeekBinarySubType()B
.end method

.method public abstract doReadBinaryData()Lorg/bson/BsonBinary;
.end method

.method public abstract doReadBoolean()Z
.end method

.method public abstract doReadDBPointer()Lorg/bson/BsonDbPointer;
.end method

.method public abstract doReadDateTime()J
.end method

.method public abstract doReadDecimal128()Lorg/bson/types/Decimal128;
.end method

.method public abstract doReadDouble()D
.end method

.method public abstract doReadEndArray()V
.end method

.method public abstract doReadEndDocument()V
.end method

.method public abstract doReadInt32()I
.end method

.method public abstract doReadInt64()J
.end method

.method public abstract doReadJavaScript()Ljava/lang/String;
.end method

.method public abstract doReadJavaScriptWithScope()Ljava/lang/String;
.end method

.method public abstract doReadMaxKey()V
.end method

.method public abstract doReadMinKey()V
.end method

.method public abstract doReadNull()V
.end method

.method public abstract doReadObjectId()Lorg/bson/types/ObjectId;
.end method

.method public abstract doReadRegularExpression()Lorg/bson/BsonRegularExpression;
.end method

.method public abstract doReadStartArray()V
.end method

.method public abstract doReadStartDocument()V
.end method

.method public abstract doReadString()Ljava/lang/String;
.end method

.method public abstract doReadSymbol()Ljava/lang/String;
.end method

.method public abstract doReadTimestamp()Lorg/bson/BsonTimestamp;
.end method

.method public abstract doReadUndefined()V
.end method

.method public abstract doSkipName()V
.end method

.method public abstract doSkipValue()V
.end method

.method public getContext()Lorg/bson/AbstractBsonReader$Context;
    .registers 2

    iget-object v0, p0, Lorg/bson/AbstractBsonReader;->context:Lorg/bson/AbstractBsonReader$Context;

    return-object v0
.end method

.method public getCurrentBsonType()Lorg/bson/BsonType;
    .registers 2

    iget-object v0, p0, Lorg/bson/AbstractBsonReader;->currentBsonType:Lorg/bson/BsonType;

    return-object v0
.end method

.method public getCurrentName()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/bson/AbstractBsonReader;->state:Lorg/bson/AbstractBsonReader$State;

    sget-object v1, Lorg/bson/AbstractBsonReader$State;->VALUE:Lorg/bson/AbstractBsonReader$State;

    if-ne v0, v1, :cond_9

    .line 2
    iget-object v0, p0, Lorg/bson/AbstractBsonReader;->currentName:Ljava/lang/String;

    return-object v0

    :cond_9
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bson/AbstractBsonReader$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "getCurrentName"

    .line 3
    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonReader;->throwInvalidState(Ljava/lang/String;[Lorg/bson/AbstractBsonReader$State;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getNextState()Lorg/bson/AbstractBsonReader$State;
    .registers 5

    .line 1
    sget-object v0, Lorg/bson/AbstractBsonReader$1;->$SwitchMap$org$bson$BsonContextType:[I

    iget-object v1, p0, Lorg/bson/AbstractBsonReader;->context:Lorg/bson/AbstractBsonReader$Context;

    invoke-virtual {v1}, Lorg/bson/AbstractBsonReader$Context;->getContextType()Lorg/bson/BsonContextType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_34

    const/4 v2, 0x2

    if-eq v0, v2, :cond_34

    const/4 v2, 0x3

    if-eq v0, v2, :cond_34

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1d

    .line 2
    sget-object v0, Lorg/bson/AbstractBsonReader$State;->DONE:Lorg/bson/AbstractBsonReader$State;

    return-object v0

    .line 3
    :cond_1d
    new-instance v0, Lorg/bson/BSONException;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bson/AbstractBsonReader;->context:Lorg/bson/AbstractBsonReader$Context;

    invoke-virtual {v3}, Lorg/bson/AbstractBsonReader$Context;->getContextType()Lorg/bson/BsonContextType;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Unexpected ContextType %s."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bson/BSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_34
    sget-object v0, Lorg/bson/AbstractBsonReader$State;->TYPE:Lorg/bson/AbstractBsonReader$State;

    return-object v0
.end method

.method public getState()Lorg/bson/AbstractBsonReader$State;
    .registers 2

    iget-object v0, p0, Lorg/bson/AbstractBsonReader;->state:Lorg/bson/AbstractBsonReader$State;

    return-object v0
.end method

.method public final isClosed()Z
    .registers 2

    iget-boolean v0, p0, Lorg/bson/AbstractBsonReader;->closed:Z

    return v0
.end method

.method public peekBinarySize()I
    .registers 3

    .line 1
    sget-object v0, Lorg/bson/BsonType;->BINARY:Lorg/bson/BsonType;

    const-string v1, "readBinaryData"

    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonReader;->checkPreconditions(Ljava/lang/String;Lorg/bson/BsonType;)V

    .line 2
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->doPeekBinarySize()I

    move-result v0

    return v0
.end method

.method public peekBinarySubType()B
    .registers 3

    .line 1
    sget-object v0, Lorg/bson/BsonType;->BINARY:Lorg/bson/BsonType;

    const-string v1, "readBinaryData"

    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonReader;->checkPreconditions(Ljava/lang/String;Lorg/bson/BsonType;)V

    .line 2
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->doPeekBinarySubType()B

    move-result v0

    return v0
.end method

.method public readBinaryData()Lorg/bson/BsonBinary;
    .registers 3

    .line 1
    sget-object v0, Lorg/bson/BsonType;->BINARY:Lorg/bson/BsonType;

    const-string v1, "readBinaryData"

    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonReader;->checkPreconditions(Ljava/lang/String;Lorg/bson/BsonType;)V

    .line 2
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getNextState()Lorg/bson/AbstractBsonReader$State;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lorg/bson/AbstractBsonReader;->state:Lorg/bson/AbstractBsonReader$State;

    .line 4
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->doReadBinaryData()Lorg/bson/BsonBinary;

    move-result-object v0

    return-object v0
.end method

.method public readBinaryData(Ljava/lang/String;)Lorg/bson/BsonBinary;
    .registers 2

    .line 5
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonReader;->verifyName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->readBinaryData()Lorg/bson/BsonBinary;

    move-result-object p1

    return-object p1
.end method

.method public readBoolean()Z
    .registers 3

    .line 1
    sget-object v0, Lorg/bson/BsonType;->BOOLEAN:Lorg/bson/BsonType;

    const-string v1, "readBoolean"

    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonReader;->checkPreconditions(Ljava/lang/String;Lorg/bson/BsonType;)V

    .line 2
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getNextState()Lorg/bson/AbstractBsonReader$State;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lorg/bson/AbstractBsonReader;->state:Lorg/bson/AbstractBsonReader$State;

    .line 4
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->doReadBoolean()Z

    move-result v0

    return v0
.end method

.method public readBoolean(Ljava/lang/String;)Z
    .registers 2

    .line 5
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonReader;->verifyName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->readBoolean()Z

    move-result p1

    return p1
.end method

.method public abstract readBsonType()Lorg/bson/BsonType;
.end method

.method public readDBPointer()Lorg/bson/BsonDbPointer;
    .registers 3

    .line 1
    sget-object v0, Lorg/bson/BsonType;->DB_POINTER:Lorg/bson/BsonType;

    const-string v1, "readDBPointer"

    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonReader;->checkPreconditions(Ljava/lang/String;Lorg/bson/BsonType;)V

    .line 2
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getNextState()Lorg/bson/AbstractBsonReader$State;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lorg/bson/AbstractBsonReader;->state:Lorg/bson/AbstractBsonReader$State;

    .line 4
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->doReadDBPointer()Lorg/bson/BsonDbPointer;

    move-result-object v0

    return-object v0
.end method

.method public readDBPointer(Ljava/lang/String;)Lorg/bson/BsonDbPointer;
    .registers 2

    .line 5
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonReader;->verifyName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->readDBPointer()Lorg/bson/BsonDbPointer;

    move-result-object p1

    return-object p1
.end method

.method public readDateTime()J
    .registers 3

    .line 1
    sget-object v0, Lorg/bson/BsonType;->DATE_TIME:Lorg/bson/BsonType;

    const-string v1, "readDateTime"

    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonReader;->checkPreconditions(Ljava/lang/String;Lorg/bson/BsonType;)V

    .line 2
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getNextState()Lorg/bson/AbstractBsonReader$State;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lorg/bson/AbstractBsonReader;->state:Lorg/bson/AbstractBsonReader$State;

    .line 4
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->doReadDateTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public readDateTime(Ljava/lang/String;)J
    .registers 4

    .line 5
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonReader;->verifyName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->readDateTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public readDecimal128()Lorg/bson/types/Decimal128;
    .registers 3

    .line 1
    sget-object v0, Lorg/bson/BsonType;->DECIMAL128:Lorg/bson/BsonType;

    const-string v1, "readDecimal"

    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonReader;->checkPreconditions(Ljava/lang/String;Lorg/bson/BsonType;)V

    .line 2
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getNextState()Lorg/bson/AbstractBsonReader$State;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lorg/bson/AbstractBsonReader;->state:Lorg/bson/AbstractBsonReader$State;

    .line 4
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->doReadDecimal128()Lorg/bson/types/Decimal128;

    move-result-object v0

    return-object v0
.end method

.method public readDecimal128(Ljava/lang/String;)Lorg/bson/types/Decimal128;
    .registers 2

    .line 5
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonReader;->verifyName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->readDecimal128()Lorg/bson/types/Decimal128;

    move-result-object p1

    return-object p1
.end method

.method public readDouble()D
    .registers 3

    .line 1
    sget-object v0, Lorg/bson/BsonType;->DOUBLE:Lorg/bson/BsonType;

    const-string v1, "readDouble"

    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonReader;->checkPreconditions(Ljava/lang/String;Lorg/bson/BsonType;)V

    .line 2
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getNextState()Lorg/bson/AbstractBsonReader$State;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lorg/bson/AbstractBsonReader;->state:Lorg/bson/AbstractBsonReader$State;

    .line 4
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->doReadDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public readDouble(Ljava/lang/String;)D
    .registers 4

    .line 5
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonReader;->verifyName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public readEndArray()V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lorg/bson/AbstractBsonReader;->closed:Z

    if-nez v0, :cond_49

    .line 2
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getContext()Lorg/bson/AbstractBsonReader$Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/AbstractBsonReader$Context;->getContextType()Lorg/bson/BsonContextType;

    move-result-object v0

    sget-object v1, Lorg/bson/BsonContextType;->ARRAY:Lorg/bson/BsonContextType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_37

    .line 3
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getState()Lorg/bson/AbstractBsonReader$State;

    move-result-object v0

    sget-object v1, Lorg/bson/AbstractBsonReader$State;->TYPE:Lorg/bson/AbstractBsonReader$State;

    if-ne v0, v1, :cond_1e

    .line 4
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->readBsonType()Lorg/bson/BsonType;

    .line 5
    :cond_1e
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getState()Lorg/bson/AbstractBsonReader$State;

    move-result-object v0

    sget-object v1, Lorg/bson/AbstractBsonReader$State;->END_OF_ARRAY:Lorg/bson/AbstractBsonReader$State;

    if-ne v0, v1, :cond_2d

    .line 6
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->doReadEndArray()V

    .line 7
    invoke-direct {p0}, Lorg/bson/AbstractBsonReader;->setStateOnEnd()V

    return-void

    :cond_2d
    new-array v0, v4, [Lorg/bson/AbstractBsonReader$State;

    aput-object v1, v0, v3

    const-string v1, "ReadEndArray"

    .line 8
    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonReader;->throwInvalidState(Ljava/lang/String;[Lorg/bson/AbstractBsonReader$State;)V

    throw v2

    .line 9
    :cond_37
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getContext()Lorg/bson/AbstractBsonReader$Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/AbstractBsonReader$Context;->getContextType()Lorg/bson/BsonContextType;

    move-result-object v0

    new-array v4, v4, [Lorg/bson/BsonContextType;

    aput-object v1, v4, v3

    const-string v1, "readEndArray"

    invoke-virtual {p0, v1, v0, v4}, Lorg/bson/AbstractBsonReader;->throwInvalidContextType(Ljava/lang/String;Lorg/bson/BsonContextType;[Lorg/bson/BsonContextType;)V

    throw v2

    .line 10
    :cond_49
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BSONBinaryWriter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readEndDocument()V
    .registers 9

    .line 1
    iget-boolean v0, p0, Lorg/bson/AbstractBsonReader;->closed:Z

    if-nez v0, :cond_57

    .line 2
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getContext()Lorg/bson/AbstractBsonReader$Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/AbstractBsonReader$Context;->getContextType()Lorg/bson/BsonContextType;

    move-result-object v0

    sget-object v1, Lorg/bson/BsonContextType;->DOCUMENT:Lorg/bson/BsonContextType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "readEndDocument"

    if-eq v0, v1, :cond_35

    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getContext()Lorg/bson/AbstractBsonReader$Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/AbstractBsonReader$Context;->getContextType()Lorg/bson/BsonContextType;

    move-result-object v0

    sget-object v6, Lorg/bson/BsonContextType;->SCOPE_DOCUMENT:Lorg/bson/BsonContextType;

    if-ne v0, v6, :cond_22

    goto :goto_35

    .line 3
    :cond_22
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getContext()Lorg/bson/AbstractBsonReader$Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/AbstractBsonReader$Context;->getContextType()Lorg/bson/BsonContextType;

    move-result-object v0

    const/4 v7, 0x2

    new-array v7, v7, [Lorg/bson/BsonContextType;

    aput-object v1, v7, v4

    aput-object v6, v7, v3

    .line 4
    invoke-virtual {p0, v5, v0, v7}, Lorg/bson/AbstractBsonReader;->throwInvalidContextType(Ljava/lang/String;Lorg/bson/BsonContextType;[Lorg/bson/BsonContextType;)V

    throw v2

    .line 5
    :cond_35
    :goto_35
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getState()Lorg/bson/AbstractBsonReader$State;

    move-result-object v0

    sget-object v1, Lorg/bson/AbstractBsonReader$State;->TYPE:Lorg/bson/AbstractBsonReader$State;

    if-ne v0, v1, :cond_40

    .line 6
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->readBsonType()Lorg/bson/BsonType;

    .line 7
    :cond_40
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getState()Lorg/bson/AbstractBsonReader$State;

    move-result-object v0

    sget-object v1, Lorg/bson/AbstractBsonReader$State;->END_OF_DOCUMENT:Lorg/bson/AbstractBsonReader$State;

    if-ne v0, v1, :cond_4f

    .line 8
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->doReadEndDocument()V

    .line 9
    invoke-direct {p0}, Lorg/bson/AbstractBsonReader;->setStateOnEnd()V

    return-void

    :cond_4f
    new-array v0, v3, [Lorg/bson/AbstractBsonReader$State;

    aput-object v1, v0, v4

    .line 10
    invoke-virtual {p0, v5, v0}, Lorg/bson/AbstractBsonReader;->throwInvalidState(Ljava/lang/String;[Lorg/bson/AbstractBsonReader$State;)V

    throw v2

    .line 11
    :cond_57
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BSONBinaryWriter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readInt32()I
    .registers 3

    .line 1
    sget-object v0, Lorg/bson/BsonType;->INT32:Lorg/bson/BsonType;

    const-string v1, "readInt32"

    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonReader;->checkPreconditions(Ljava/lang/String;Lorg/bson/BsonType;)V

    .line 2
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getNextState()Lorg/bson/AbstractBsonReader$State;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lorg/bson/AbstractBsonReader;->state:Lorg/bson/AbstractBsonReader$State;

    .line 4
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->doReadInt32()I

    move-result v0

    return v0
.end method

.method public readInt32(Ljava/lang/String;)I
    .registers 2

    .line 5
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonReader;->verifyName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->readInt32()I

    move-result p1

    return p1
.end method

.method public readInt64()J
    .registers 3

    .line 1
    sget-object v0, Lorg/bson/BsonType;->INT64:Lorg/bson/BsonType;

    const-string v1, "readInt64"

    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonReader;->checkPreconditions(Ljava/lang/String;Lorg/bson/BsonType;)V

    .line 2
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getNextState()Lorg/bson/AbstractBsonReader$State;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lorg/bson/AbstractBsonReader;->state:Lorg/bson/AbstractBsonReader$State;

    .line 4
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->doReadInt64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readInt64(Ljava/lang/String;)J
    .registers 4

    .line 5
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonReader;->verifyName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->readInt64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readJavaScript()Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lorg/bson/BsonType;->JAVASCRIPT:Lorg/bson/BsonType;

    const-string v1, "readJavaScript"

    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonReader;->checkPreconditions(Ljava/lang/String;Lorg/bson/BsonType;)V

    .line 2
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getNextState()Lorg/bson/AbstractBsonReader$State;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lorg/bson/AbstractBsonReader;->state:Lorg/bson/AbstractBsonReader$State;

    .line 4
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->doReadJavaScript()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readJavaScript(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 5
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonReader;->verifyName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->readJavaScript()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readJavaScriptWithScope()Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lorg/bson/BsonType;->JAVASCRIPT_WITH_SCOPE:Lorg/bson/BsonType;

    const-string v1, "readJavaScriptWithScope"

    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonReader;->checkPreconditions(Ljava/lang/String;Lorg/bson/BsonType;)V

    .line 2
    sget-object v0, Lorg/bson/AbstractBsonReader$State;->SCOPE_DOCUMENT:Lorg/bson/AbstractBsonReader$State;

    .line 3
    iput-object v0, p0, Lorg/bson/AbstractBsonReader;->state:Lorg/bson/AbstractBsonReader$State;

    .line 4
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->doReadJavaScriptWithScope()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readJavaScriptWithScope(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 5
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonReader;->verifyName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->readJavaScriptWithScope()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readMaxKey()V
    .registers 3

    .line 1
    sget-object v0, Lorg/bson/BsonType;->MAX_KEY:Lorg/bson/BsonType;

    const-string v1, "readMaxKey"

    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonReader;->checkPreconditions(Ljava/lang/String;Lorg/bson/BsonType;)V

    .line 2
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getNextState()Lorg/bson/AbstractBsonReader$State;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lorg/bson/AbstractBsonReader;->state:Lorg/bson/AbstractBsonReader$State;

    .line 4
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->doReadMaxKey()V

    return-void
.end method

.method public readMaxKey(Ljava/lang/String;)V
    .registers 2

    .line 5
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonReader;->verifyName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->readMaxKey()V

    return-void
.end method

.method public readMinKey()V
    .registers 3

    .line 1
    sget-object v0, Lorg/bson/BsonType;->MIN_KEY:Lorg/bson/BsonType;

    const-string v1, "readMinKey"

    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonReader;->checkPreconditions(Ljava/lang/String;Lorg/bson/BsonType;)V

    .line 2
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getNextState()Lorg/bson/AbstractBsonReader$State;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lorg/bson/AbstractBsonReader;->state:Lorg/bson/AbstractBsonReader$State;

    .line 4
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->doReadMinKey()V

    return-void
.end method

.method public readMinKey(Ljava/lang/String;)V
    .registers 2

    .line 5
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonReader;->verifyName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->readMinKey()V

    return-void
.end method

.method public readName()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/bson/AbstractBsonReader;->state:Lorg/bson/AbstractBsonReader$State;

    sget-object v1, Lorg/bson/AbstractBsonReader$State;->TYPE:Lorg/bson/AbstractBsonReader$State;

    if-ne v0, v1, :cond_9

    .line 2
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->readBsonType()Lorg/bson/BsonType;

    .line 3
    :cond_9
    iget-object v0, p0, Lorg/bson/AbstractBsonReader;->state:Lorg/bson/AbstractBsonReader$State;

    sget-object v1, Lorg/bson/AbstractBsonReader$State;->NAME:Lorg/bson/AbstractBsonReader$State;

    if-ne v0, v1, :cond_16

    .line 4
    sget-object v0, Lorg/bson/AbstractBsonReader$State;->VALUE:Lorg/bson/AbstractBsonReader$State;

    iput-object v0, p0, Lorg/bson/AbstractBsonReader;->state:Lorg/bson/AbstractBsonReader$State;

    .line 5
    iget-object v0, p0, Lorg/bson/AbstractBsonReader;->currentName:Ljava/lang/String;

    return-object v0

    :cond_16
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bson/AbstractBsonReader$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "readName"

    .line 6
    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonReader;->throwInvalidState(Ljava/lang/String;[Lorg/bson/AbstractBsonReader$State;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public readName(Ljava/lang/String;)V
    .registers 2

    .line 7
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonReader;->verifyName(Ljava/lang/String;)V

    return-void
.end method

.method public readNull()V
    .registers 3

    .line 1
    sget-object v0, Lorg/bson/BsonType;->NULL:Lorg/bson/BsonType;

    const-string v1, "readNull"

    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonReader;->checkPreconditions(Ljava/lang/String;Lorg/bson/BsonType;)V

    .line 2
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getNextState()Lorg/bson/AbstractBsonReader$State;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lorg/bson/AbstractBsonReader;->state:Lorg/bson/AbstractBsonReader$State;

    .line 4
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->doReadNull()V

    return-void
.end method

.method public readNull(Ljava/lang/String;)V
    .registers 2

    .line 5
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonReader;->verifyName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->readNull()V

    return-void
.end method

.method public readObjectId()Lorg/bson/types/ObjectId;
    .registers 3

    .line 1
    sget-object v0, Lorg/bson/BsonType;->OBJECT_ID:Lorg/bson/BsonType;

    const-string v1, "readObjectId"

    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonReader;->checkPreconditions(Ljava/lang/String;Lorg/bson/BsonType;)V

    .line 2
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getNextState()Lorg/bson/AbstractBsonReader$State;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lorg/bson/AbstractBsonReader;->state:Lorg/bson/AbstractBsonReader$State;

    .line 4
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->doReadObjectId()Lorg/bson/types/ObjectId;

    move-result-object v0

    return-object v0
.end method

.method public readObjectId(Ljava/lang/String;)Lorg/bson/types/ObjectId;
    .registers 2

    .line 5
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonReader;->verifyName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->readObjectId()Lorg/bson/types/ObjectId;

    move-result-object p1

    return-object p1
.end method

.method public readRegularExpression()Lorg/bson/BsonRegularExpression;
    .registers 3

    .line 1
    sget-object v0, Lorg/bson/BsonType;->REGULAR_EXPRESSION:Lorg/bson/BsonType;

    const-string v1, "readRegularExpression"

    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonReader;->checkPreconditions(Ljava/lang/String;Lorg/bson/BsonType;)V

    .line 2
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getNextState()Lorg/bson/AbstractBsonReader$State;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lorg/bson/AbstractBsonReader;->state:Lorg/bson/AbstractBsonReader$State;

    .line 4
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->doReadRegularExpression()Lorg/bson/BsonRegularExpression;

    move-result-object v0

    return-object v0
.end method

.method public readRegularExpression(Ljava/lang/String;)Lorg/bson/BsonRegularExpression;
    .registers 2

    .line 5
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonReader;->verifyName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->readRegularExpression()Lorg/bson/BsonRegularExpression;

    move-result-object p1

    return-object p1
.end method

.method public readStartArray()V
    .registers 3

    .line 1
    sget-object v0, Lorg/bson/BsonType;->ARRAY:Lorg/bson/BsonType;

    const-string v1, "readStartArray"

    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonReader;->checkPreconditions(Ljava/lang/String;Lorg/bson/BsonType;)V

    .line 2
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->doReadStartArray()V

    .line 3
    sget-object v0, Lorg/bson/AbstractBsonReader$State;->TYPE:Lorg/bson/AbstractBsonReader$State;

    .line 4
    iput-object v0, p0, Lorg/bson/AbstractBsonReader;->state:Lorg/bson/AbstractBsonReader$State;

    return-void
.end method

.method public readStartDocument()V
    .registers 3

    .line 1
    sget-object v0, Lorg/bson/BsonType;->DOCUMENT:Lorg/bson/BsonType;

    const-string v1, "readStartDocument"

    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonReader;->checkPreconditions(Ljava/lang/String;Lorg/bson/BsonType;)V

    .line 2
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->doReadStartDocument()V

    .line 3
    sget-object v0, Lorg/bson/AbstractBsonReader$State;->TYPE:Lorg/bson/AbstractBsonReader$State;

    .line 4
    iput-object v0, p0, Lorg/bson/AbstractBsonReader;->state:Lorg/bson/AbstractBsonReader$State;

    return-void
.end method

.method public readString()Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lorg/bson/BsonType;->STRING:Lorg/bson/BsonType;

    const-string v1, "readString"

    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonReader;->checkPreconditions(Ljava/lang/String;Lorg/bson/BsonType;)V

    .line 2
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getNextState()Lorg/bson/AbstractBsonReader$State;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lorg/bson/AbstractBsonReader;->state:Lorg/bson/AbstractBsonReader$State;

    .line 4
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->doReadString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 5
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonReader;->verifyName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->readString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readSymbol()Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lorg/bson/BsonType;->SYMBOL:Lorg/bson/BsonType;

    const-string v1, "readSymbol"

    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonReader;->checkPreconditions(Ljava/lang/String;Lorg/bson/BsonType;)V

    .line 2
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getNextState()Lorg/bson/AbstractBsonReader$State;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lorg/bson/AbstractBsonReader;->state:Lorg/bson/AbstractBsonReader$State;

    .line 4
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->doReadSymbol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readSymbol(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 5
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonReader;->verifyName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->readSymbol()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readTimestamp()Lorg/bson/BsonTimestamp;
    .registers 3

    .line 1
    sget-object v0, Lorg/bson/BsonType;->TIMESTAMP:Lorg/bson/BsonType;

    const-string v1, "readTimestamp"

    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonReader;->checkPreconditions(Ljava/lang/String;Lorg/bson/BsonType;)V

    .line 2
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getNextState()Lorg/bson/AbstractBsonReader$State;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lorg/bson/AbstractBsonReader;->state:Lorg/bson/AbstractBsonReader$State;

    .line 4
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->doReadTimestamp()Lorg/bson/BsonTimestamp;

    move-result-object v0

    return-object v0
.end method

.method public readTimestamp(Ljava/lang/String;)Lorg/bson/BsonTimestamp;
    .registers 2

    .line 5
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonReader;->verifyName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->readTimestamp()Lorg/bson/BsonTimestamp;

    move-result-object p1

    return-object p1
.end method

.method public readUndefined()V
    .registers 3

    .line 1
    sget-object v0, Lorg/bson/BsonType;->UNDEFINED:Lorg/bson/BsonType;

    const-string v1, "readUndefined"

    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonReader;->checkPreconditions(Ljava/lang/String;Lorg/bson/BsonType;)V

    .line 2
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getNextState()Lorg/bson/AbstractBsonReader$State;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lorg/bson/AbstractBsonReader;->state:Lorg/bson/AbstractBsonReader$State;

    .line 4
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->doReadUndefined()V

    return-void
.end method

.method public readUndefined(Ljava/lang/String;)V
    .registers 2

    .line 5
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonReader;->verifyName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->readUndefined()V

    return-void
.end method

.method public final setContext(Lorg/bson/AbstractBsonReader$Context;)V
    .registers 2

    iput-object p1, p0, Lorg/bson/AbstractBsonReader;->context:Lorg/bson/AbstractBsonReader$Context;

    return-void
.end method

.method public final setCurrentBsonType(Lorg/bson/BsonType;)V
    .registers 2

    iput-object p1, p0, Lorg/bson/AbstractBsonReader;->currentBsonType:Lorg/bson/BsonType;

    return-void
.end method

.method public final setCurrentName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/bson/AbstractBsonReader;->currentName:Ljava/lang/String;

    return-void
.end method

.method public final setState(Lorg/bson/AbstractBsonReader$State;)V
    .registers 2

    iput-object p1, p0, Lorg/bson/AbstractBsonReader;->state:Lorg/bson/AbstractBsonReader$State;

    return-void
.end method

.method public skipName()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lorg/bson/AbstractBsonReader;->closed:Z

    if-nez v0, :cond_21

    .line 2
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getState()Lorg/bson/AbstractBsonReader$State;

    move-result-object v0

    sget-object v1, Lorg/bson/AbstractBsonReader$State;->NAME:Lorg/bson/AbstractBsonReader$State;

    if-ne v0, v1, :cond_14

    .line 3
    sget-object v0, Lorg/bson/AbstractBsonReader$State;->VALUE:Lorg/bson/AbstractBsonReader$State;

    .line 4
    iput-object v0, p0, Lorg/bson/AbstractBsonReader;->state:Lorg/bson/AbstractBsonReader$State;

    .line 5
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->doSkipName()V

    return-void

    :cond_14
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bson/AbstractBsonReader$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "skipName"

    .line 6
    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonReader;->throwInvalidState(Ljava/lang/String;[Lorg/bson/AbstractBsonReader$State;)V

    const/4 v0, 0x0

    throw v0

    .line 7
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This instance has been closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skipValue()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lorg/bson/AbstractBsonReader;->closed:Z

    if-nez v0, :cond_21

    .line 2
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->getState()Lorg/bson/AbstractBsonReader$State;

    move-result-object v0

    sget-object v1, Lorg/bson/AbstractBsonReader$State;->VALUE:Lorg/bson/AbstractBsonReader$State;

    if-ne v0, v1, :cond_14

    .line 3
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->doSkipValue()V

    .line 4
    sget-object v0, Lorg/bson/AbstractBsonReader$State;->TYPE:Lorg/bson/AbstractBsonReader$State;

    .line 5
    iput-object v0, p0, Lorg/bson/AbstractBsonReader;->state:Lorg/bson/AbstractBsonReader$State;

    return-void

    :cond_14
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bson/AbstractBsonReader$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "skipValue"

    .line 6
    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonReader;->throwInvalidState(Ljava/lang/String;[Lorg/bson/AbstractBsonReader$State;)V

    const/4 v0, 0x0

    throw v0

    .line 7
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BSONBinaryWriter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final varargs throwInvalidContextType(Ljava/lang/String;Lorg/bson/BsonContextType;[Lorg/bson/BsonContextType;)V
    .registers 6

    .line 1
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    const-string v0, " or "

    invoke-static {v0, p3}, Lorg/bson/StringUtils;->join(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p3, v0, p1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    const-string p1, "%s can only be called when ContextType is %s, not when ContextType is %s."

    .line 2
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance p2, Lorg/bson/BsonInvalidOperationException;

    invoke-direct {p2, p1}, Lorg/bson/BsonInvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final varargs throwInvalidState(Ljava/lang/String;[Lorg/bson/AbstractBsonReader$State;)V
    .registers 5

    .line 1
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const-string v0, " or "

    invoke-static {v0, p2}, Lorg/bson/StringUtils;->join(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 2
    iget-object p1, p0, Lorg/bson/AbstractBsonReader;->state:Lorg/bson/AbstractBsonReader$State;

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "%s can only be called when State is %s, not when State is %s."

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance p2, Lorg/bson/BsonInvalidOperationException;

    invoke-direct {p2, p1}, Lorg/bson/BsonInvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final verifyName(Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->readBsonType()Lorg/bson/BsonType;

    .line 2
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader;->readName()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    return-void

    .line 4
    :cond_e
    new-instance v1, Lorg/bson/BsonSerializationException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    const-string p1, "Expected element name to be \'%s\', not \'%s\'."

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/bson/BsonSerializationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
