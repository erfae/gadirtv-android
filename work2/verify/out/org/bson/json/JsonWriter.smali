.class public Lorg/bson/json/JsonWriter;
.super Lorg/bson/AbstractBsonWriter;
.source "JsonWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bson/json/JsonWriter$Context;
    }
.end annotation


# instance fields
.field private final settings:Lorg/bson/json/JsonWriterSettings;

.field private final strictJsonWriter:Lorg/bson/json/StrictCharacterStreamJsonWriter;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .registers 3

    .line 1
    new-instance v0, Lorg/bson/json/JsonWriterSettings;

    invoke-direct {v0}, Lorg/bson/json/JsonWriterSettings;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/bson/json/JsonWriter;-><init>(Ljava/io/Writer;Lorg/bson/json/JsonWriterSettings;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Lorg/bson/json/JsonWriterSettings;)V
    .registers 6

    .line 2
    invoke-direct {p0, p2}, Lorg/bson/AbstractBsonWriter;-><init>(Lorg/bson/BsonWriterSettings;)V

    .line 3
    iput-object p2, p0, Lorg/bson/json/JsonWriter;->settings:Lorg/bson/json/JsonWriterSettings;

    .line 4
    new-instance v0, Lorg/bson/json/JsonWriter$Context;

    sget-object v1, Lorg/bson/BsonContextType;->TOP_LEVEL:Lorg/bson/BsonContextType;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Lorg/bson/json/JsonWriter$Context;-><init>(Lorg/bson/json/JsonWriter;Lorg/bson/json/JsonWriter$Context;Lorg/bson/BsonContextType;)V

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonWriter;->setContext(Lorg/bson/AbstractBsonWriter$Context;)V

    .line 5
    new-instance v0, Lorg/bson/json/StrictCharacterStreamJsonWriter;

    invoke-static {}, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;->builder()Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;

    move-result-object v1

    .line 6
    invoke-virtual {p2}, Lorg/bson/json/JsonWriterSettings;->isIndent()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;->indent(Z)Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;

    move-result-object v1

    .line 7
    invoke-virtual {p2}, Lorg/bson/json/JsonWriterSettings;->getNewLineCharacters()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;->newLineCharacters(Ljava/lang/String;)Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;

    move-result-object v1

    .line 8
    invoke-virtual {p2}, Lorg/bson/json/JsonWriterSettings;->getIndentCharacters()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;->indentCharacters(Ljava/lang/String;)Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;

    move-result-object v1

    .line 9
    invoke-virtual {p2}, Lorg/bson/json/JsonWriterSettings;->getMaxLength()I

    move-result p2

    invoke-virtual {v1, p2}, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;->maxLength(I)Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;

    move-result-object p2

    .line 10
    invoke-virtual {p2}, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;->build()Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lorg/bson/json/StrictCharacterStreamJsonWriter;-><init>(Ljava/io/Writer;Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;)V

    iput-object v0, p0, Lorg/bson/json/JsonWriter;->strictJsonWriter:Lorg/bson/json/StrictCharacterStreamJsonWriter;

    return-void
.end method


# virtual methods
.method public final abortPipe()Z
    .registers 2

    iget-object v0, p0, Lorg/bson/json/JsonWriter;->strictJsonWriter:Lorg/bson/json/StrictCharacterStreamJsonWriter;

    invoke-virtual {v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->isTruncated()Z

    move-result v0

    return v0
.end method

.method public final doWriteBinaryData(Lorg/bson/BsonBinary;)V
    .registers 4

    iget-object v0, p0, Lorg/bson/json/JsonWriter;->settings:Lorg/bson/json/JsonWriterSettings;

    invoke-virtual {v0}, Lorg/bson/json/JsonWriterSettings;->getBinaryConverter()Lorg/bson/json/Converter;

    move-result-object v0

    iget-object v1, p0, Lorg/bson/json/JsonWriter;->strictJsonWriter:Lorg/bson/json/StrictCharacterStreamJsonWriter;

    invoke-interface {v0, p1, v1}, Lorg/bson/json/Converter;->convert(Ljava/lang/Object;Lorg/bson/json/StrictJsonWriter;)V

    return-void
.end method

.method public doWriteBoolean(Z)V
    .registers 4

    iget-object v0, p0, Lorg/bson/json/JsonWriter;->settings:Lorg/bson/json/JsonWriterSettings;

    invoke-virtual {v0}, Lorg/bson/json/JsonWriterSettings;->getBooleanConverter()Lorg/bson/json/Converter;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object v1, p0, Lorg/bson/json/JsonWriter;->strictJsonWriter:Lorg/bson/json/StrictCharacterStreamJsonWriter;

    invoke-interface {v0, p1, v1}, Lorg/bson/json/Converter;->convert(Ljava/lang/Object;Lorg/bson/json/StrictJsonWriter;)V

    return-void
.end method

.method public final doWriteDBPointer(Lorg/bson/BsonDbPointer;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/bson/json/JsonWriter;->settings:Lorg/bson/json/JsonWriterSettings;

    invoke-virtual {v0}, Lorg/bson/json/JsonWriterSettings;->getOutputMode()Lorg/bson/json/JsonMode;

    move-result-object v0

    sget-object v1, Lorg/bson/json/JsonMode;->EXTENDED:Lorg/bson/json/JsonMode;

    if-ne v0, v1, :cond_15

    .line 2
    new-instance v0, Lorg/bson/json/JsonWriter$1;

    invoke-direct {v0, p0}, Lorg/bson/json/JsonWriter$1;-><init>(Lorg/bson/json/JsonWriter;)V

    iget-object v1, p0, Lorg/bson/json/JsonWriter;->strictJsonWriter:Lorg/bson/json/StrictCharacterStreamJsonWriter;

    .line 3
    invoke-virtual {v0, p1, v1}, Lorg/bson/json/JsonWriter$1;->convert(Lorg/bson/BsonDbPointer;Lorg/bson/json/StrictJsonWriter;)V

    goto :goto_1f

    .line 4
    :cond_15
    new-instance v0, Lorg/bson/json/JsonWriter$2;

    invoke-direct {v0, p0}, Lorg/bson/json/JsonWriter$2;-><init>(Lorg/bson/json/JsonWriter;)V

    iget-object v1, p0, Lorg/bson/json/JsonWriter;->strictJsonWriter:Lorg/bson/json/StrictCharacterStreamJsonWriter;

    .line 5
    invoke-virtual {v0, p1, v1}, Lorg/bson/json/JsonWriter$2;->convert(Lorg/bson/BsonDbPointer;Lorg/bson/json/StrictJsonWriter;)V

    :goto_1f
    return-void
.end method

.method public final doWriteDateTime(J)V
    .registers 4

    iget-object v0, p0, Lorg/bson/json/JsonWriter;->settings:Lorg/bson/json/JsonWriterSettings;

    invoke-virtual {v0}, Lorg/bson/json/JsonWriterSettings;->getDateTimeConverter()Lorg/bson/json/Converter;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object p2, p0, Lorg/bson/json/JsonWriter;->strictJsonWriter:Lorg/bson/json/StrictCharacterStreamJsonWriter;

    invoke-interface {v0, p1, p2}, Lorg/bson/json/Converter;->convert(Ljava/lang/Object;Lorg/bson/json/StrictJsonWriter;)V

    return-void
.end method

.method public final doWriteDecimal128(Lorg/bson/types/Decimal128;)V
    .registers 4

    iget-object v0, p0, Lorg/bson/json/JsonWriter;->settings:Lorg/bson/json/JsonWriterSettings;

    invoke-virtual {v0}, Lorg/bson/json/JsonWriterSettings;->getDecimal128Converter()Lorg/bson/json/Converter;

    move-result-object v0

    iget-object v1, p0, Lorg/bson/json/JsonWriter;->strictJsonWriter:Lorg/bson/json/StrictCharacterStreamJsonWriter;

    invoke-interface {v0, p1, v1}, Lorg/bson/json/Converter;->convert(Ljava/lang/Object;Lorg/bson/json/StrictJsonWriter;)V

    return-void
.end method

.method public final doWriteDouble(D)V
    .registers 4

    iget-object v0, p0, Lorg/bson/json/JsonWriter;->settings:Lorg/bson/json/JsonWriterSettings;

    invoke-virtual {v0}, Lorg/bson/json/JsonWriterSettings;->getDoubleConverter()Lorg/bson/json/Converter;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iget-object p2, p0, Lorg/bson/json/JsonWriter;->strictJsonWriter:Lorg/bson/json/StrictCharacterStreamJsonWriter;

    invoke-interface {v0, p1, p2}, Lorg/bson/json/Converter;->convert(Ljava/lang/Object;Lorg/bson/json/StrictJsonWriter;)V

    return-void
.end method

.method public final doWriteEndArray()V
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/bson/json/JsonWriter;->strictJsonWriter:Lorg/bson/json/StrictCharacterStreamJsonWriter;

    invoke-virtual {v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->writeEndArray()V

    .line 2
    invoke-virtual {p0}, Lorg/bson/json/JsonWriter;->getContext()Lorg/bson/json/JsonWriter$Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/json/JsonWriter$Context;->getParentContext()Lorg/bson/json/JsonWriter$Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonWriter;->setContext(Lorg/bson/AbstractBsonWriter$Context;)V

    return-void
.end method

.method public final doWriteEndDocument()V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/bson/json/JsonWriter;->strictJsonWriter:Lorg/bson/json/StrictCharacterStreamJsonWriter;

    invoke-virtual {v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->writeEndObject()V

    .line 2
    invoke-virtual {p0}, Lorg/bson/json/JsonWriter;->getContext()Lorg/bson/json/JsonWriter$Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/AbstractBsonWriter$Context;->getContextType()Lorg/bson/BsonContextType;

    move-result-object v0

    sget-object v1, Lorg/bson/BsonContextType;->SCOPE_DOCUMENT:Lorg/bson/BsonContextType;

    if-ne v0, v1, :cond_20

    .line 3
    invoke-virtual {p0}, Lorg/bson/json/JsonWriter;->getContext()Lorg/bson/json/JsonWriter$Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/json/JsonWriter$Context;->getParentContext()Lorg/bson/json/JsonWriter$Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonWriter;->setContext(Lorg/bson/AbstractBsonWriter$Context;)V

    .line 4
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->writeEndDocument()V

    goto :goto_2b

    .line 5
    :cond_20
    invoke-virtual {p0}, Lorg/bson/json/JsonWriter;->getContext()Lorg/bson/json/JsonWriter$Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/json/JsonWriter$Context;->getParentContext()Lorg/bson/json/JsonWriter$Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonWriter;->setContext(Lorg/bson/AbstractBsonWriter$Context;)V

    :goto_2b
    return-void
.end method

.method public final doWriteInt32(I)V
    .registers 4

    iget-object v0, p0, Lorg/bson/json/JsonWriter;->settings:Lorg/bson/json/JsonWriterSettings;

    invoke-virtual {v0}, Lorg/bson/json/JsonWriterSettings;->getInt32Converter()Lorg/bson/json/Converter;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v1, p0, Lorg/bson/json/JsonWriter;->strictJsonWriter:Lorg/bson/json/StrictCharacterStreamJsonWriter;

    invoke-interface {v0, p1, v1}, Lorg/bson/json/Converter;->convert(Ljava/lang/Object;Lorg/bson/json/StrictJsonWriter;)V

    return-void
.end method

.method public final doWriteInt64(J)V
    .registers 4

    iget-object v0, p0, Lorg/bson/json/JsonWriter;->settings:Lorg/bson/json/JsonWriterSettings;

    invoke-virtual {v0}, Lorg/bson/json/JsonWriterSettings;->getInt64Converter()Lorg/bson/json/Converter;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object p2, p0, Lorg/bson/json/JsonWriter;->strictJsonWriter:Lorg/bson/json/StrictCharacterStreamJsonWriter;

    invoke-interface {v0, p1, p2}, Lorg/bson/json/Converter;->convert(Ljava/lang/Object;Lorg/bson/json/StrictJsonWriter;)V

    return-void
.end method

.method public final doWriteJavaScript(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lorg/bson/json/JsonWriter;->settings:Lorg/bson/json/JsonWriterSettings;

    invoke-virtual {v0}, Lorg/bson/json/JsonWriterSettings;->getJavaScriptConverter()Lorg/bson/json/Converter;

    move-result-object v0

    iget-object v1, p0, Lorg/bson/json/JsonWriter;->strictJsonWriter:Lorg/bson/json/StrictCharacterStreamJsonWriter;

    invoke-interface {v0, p1, v1}, Lorg/bson/json/Converter;->convert(Ljava/lang/Object;Lorg/bson/json/StrictJsonWriter;)V

    return-void
.end method

.method public final doWriteJavaScriptWithScope(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->writeStartDocument()V

    const-string v0, "$code"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/bson/AbstractBsonWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "$scope"

    .line 3
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->writeName(Ljava/lang/String;)V

    return-void
.end method

.method public final doWriteMaxKey()V
    .registers 4

    iget-object v0, p0, Lorg/bson/json/JsonWriter;->settings:Lorg/bson/json/JsonWriterSettings;

    invoke-virtual {v0}, Lorg/bson/json/JsonWriterSettings;->getMaxKeyConverter()Lorg/bson/json/Converter;

    move-result-object v0

    iget-object v1, p0, Lorg/bson/json/JsonWriter;->strictJsonWriter:Lorg/bson/json/StrictCharacterStreamJsonWriter;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lorg/bson/json/Converter;->convert(Ljava/lang/Object;Lorg/bson/json/StrictJsonWriter;)V

    return-void
.end method

.method public final doWriteMinKey()V
    .registers 4

    iget-object v0, p0, Lorg/bson/json/JsonWriter;->settings:Lorg/bson/json/JsonWriterSettings;

    invoke-virtual {v0}, Lorg/bson/json/JsonWriterSettings;->getMinKeyConverter()Lorg/bson/json/Converter;

    move-result-object v0

    iget-object v1, p0, Lorg/bson/json/JsonWriter;->strictJsonWriter:Lorg/bson/json/StrictCharacterStreamJsonWriter;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lorg/bson/json/Converter;->convert(Ljava/lang/Object;Lorg/bson/json/StrictJsonWriter;)V

    return-void
.end method

.method public final doWriteName(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lorg/bson/json/JsonWriter;->strictJsonWriter:Lorg/bson/json/StrictCharacterStreamJsonWriter;

    invoke-virtual {v0, p1}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->writeName(Ljava/lang/String;)V

    return-void
.end method

.method public doWriteNull()V
    .registers 4

    iget-object v0, p0, Lorg/bson/json/JsonWriter;->settings:Lorg/bson/json/JsonWriterSettings;

    invoke-virtual {v0}, Lorg/bson/json/JsonWriterSettings;->getNullConverter()Lorg/bson/json/Converter;

    move-result-object v0

    iget-object v1, p0, Lorg/bson/json/JsonWriter;->strictJsonWriter:Lorg/bson/json/StrictCharacterStreamJsonWriter;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lorg/bson/json/Converter;->convert(Ljava/lang/Object;Lorg/bson/json/StrictJsonWriter;)V

    return-void
.end method

.method public doWriteObjectId(Lorg/bson/types/ObjectId;)V
    .registers 4

    iget-object v0, p0, Lorg/bson/json/JsonWriter;->settings:Lorg/bson/json/JsonWriterSettings;

    invoke-virtual {v0}, Lorg/bson/json/JsonWriterSettings;->getObjectIdConverter()Lorg/bson/json/Converter;

    move-result-object v0

    iget-object v1, p0, Lorg/bson/json/JsonWriter;->strictJsonWriter:Lorg/bson/json/StrictCharacterStreamJsonWriter;

    invoke-interface {v0, p1, v1}, Lorg/bson/json/Converter;->convert(Ljava/lang/Object;Lorg/bson/json/StrictJsonWriter;)V

    return-void
.end method

.method public doWriteRegularExpression(Lorg/bson/BsonRegularExpression;)V
    .registers 4

    iget-object v0, p0, Lorg/bson/json/JsonWriter;->settings:Lorg/bson/json/JsonWriterSettings;

    invoke-virtual {v0}, Lorg/bson/json/JsonWriterSettings;->getRegularExpressionConverter()Lorg/bson/json/Converter;

    move-result-object v0

    iget-object v1, p0, Lorg/bson/json/JsonWriter;->strictJsonWriter:Lorg/bson/json/StrictCharacterStreamJsonWriter;

    invoke-interface {v0, p1, v1}, Lorg/bson/json/Converter;->convert(Ljava/lang/Object;Lorg/bson/json/StrictJsonWriter;)V

    return-void
.end method

.method public final doWriteStartArray()V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/bson/json/JsonWriter;->strictJsonWriter:Lorg/bson/json/StrictCharacterStreamJsonWriter;

    invoke-virtual {v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->writeStartArray()V

    .line 2
    new-instance v0, Lorg/bson/json/JsonWriter$Context;

    invoke-virtual {p0}, Lorg/bson/json/JsonWriter;->getContext()Lorg/bson/json/JsonWriter$Context;

    move-result-object v1

    sget-object v2, Lorg/bson/BsonContextType;->ARRAY:Lorg/bson/BsonContextType;

    invoke-direct {v0, p0, v1, v2}, Lorg/bson/json/JsonWriter$Context;-><init>(Lorg/bson/json/JsonWriter;Lorg/bson/json/JsonWriter$Context;Lorg/bson/BsonContextType;)V

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonWriter;->setContext(Lorg/bson/AbstractBsonWriter$Context;)V

    return-void
.end method

.method public final doWriteStartDocument()V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/bson/json/JsonWriter;->strictJsonWriter:Lorg/bson/json/StrictCharacterStreamJsonWriter;

    invoke-virtual {v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->writeStartObject()V

    .line 2
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->getState()Lorg/bson/AbstractBsonWriter$State;

    move-result-object v0

    sget-object v1, Lorg/bson/AbstractBsonWriter$State;->SCOPE_DOCUMENT:Lorg/bson/AbstractBsonWriter$State;

    if-ne v0, v1, :cond_10

    sget-object v0, Lorg/bson/BsonContextType;->SCOPE_DOCUMENT:Lorg/bson/BsonContextType;

    goto :goto_12

    :cond_10
    sget-object v0, Lorg/bson/BsonContextType;->DOCUMENT:Lorg/bson/BsonContextType;

    .line 3
    :goto_12
    new-instance v1, Lorg/bson/json/JsonWriter$Context;

    invoke-virtual {p0}, Lorg/bson/json/JsonWriter;->getContext()Lorg/bson/json/JsonWriter$Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lorg/bson/json/JsonWriter$Context;-><init>(Lorg/bson/json/JsonWriter;Lorg/bson/json/JsonWriter$Context;Lorg/bson/BsonContextType;)V

    invoke-virtual {p0, v1}, Lorg/bson/AbstractBsonWriter;->setContext(Lorg/bson/AbstractBsonWriter$Context;)V

    return-void
.end method

.method public doWriteString(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lorg/bson/json/JsonWriter;->settings:Lorg/bson/json/JsonWriterSettings;

    invoke-virtual {v0}, Lorg/bson/json/JsonWriterSettings;->getStringConverter()Lorg/bson/json/Converter;

    move-result-object v0

    iget-object v1, p0, Lorg/bson/json/JsonWriter;->strictJsonWriter:Lorg/bson/json/StrictCharacterStreamJsonWriter;

    invoke-interface {v0, p1, v1}, Lorg/bson/json/Converter;->convert(Ljava/lang/Object;Lorg/bson/json/StrictJsonWriter;)V

    return-void
.end method

.method public doWriteSymbol(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lorg/bson/json/JsonWriter;->settings:Lorg/bson/json/JsonWriterSettings;

    invoke-virtual {v0}, Lorg/bson/json/JsonWriterSettings;->getSymbolConverter()Lorg/bson/json/Converter;

    move-result-object v0

    iget-object v1, p0, Lorg/bson/json/JsonWriter;->strictJsonWriter:Lorg/bson/json/StrictCharacterStreamJsonWriter;

    invoke-interface {v0, p1, v1}, Lorg/bson/json/Converter;->convert(Ljava/lang/Object;Lorg/bson/json/StrictJsonWriter;)V

    return-void
.end method

.method public doWriteTimestamp(Lorg/bson/BsonTimestamp;)V
    .registers 4

    iget-object v0, p0, Lorg/bson/json/JsonWriter;->settings:Lorg/bson/json/JsonWriterSettings;

    invoke-virtual {v0}, Lorg/bson/json/JsonWriterSettings;->getTimestampConverter()Lorg/bson/json/Converter;

    move-result-object v0

    iget-object v1, p0, Lorg/bson/json/JsonWriter;->strictJsonWriter:Lorg/bson/json/StrictCharacterStreamJsonWriter;

    invoke-interface {v0, p1, v1}, Lorg/bson/json/Converter;->convert(Ljava/lang/Object;Lorg/bson/json/StrictJsonWriter;)V

    return-void
.end method

.method public doWriteUndefined()V
    .registers 4

    iget-object v0, p0, Lorg/bson/json/JsonWriter;->settings:Lorg/bson/json/JsonWriterSettings;

    invoke-virtual {v0}, Lorg/bson/json/JsonWriterSettings;->getUndefinedConverter()Lorg/bson/json/Converter;

    move-result-object v0

    iget-object v1, p0, Lorg/bson/json/JsonWriter;->strictJsonWriter:Lorg/bson/json/StrictCharacterStreamJsonWriter;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lorg/bson/json/Converter;->convert(Ljava/lang/Object;Lorg/bson/json/StrictJsonWriter;)V

    return-void
.end method

.method public flush()V
    .registers 2

    iget-object v0, p0, Lorg/bson/json/JsonWriter;->strictJsonWriter:Lorg/bson/json/StrictCharacterStreamJsonWriter;

    invoke-virtual {v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->flush()V

    return-void
.end method

.method public final bridge synthetic getContext()Lorg/bson/AbstractBsonWriter$Context;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/bson/json/JsonWriter;->getContext()Lorg/bson/json/JsonWriter$Context;

    move-result-object v0

    return-object v0
.end method

.method public final getContext()Lorg/bson/json/JsonWriter$Context;
    .registers 2

    .line 2
    invoke-super {p0}, Lorg/bson/AbstractBsonWriter;->getContext()Lorg/bson/AbstractBsonWriter$Context;

    move-result-object v0

    check-cast v0, Lorg/bson/json/JsonWriter$Context;

    return-object v0
.end method

.method public getWriter()Ljava/io/Writer;
    .registers 2

    iget-object v0, p0, Lorg/bson/json/JsonWriter;->strictJsonWriter:Lorg/bson/json/StrictCharacterStreamJsonWriter;

    invoke-virtual {v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->getWriter()Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public isTruncated()Z
    .registers 2

    iget-object v0, p0, Lorg/bson/json/JsonWriter;->strictJsonWriter:Lorg/bson/json/StrictCharacterStreamJsonWriter;

    invoke-virtual {v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->isTruncated()Z

    move-result v0

    return v0
.end method
