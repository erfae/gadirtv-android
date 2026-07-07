.class Lorg/bson/BSONCallbackAdapter;
.super Lorg/bson/AbstractBsonWriter;
.source "BSONCallbackAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bson/BSONCallbackAdapter$Context;
    }
.end annotation


# instance fields
.field private bsonCallback:Lorg/bson/BSONCallback;


# direct methods
.method public constructor <init>(Lorg/bson/BsonWriterSettings;Lorg/bson/BSONCallback;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lorg/bson/AbstractBsonWriter;-><init>(Lorg/bson/BsonWriterSettings;)V

    .line 2
    iput-object p2, p0, Lorg/bson/BSONCallbackAdapter;->bsonCallback:Lorg/bson/BSONCallback;

    return-void
.end method


# virtual methods
.method public final doWriteBinaryData(Lorg/bson/BsonBinary;)V
    .registers 10

    .line 1
    invoke-virtual {p1}, Lorg/bson/BsonBinary;->getType()B

    move-result v0

    sget-object v1, Lorg/bson/BsonBinarySubType;->UUID_LEGACY:Lorg/bson/BsonBinarySubType;

    invoke-virtual {v1}, Lorg/bson/BsonBinarySubType;->getValue()B

    move-result v1

    if-ne v0, v1, :cond_29

    .line 2
    iget-object v2, p0, Lorg/bson/BSONCallbackAdapter;->bsonCallback:Lorg/bson/BSONCallback;

    invoke-virtual {p0}, Lorg/bson/BSONCallbackAdapter;->getName()Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-virtual {p1}, Lorg/bson/BsonBinary;->getData()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bson/io/Bits;->readLong([BI)J

    move-result-wide v4

    .line 4
    invoke-virtual {p1}, Lorg/bson/BsonBinary;->getData()[B

    move-result-object p1

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lorg/bson/io/Bits;->readLong([BI)J

    move-result-wide v6

    .line 5
    invoke-interface/range {v2 .. v7}, Lorg/bson/BSONCallback;->gotUUID(Ljava/lang/String;JJ)V

    goto :goto_3a

    .line 6
    :cond_29
    iget-object v0, p0, Lorg/bson/BSONCallbackAdapter;->bsonCallback:Lorg/bson/BSONCallback;

    invoke-virtual {p0}, Lorg/bson/BSONCallbackAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bson/BsonBinary;->getType()B

    move-result v2

    invoke-virtual {p1}, Lorg/bson/BsonBinary;->getData()[B

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lorg/bson/BSONCallback;->gotBinary(Ljava/lang/String;B[B)V

    :goto_3a
    return-void
.end method

.method public doWriteBoolean(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/bson/BSONCallbackAdapter;->bsonCallback:Lorg/bson/BSONCallback;

    invoke-virtual {p0}, Lorg/bson/BSONCallbackAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/bson/BSONCallback;->gotBoolean(Ljava/lang/String;Z)V

    .line 2
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->getNextState()Lorg/bson/AbstractBsonWriter$State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->setState(Lorg/bson/AbstractBsonWriter$State;)V

    return-void
.end method

.method public final doWriteDBPointer(Lorg/bson/BsonDbPointer;)V
    .registers 5

    iget-object v0, p0, Lorg/bson/BSONCallbackAdapter;->bsonCallback:Lorg/bson/BSONCallback;

    invoke-virtual {p0}, Lorg/bson/BSONCallbackAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bson/BsonDbPointer;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bson/BsonDbPointer;->getId()Lorg/bson/types/ObjectId;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lorg/bson/BSONCallback;->gotDBRef(Ljava/lang/String;Ljava/lang/String;Lorg/bson/types/ObjectId;)V

    return-void
.end method

.method public final doWriteDateTime(J)V
    .registers 5

    iget-object v0, p0, Lorg/bson/BSONCallbackAdapter;->bsonCallback:Lorg/bson/BSONCallback;

    invoke-virtual {p0}, Lorg/bson/BSONCallbackAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lorg/bson/BSONCallback;->gotDate(Ljava/lang/String;J)V

    return-void
.end method

.method public final doWriteDecimal128(Lorg/bson/types/Decimal128;)V
    .registers 4

    iget-object v0, p0, Lorg/bson/BSONCallbackAdapter;->bsonCallback:Lorg/bson/BSONCallback;

    invoke-virtual {p0}, Lorg/bson/BSONCallbackAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/bson/BSONCallback;->gotDecimal128(Ljava/lang/String;Lorg/bson/types/Decimal128;)V

    return-void
.end method

.method public final doWriteDouble(D)V
    .registers 5

    iget-object v0, p0, Lorg/bson/BSONCallbackAdapter;->bsonCallback:Lorg/bson/BSONCallback;

    invoke-virtual {p0}, Lorg/bson/BSONCallbackAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lorg/bson/BSONCallback;->gotDouble(Ljava/lang/String;D)V

    return-void
.end method

.method public final doWriteEndArray()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/bson/BSONCallbackAdapter;->getContext()Lorg/bson/BSONCallbackAdapter$Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/BSONCallbackAdapter$Context;->getParentContext()Lorg/bson/BSONCallbackAdapter$Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonWriter;->setContext(Lorg/bson/AbstractBsonWriter$Context;)V

    .line 2
    iget-object v0, p0, Lorg/bson/BSONCallbackAdapter;->bsonCallback:Lorg/bson/BSONCallback;

    invoke-interface {v0}, Lorg/bson/BSONCallback;->arrayDone()Ljava/lang/Object;

    return-void
.end method

.method public final doWriteEndDocument()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lorg/bson/BSONCallbackAdapter;->getContext()Lorg/bson/BSONCallbackAdapter$Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/AbstractBsonWriter$Context;->getContextType()Lorg/bson/BsonContextType;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lorg/bson/BSONCallbackAdapter;->getContext()Lorg/bson/BSONCallbackAdapter$Context;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bson/BSONCallbackAdapter$Context;->getParentContext()Lorg/bson/BSONCallbackAdapter$Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/bson/AbstractBsonWriter;->setContext(Lorg/bson/AbstractBsonWriter$Context;)V

    .line 3
    iget-object v1, p0, Lorg/bson/BSONCallbackAdapter;->bsonCallback:Lorg/bson/BSONCallback;

    invoke-interface {v1}, Lorg/bson/BSONCallback;->objectDone()Ljava/lang/Object;

    .line 4
    sget-object v1, Lorg/bson/BsonContextType;->SCOPE_DOCUMENT:Lorg/bson/BsonContextType;

    if-ne v0, v1, :cond_3f

    .line 5
    iget-object v0, p0, Lorg/bson/BSONCallbackAdapter;->bsonCallback:Lorg/bson/BSONCallback;

    invoke-interface {v0}, Lorg/bson/BSONCallback;->get()Ljava/lang/Object;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lorg/bson/BSONCallbackAdapter;->getContext()Lorg/bson/BSONCallbackAdapter$Context;

    move-result-object v1

    # getter for: Lorg/bson/BSONCallbackAdapter$Context;->callback:Lorg/bson/BSONCallback;
    invoke-static {v1}, Lorg/bson/BSONCallbackAdapter$Context;->access$000(Lorg/bson/BSONCallbackAdapter$Context;)Lorg/bson/BSONCallback;

    move-result-object v1

    iput-object v1, p0, Lorg/bson/BSONCallbackAdapter;->bsonCallback:Lorg/bson/BSONCallback;

    .line 7
    invoke-virtual {p0}, Lorg/bson/BSONCallbackAdapter;->getContext()Lorg/bson/BSONCallbackAdapter$Context;

    move-result-object v2

    # getter for: Lorg/bson/BSONCallbackAdapter$Context;->name:Ljava/lang/String;
    invoke-static {v2}, Lorg/bson/BSONCallbackAdapter$Context;->access$100(Lorg/bson/BSONCallbackAdapter$Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bson/BSONCallbackAdapter;->getContext()Lorg/bson/BSONCallbackAdapter$Context;

    move-result-object v3

    # getter for: Lorg/bson/BSONCallbackAdapter$Context;->code:Ljava/lang/String;
    invoke-static {v3}, Lorg/bson/BSONCallbackAdapter$Context;->access$200(Lorg/bson/BSONCallbackAdapter$Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lorg/bson/BSONCallback;->gotCodeWScope(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3f
    return-void
.end method

.method public final doWriteInt32(I)V
    .registers 4

    iget-object v0, p0, Lorg/bson/BSONCallbackAdapter;->bsonCallback:Lorg/bson/BSONCallback;

    invoke-virtual {p0}, Lorg/bson/BSONCallbackAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/bson/BSONCallback;->gotInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final doWriteInt64(J)V
    .registers 5

    iget-object v0, p0, Lorg/bson/BSONCallbackAdapter;->bsonCallback:Lorg/bson/BSONCallback;

    invoke-virtual {p0}, Lorg/bson/BSONCallbackAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lorg/bson/BSONCallback;->gotLong(Ljava/lang/String;J)V

    return-void
.end method

.method public final doWriteJavaScript(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lorg/bson/BSONCallbackAdapter;->bsonCallback:Lorg/bson/BSONCallback;

    invoke-virtual {p0}, Lorg/bson/BSONCallbackAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/bson/BSONCallback;->gotCode(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final doWriteJavaScriptWithScope(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lorg/bson/BSONCallbackAdapter;->getContext()Lorg/bson/BSONCallbackAdapter$Context;

    move-result-object v0

    iget-object v1, p0, Lorg/bson/BSONCallbackAdapter;->bsonCallback:Lorg/bson/BSONCallback;

    # setter for: Lorg/bson/BSONCallbackAdapter$Context;->callback:Lorg/bson/BSONCallback;
    invoke-static {v0, v1}, Lorg/bson/BSONCallbackAdapter$Context;->access$002(Lorg/bson/BSONCallbackAdapter$Context;Lorg/bson/BSONCallback;)Lorg/bson/BSONCallback;

    .line 2
    invoke-virtual {p0}, Lorg/bson/BSONCallbackAdapter;->getContext()Lorg/bson/BSONCallbackAdapter$Context;

    move-result-object v0

    # setter for: Lorg/bson/BSONCallbackAdapter$Context;->code:Ljava/lang/String;
    invoke-static {v0, p1}, Lorg/bson/BSONCallbackAdapter$Context;->access$202(Lorg/bson/BSONCallbackAdapter$Context;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lorg/bson/BSONCallbackAdapter;->getContext()Lorg/bson/BSONCallbackAdapter$Context;

    move-result-object p1

    invoke-virtual {p0}, Lorg/bson/BSONCallbackAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    # setter for: Lorg/bson/BSONCallbackAdapter$Context;->name:Ljava/lang/String;
    invoke-static {p1, v0}, Lorg/bson/BSONCallbackAdapter$Context;->access$102(Lorg/bson/BSONCallbackAdapter$Context;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lorg/bson/BSONCallbackAdapter;->bsonCallback:Lorg/bson/BSONCallback;

    invoke-interface {p1}, Lorg/bson/BSONCallback;->createBSONCallback()Lorg/bson/BSONCallback;

    move-result-object p1

    iput-object p1, p0, Lorg/bson/BSONCallbackAdapter;->bsonCallback:Lorg/bson/BSONCallback;

    return-void
.end method

.method public final doWriteMaxKey()V
    .registers 3

    iget-object v0, p0, Lorg/bson/BSONCallbackAdapter;->bsonCallback:Lorg/bson/BSONCallback;

    invoke-virtual {p0}, Lorg/bson/BSONCallbackAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bson/BSONCallback;->gotMaxKey(Ljava/lang/String;)V

    return-void
.end method

.method public final doWriteMinKey()V
    .registers 3

    iget-object v0, p0, Lorg/bson/BSONCallbackAdapter;->bsonCallback:Lorg/bson/BSONCallback;

    invoke-virtual {p0}, Lorg/bson/BSONCallbackAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bson/BSONCallback;->gotMinKey(Ljava/lang/String;)V

    return-void
.end method

.method public doWriteNull()V
    .registers 3

    iget-object v0, p0, Lorg/bson/BSONCallbackAdapter;->bsonCallback:Lorg/bson/BSONCallback;

    invoke-virtual {p0}, Lorg/bson/BSONCallbackAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bson/BSONCallback;->gotNull(Ljava/lang/String;)V

    return-void
.end method

.method public doWriteObjectId(Lorg/bson/types/ObjectId;)V
    .registers 4

    iget-object v0, p0, Lorg/bson/BSONCallbackAdapter;->bsonCallback:Lorg/bson/BSONCallback;

    invoke-virtual {p0}, Lorg/bson/BSONCallbackAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/bson/BSONCallback;->gotObjectId(Ljava/lang/String;Lorg/bson/types/ObjectId;)V

    return-void
.end method

.method public doWriteRegularExpression(Lorg/bson/BsonRegularExpression;)V
    .registers 5

    iget-object v0, p0, Lorg/bson/BSONCallbackAdapter;->bsonCallback:Lorg/bson/BSONCallback;

    invoke-virtual {p0}, Lorg/bson/BSONCallbackAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bson/BsonRegularExpression;->getPattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bson/BsonRegularExpression;->getOptions()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lorg/bson/BSONCallback;->gotRegex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public doWriteStartArray()V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/bson/BSONCallbackAdapter;->bsonCallback:Lorg/bson/BSONCallback;

    invoke-virtual {p0}, Lorg/bson/BSONCallbackAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bson/BSONCallback;->arrayStart(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lorg/bson/BSONCallbackAdapter$Context;

    invoke-virtual {p0}, Lorg/bson/BSONCallbackAdapter;->getContext()Lorg/bson/BSONCallbackAdapter$Context;

    move-result-object v1

    sget-object v2, Lorg/bson/BsonContextType;->ARRAY:Lorg/bson/BsonContextType;

    invoke-direct {v0, p0, v1, v2}, Lorg/bson/BSONCallbackAdapter$Context;-><init>(Lorg/bson/BSONCallbackAdapter;Lorg/bson/BSONCallbackAdapter$Context;Lorg/bson/BsonContextType;)V

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonWriter;->setContext(Lorg/bson/AbstractBsonWriter$Context;)V

    return-void
.end method

.method public doWriteStartDocument()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->getState()Lorg/bson/AbstractBsonWriter$State;

    move-result-object v0

    sget-object v1, Lorg/bson/AbstractBsonWriter$State;->SCOPE_DOCUMENT:Lorg/bson/AbstractBsonWriter$State;

    if-ne v0, v1, :cond_b

    .line 2
    sget-object v0, Lorg/bson/BsonContextType;->SCOPE_DOCUMENT:Lorg/bson/BsonContextType;

    goto :goto_d

    .line 3
    :cond_b
    sget-object v0, Lorg/bson/BsonContextType;->DOCUMENT:Lorg/bson/BsonContextType;

    .line 4
    :goto_d
    invoke-virtual {p0}, Lorg/bson/BSONCallbackAdapter;->getContext()Lorg/bson/BSONCallbackAdapter$Context;

    move-result-object v1

    if-eqz v1, :cond_22

    sget-object v1, Lorg/bson/BsonContextType;->SCOPE_DOCUMENT:Lorg/bson/BsonContextType;

    if-ne v0, v1, :cond_18

    goto :goto_22

    .line 5
    :cond_18
    iget-object v1, p0, Lorg/bson/BSONCallbackAdapter;->bsonCallback:Lorg/bson/BSONCallback;

    invoke-virtual {p0}, Lorg/bson/BSONCallbackAdapter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/bson/BSONCallback;->objectStart(Ljava/lang/String;)V

    goto :goto_27

    .line 6
    :cond_22
    :goto_22
    iget-object v1, p0, Lorg/bson/BSONCallbackAdapter;->bsonCallback:Lorg/bson/BSONCallback;

    invoke-interface {v1}, Lorg/bson/BSONCallback;->objectStart()V

    .line 7
    :goto_27
    new-instance v1, Lorg/bson/BSONCallbackAdapter$Context;

    invoke-virtual {p0}, Lorg/bson/BSONCallbackAdapter;->getContext()Lorg/bson/BSONCallbackAdapter$Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lorg/bson/BSONCallbackAdapter$Context;-><init>(Lorg/bson/BSONCallbackAdapter;Lorg/bson/BSONCallbackAdapter$Context;Lorg/bson/BsonContextType;)V

    invoke-virtual {p0, v1}, Lorg/bson/AbstractBsonWriter;->setContext(Lorg/bson/AbstractBsonWriter$Context;)V

    return-void
.end method

.method public doWriteString(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lorg/bson/BSONCallbackAdapter;->bsonCallback:Lorg/bson/BSONCallback;

    invoke-virtual {p0}, Lorg/bson/BSONCallbackAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/bson/BSONCallback;->gotString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public doWriteSymbol(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lorg/bson/BSONCallbackAdapter;->bsonCallback:Lorg/bson/BSONCallback;

    invoke-virtual {p0}, Lorg/bson/BSONCallbackAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/bson/BSONCallback;->gotSymbol(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public doWriteTimestamp(Lorg/bson/BsonTimestamp;)V
    .registers 5

    iget-object v0, p0, Lorg/bson/BSONCallbackAdapter;->bsonCallback:Lorg/bson/BSONCallback;

    invoke-virtual {p0}, Lorg/bson/BSONCallbackAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bson/BsonTimestamp;->getTime()I

    move-result v2

    invoke-virtual {p1}, Lorg/bson/BsonTimestamp;->getInc()I

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lorg/bson/BSONCallback;->gotTimestamp(Ljava/lang/String;II)V

    return-void
.end method

.method public doWriteUndefined()V
    .registers 3

    iget-object v0, p0, Lorg/bson/BSONCallbackAdapter;->bsonCallback:Lorg/bson/BSONCallback;

    invoke-virtual {p0}, Lorg/bson/BSONCallbackAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bson/BSONCallback;->gotUndefined(Ljava/lang/String;)V

    return-void
.end method

.method public flush()V
    .registers 1

    return-void
.end method

.method public final bridge synthetic getContext()Lorg/bson/AbstractBsonWriter$Context;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/bson/BSONCallbackAdapter;->getContext()Lorg/bson/BSONCallbackAdapter$Context;

    move-result-object v0

    return-object v0
.end method

.method public final getContext()Lorg/bson/BSONCallbackAdapter$Context;
    .registers 2

    .line 2
    invoke-super {p0}, Lorg/bson/AbstractBsonWriter;->getContext()Lorg/bson/AbstractBsonWriter$Context;

    move-result-object v0

    check-cast v0, Lorg/bson/BSONCallbackAdapter$Context;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/bson/BSONCallbackAdapter;->getContext()Lorg/bson/BSONCallbackAdapter$Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/AbstractBsonWriter$Context;->getContextType()Lorg/bson/BsonContextType;

    move-result-object v0

    sget-object v1, Lorg/bson/BsonContextType;->ARRAY:Lorg/bson/BsonContextType;

    if-ne v0, v1, :cond_19

    .line 2
    invoke-virtual {p0}, Lorg/bson/BSONCallbackAdapter;->getContext()Lorg/bson/BSONCallbackAdapter$Context;

    move-result-object v0

    # operator++ for: Lorg/bson/BSONCallbackAdapter$Context;->index:I
    invoke-static {v0}, Lorg/bson/BSONCallbackAdapter$Context;->access$308(Lorg/bson/BSONCallbackAdapter$Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_19
    invoke-super {p0}, Lorg/bson/AbstractBsonWriter;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
