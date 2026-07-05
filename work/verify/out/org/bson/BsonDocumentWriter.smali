.class public Lorg/bson/BsonDocumentWriter;
.super Lorg/bson/AbstractBsonWriter;
.source "BsonDocumentWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bson/BsonDocumentWriter$Context;
    }
.end annotation


# instance fields
.field private final document:Lorg/bson/BsonDocument;


# direct methods
.method public constructor <init>(Lorg/bson/BsonDocument;)V
    .registers 3

    .line 1
    new-instance v0, Lorg/bson/BsonWriterSettings;

    invoke-direct {v0}, Lorg/bson/BsonWriterSettings;-><init>()V

    invoke-direct {p0, v0}, Lorg/bson/AbstractBsonWriter;-><init>(Lorg/bson/BsonWriterSettings;)V

    .line 2
    iput-object p1, p0, Lorg/bson/BsonDocumentWriter;->document:Lorg/bson/BsonDocument;

    .line 3
    new-instance p1, Lorg/bson/BsonDocumentWriter$Context;

    invoke-direct {p1, p0}, Lorg/bson/BsonDocumentWriter$Context;-><init>(Lorg/bson/BsonDocumentWriter;)V

    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->setContext(Lorg/bson/AbstractBsonWriter$Context;)V

    return-void
.end method

.method private write(Lorg/bson/BsonValue;)V
    .registers 3

    invoke-virtual {p0}, Lorg/bson/BsonDocumentWriter;->getContext()Lorg/bson/BsonDocumentWriter$Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bson/BsonDocumentWriter$Context;->add(Lorg/bson/BsonValue;)V

    return-void
.end method


# virtual methods
.method public final doWriteBinaryData(Lorg/bson/BsonBinary;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/bson/BsonDocumentWriter;->write(Lorg/bson/BsonValue;)V

    return-void
.end method

.method public doWriteBoolean(Z)V
    .registers 2

    invoke-static {p1}, Lorg/bson/BsonBoolean;->valueOf(Z)Lorg/bson/BsonBoolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bson/BsonDocumentWriter;->write(Lorg/bson/BsonValue;)V

    return-void
.end method

.method public final doWriteDBPointer(Lorg/bson/BsonDbPointer;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/bson/BsonDocumentWriter;->write(Lorg/bson/BsonValue;)V

    return-void
.end method

.method public final doWriteDateTime(J)V
    .registers 4

    new-instance v0, Lorg/bson/BsonDateTime;

    invoke-direct {v0, p1, p2}, Lorg/bson/BsonDateTime;-><init>(J)V

    invoke-direct {p0, v0}, Lorg/bson/BsonDocumentWriter;->write(Lorg/bson/BsonValue;)V

    return-void
.end method

.method public final doWriteDecimal128(Lorg/bson/types/Decimal128;)V
    .registers 3

    new-instance v0, Lorg/bson/BsonDecimal128;

    invoke-direct {v0, p1}, Lorg/bson/BsonDecimal128;-><init>(Lorg/bson/types/Decimal128;)V

    invoke-direct {p0, v0}, Lorg/bson/BsonDocumentWriter;->write(Lorg/bson/BsonValue;)V

    return-void
.end method

.method public final doWriteDouble(D)V
    .registers 4

    new-instance v0, Lorg/bson/BsonDouble;

    invoke-direct {v0, p1, p2}, Lorg/bson/BsonDouble;-><init>(D)V

    invoke-direct {p0, v0}, Lorg/bson/BsonDocumentWriter;->write(Lorg/bson/BsonValue;)V

    return-void
.end method

.method public final doWriteEndArray()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/bson/BsonDocumentWriter;->getContext()Lorg/bson/BsonDocumentWriter$Context;

    move-result-object v0

    # getter for: Lorg/bson/BsonDocumentWriter$Context;->container:Lorg/bson/BsonValue;
    invoke-static {v0}, Lorg/bson/BsonDocumentWriter$Context;->access$000(Lorg/bson/BsonDocumentWriter$Context;)Lorg/bson/BsonValue;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lorg/bson/BsonDocumentWriter;->getContext()Lorg/bson/BsonDocumentWriter$Context;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bson/AbstractBsonWriter$Context;->getParentContext()Lorg/bson/AbstractBsonWriter$Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/bson/AbstractBsonWriter;->setContext(Lorg/bson/AbstractBsonWriter$Context;)V

    .line 3
    invoke-direct {p0, v0}, Lorg/bson/BsonDocumentWriter;->write(Lorg/bson/BsonValue;)V

    return-void
.end method

.method public final doWriteEndDocument()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lorg/bson/BsonDocumentWriter;->getContext()Lorg/bson/BsonDocumentWriter$Context;

    move-result-object v0

    # getter for: Lorg/bson/BsonDocumentWriter$Context;->container:Lorg/bson/BsonValue;
    invoke-static {v0}, Lorg/bson/BsonDocumentWriter$Context;->access$000(Lorg/bson/BsonDocumentWriter$Context;)Lorg/bson/BsonValue;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lorg/bson/BsonDocumentWriter;->getContext()Lorg/bson/BsonDocumentWriter$Context;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bson/AbstractBsonWriter$Context;->getParentContext()Lorg/bson/AbstractBsonWriter$Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/bson/AbstractBsonWriter;->setContext(Lorg/bson/AbstractBsonWriter$Context;)V

    .line 3
    invoke-virtual {p0}, Lorg/bson/BsonDocumentWriter;->getContext()Lorg/bson/BsonDocumentWriter$Context;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bson/AbstractBsonWriter$Context;->getContextType()Lorg/bson/BsonContextType;

    move-result-object v1

    sget-object v2, Lorg/bson/BsonContextType;->JAVASCRIPT_WITH_SCOPE:Lorg/bson/BsonContextType;

    if-ne v1, v2, :cond_43

    .line 4
    check-cast v0, Lorg/bson/BsonDocument;

    .line 5
    invoke-virtual {p0}, Lorg/bson/BsonDocumentWriter;->getContext()Lorg/bson/BsonDocumentWriter$Context;

    move-result-object v1

    # getter for: Lorg/bson/BsonDocumentWriter$Context;->container:Lorg/bson/BsonValue;
    invoke-static {v1}, Lorg/bson/BsonDocumentWriter$Context;->access$000(Lorg/bson/BsonDocumentWriter$Context;)Lorg/bson/BsonValue;

    move-result-object v1

    check-cast v1, Lorg/bson/BsonString;

    .line 6
    invoke-virtual {p0}, Lorg/bson/BsonDocumentWriter;->getContext()Lorg/bson/BsonDocumentWriter$Context;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bson/AbstractBsonWriter$Context;->getParentContext()Lorg/bson/AbstractBsonWriter$Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/bson/AbstractBsonWriter;->setContext(Lorg/bson/AbstractBsonWriter$Context;)V

    .line 7
    new-instance v2, Lorg/bson/BsonJavaScriptWithScope;

    invoke-virtual {v1}, Lorg/bson/BsonString;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/bson/BsonJavaScriptWithScope;-><init>(Ljava/lang/String;Lorg/bson/BsonDocument;)V

    invoke-direct {p0, v2}, Lorg/bson/BsonDocumentWriter;->write(Lorg/bson/BsonValue;)V

    goto :goto_52

    .line 8
    :cond_43
    invoke-virtual {p0}, Lorg/bson/BsonDocumentWriter;->getContext()Lorg/bson/BsonDocumentWriter$Context;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bson/AbstractBsonWriter$Context;->getContextType()Lorg/bson/BsonContextType;

    move-result-object v1

    sget-object v2, Lorg/bson/BsonContextType;->TOP_LEVEL:Lorg/bson/BsonContextType;

    if-eq v1, v2, :cond_52

    .line 9
    invoke-direct {p0, v0}, Lorg/bson/BsonDocumentWriter;->write(Lorg/bson/BsonValue;)V

    :cond_52
    :goto_52
    return-void
.end method

.method public final doWriteInt32(I)V
    .registers 3

    new-instance v0, Lorg/bson/BsonInt32;

    invoke-direct {v0, p1}, Lorg/bson/BsonInt32;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/bson/BsonDocumentWriter;->write(Lorg/bson/BsonValue;)V

    return-void
.end method

.method public final doWriteInt64(J)V
    .registers 4

    new-instance v0, Lorg/bson/BsonInt64;

    invoke-direct {v0, p1, p2}, Lorg/bson/BsonInt64;-><init>(J)V

    invoke-direct {p0, v0}, Lorg/bson/BsonDocumentWriter;->write(Lorg/bson/BsonValue;)V

    return-void
.end method

.method public final doWriteJavaScript(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lorg/bson/BsonJavaScript;

    invoke-direct {v0, p1}, Lorg/bson/BsonJavaScript;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/bson/BsonDocumentWriter;->write(Lorg/bson/BsonValue;)V

    return-void
.end method

.method public final doWriteJavaScriptWithScope(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lorg/bson/BsonDocumentWriter$Context;

    new-instance v1, Lorg/bson/BsonString;

    invoke-direct {v1, p1}, Lorg/bson/BsonString;-><init>(Ljava/lang/String;)V

    sget-object p1, Lorg/bson/BsonContextType;->JAVASCRIPT_WITH_SCOPE:Lorg/bson/BsonContextType;

    invoke-virtual {p0}, Lorg/bson/BsonDocumentWriter;->getContext()Lorg/bson/BsonDocumentWriter$Context;

    move-result-object v2

    invoke-direct {v0, p0, v1, p1, v2}, Lorg/bson/BsonDocumentWriter$Context;-><init>(Lorg/bson/BsonDocumentWriter;Lorg/bson/BsonValue;Lorg/bson/BsonContextType;Lorg/bson/BsonDocumentWriter$Context;)V

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonWriter;->setContext(Lorg/bson/AbstractBsonWriter$Context;)V

    return-void
.end method

.method public final doWriteMaxKey()V
    .registers 2

    new-instance v0, Lorg/bson/BsonMaxKey;

    invoke-direct {v0}, Lorg/bson/BsonMaxKey;-><init>()V

    invoke-direct {p0, v0}, Lorg/bson/BsonDocumentWriter;->write(Lorg/bson/BsonValue;)V

    return-void
.end method

.method public final doWriteMinKey()V
    .registers 2

    new-instance v0, Lorg/bson/BsonMinKey;

    invoke-direct {v0}, Lorg/bson/BsonMinKey;-><init>()V

    invoke-direct {p0, v0}, Lorg/bson/BsonDocumentWriter;->write(Lorg/bson/BsonValue;)V

    return-void
.end method

.method public doWriteNull()V
    .registers 2

    sget-object v0, Lorg/bson/BsonNull;->VALUE:Lorg/bson/BsonNull;

    invoke-direct {p0, v0}, Lorg/bson/BsonDocumentWriter;->write(Lorg/bson/BsonValue;)V

    return-void
.end method

.method public doWriteObjectId(Lorg/bson/types/ObjectId;)V
    .registers 3

    new-instance v0, Lorg/bson/BsonObjectId;

    invoke-direct {v0, p1}, Lorg/bson/BsonObjectId;-><init>(Lorg/bson/types/ObjectId;)V

    invoke-direct {p0, v0}, Lorg/bson/BsonDocumentWriter;->write(Lorg/bson/BsonValue;)V

    return-void
.end method

.method public doWriteRegularExpression(Lorg/bson/BsonRegularExpression;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/bson/BsonDocumentWriter;->write(Lorg/bson/BsonValue;)V

    return-void
.end method

.method public final doWriteStartArray()V
    .registers 5

    new-instance v0, Lorg/bson/BsonDocumentWriter$Context;

    new-instance v1, Lorg/bson/BsonArray;

    invoke-direct {v1}, Lorg/bson/BsonArray;-><init>()V

    sget-object v2, Lorg/bson/BsonContextType;->ARRAY:Lorg/bson/BsonContextType;

    invoke-virtual {p0}, Lorg/bson/BsonDocumentWriter;->getContext()Lorg/bson/BsonDocumentWriter$Context;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/bson/BsonDocumentWriter$Context;-><init>(Lorg/bson/BsonDocumentWriter;Lorg/bson/BsonValue;Lorg/bson/BsonContextType;Lorg/bson/BsonDocumentWriter$Context;)V

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonWriter;->setContext(Lorg/bson/AbstractBsonWriter$Context;)V

    return-void
.end method

.method public final doWriteStartDocument()V
    .registers 5

    .line 1
    sget-object v0, Lorg/bson/BsonDocumentWriter$1;->$SwitchMap$org$bson$AbstractBsonWriter$State:[I

    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->getState()Lorg/bson/AbstractBsonWriter$State;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_54

    const/4 v1, 0x2

    if-eq v0, v1, :cond_40

    const/4 v1, 0x3

    if-ne v0, v1, :cond_29

    .line 2
    new-instance v0, Lorg/bson/BsonDocumentWriter$Context;

    new-instance v1, Lorg/bson/BsonDocument;

    invoke-direct {v1}, Lorg/bson/BsonDocument;-><init>()V

    sget-object v2, Lorg/bson/BsonContextType;->SCOPE_DOCUMENT:Lorg/bson/BsonContextType;

    invoke-virtual {p0}, Lorg/bson/BsonDocumentWriter;->getContext()Lorg/bson/BsonDocumentWriter$Context;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/bson/BsonDocumentWriter$Context;-><init>(Lorg/bson/BsonDocumentWriter;Lorg/bson/BsonValue;Lorg/bson/BsonContextType;Lorg/bson/BsonDocumentWriter$Context;)V

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonWriter;->setContext(Lorg/bson/AbstractBsonWriter$Context;)V

    goto :goto_64

    .line 3
    :cond_29
    new-instance v0, Lorg/bson/BsonInvalidOperationException;

    const-string v1, "Unexpected state "

    .line 4
    invoke-static {v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->getState()Lorg/bson/AbstractBsonWriter$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bson/BsonInvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_40
    new-instance v0, Lorg/bson/BsonDocumentWriter$Context;

    new-instance v1, Lorg/bson/BsonDocument;

    invoke-direct {v1}, Lorg/bson/BsonDocument;-><init>()V

    sget-object v2, Lorg/bson/BsonContextType;->DOCUMENT:Lorg/bson/BsonContextType;

    invoke-virtual {p0}, Lorg/bson/BsonDocumentWriter;->getContext()Lorg/bson/BsonDocumentWriter$Context;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/bson/BsonDocumentWriter$Context;-><init>(Lorg/bson/BsonDocumentWriter;Lorg/bson/BsonValue;Lorg/bson/BsonContextType;Lorg/bson/BsonDocumentWriter$Context;)V

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonWriter;->setContext(Lorg/bson/AbstractBsonWriter$Context;)V

    goto :goto_64

    .line 7
    :cond_54
    new-instance v0, Lorg/bson/BsonDocumentWriter$Context;

    iget-object v1, p0, Lorg/bson/BsonDocumentWriter;->document:Lorg/bson/BsonDocument;

    sget-object v2, Lorg/bson/BsonContextType;->DOCUMENT:Lorg/bson/BsonContextType;

    invoke-virtual {p0}, Lorg/bson/BsonDocumentWriter;->getContext()Lorg/bson/BsonDocumentWriter$Context;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/bson/BsonDocumentWriter$Context;-><init>(Lorg/bson/BsonDocumentWriter;Lorg/bson/BsonValue;Lorg/bson/BsonContextType;Lorg/bson/BsonDocumentWriter$Context;)V

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonWriter;->setContext(Lorg/bson/AbstractBsonWriter$Context;)V

    :goto_64
    return-void
.end method

.method public doWriteString(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lorg/bson/BsonString;

    invoke-direct {v0, p1}, Lorg/bson/BsonString;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/bson/BsonDocumentWriter;->write(Lorg/bson/BsonValue;)V

    return-void
.end method

.method public doWriteSymbol(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lorg/bson/BsonSymbol;

    invoke-direct {v0, p1}, Lorg/bson/BsonSymbol;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/bson/BsonDocumentWriter;->write(Lorg/bson/BsonValue;)V

    return-void
.end method

.method public doWriteTimestamp(Lorg/bson/BsonTimestamp;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/bson/BsonDocumentWriter;->write(Lorg/bson/BsonValue;)V

    return-void
.end method

.method public doWriteUndefined()V
    .registers 2

    new-instance v0, Lorg/bson/BsonUndefined;

    invoke-direct {v0}, Lorg/bson/BsonUndefined;-><init>()V

    invoke-direct {p0, v0}, Lorg/bson/BsonDocumentWriter;->write(Lorg/bson/BsonValue;)V

    return-void
.end method

.method public flush()V
    .registers 1

    return-void
.end method

.method public final bridge synthetic getContext()Lorg/bson/AbstractBsonWriter$Context;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/bson/BsonDocumentWriter;->getContext()Lorg/bson/BsonDocumentWriter$Context;

    move-result-object v0

    return-object v0
.end method

.method public final getContext()Lorg/bson/BsonDocumentWriter$Context;
    .registers 2

    .line 2
    invoke-super {p0}, Lorg/bson/AbstractBsonWriter;->getContext()Lorg/bson/AbstractBsonWriter$Context;

    move-result-object v0

    check-cast v0, Lorg/bson/BsonDocumentWriter$Context;

    return-object v0
.end method

.method public getDocument()Lorg/bson/BsonDocument;
    .registers 2

    iget-object v0, p0, Lorg/bson/BsonDocumentWriter;->document:Lorg/bson/BsonDocument;

    return-object v0
.end method
