.class public abstract Lorg/bson/AbstractBsonWriter;
.super Ljava/lang/Object;
.source "AbstractBsonWriter.java"

# interfaces
.implements Lorg/bson/BsonWriter;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bson/AbstractBsonWriter$Mark;,
        Lorg/bson/AbstractBsonWriter$Context;,
        Lorg/bson/AbstractBsonWriter$State;
    }
.end annotation


# instance fields
.field private closed:Z

.field private context:Lorg/bson/AbstractBsonWriter$Context;

.field private final fieldNameValidatorStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lorg/bson/FieldNameValidator;",
            ">;"
        }
    .end annotation
.end field

.field private serializationDepth:I

.field private final settings:Lorg/bson/BsonWriterSettings;

.field private state:Lorg/bson/AbstractBsonWriter$State;


# direct methods
.method public constructor <init>(Lorg/bson/BsonWriterSettings;)V
    .registers 3

    .line 1
    new-instance v0, Lorg/bson/NoOpFieldNameValidator;

    invoke-direct {v0}, Lorg/bson/NoOpFieldNameValidator;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/bson/AbstractBsonWriter;-><init>(Lorg/bson/BsonWriterSettings;Lorg/bson/FieldNameValidator;)V

    return-void
.end method

.method public constructor <init>(Lorg/bson/BsonWriterSettings;Lorg/bson/FieldNameValidator;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/bson/AbstractBsonWriter;->fieldNameValidatorStack:Ljava/util/Stack;

    if-eqz p2, :cond_16

    .line 4
    iput-object p1, p0, Lorg/bson/AbstractBsonWriter;->settings:Lorg/bson/BsonWriterSettings;

    .line 5
    invoke-virtual {v0, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object p1, Lorg/bson/AbstractBsonWriter$State;->INITIAL:Lorg/bson/AbstractBsonWriter$State;

    iput-object p1, p0, Lorg/bson/AbstractBsonWriter;->state:Lorg/bson/AbstractBsonWriter$State;

    return-void

    .line 7
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Validator can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$100(Lorg/bson/AbstractBsonWriter;)Lorg/bson/AbstractBsonWriter$Context;
    .registers 1

    iget-object p0, p0, Lorg/bson/AbstractBsonWriter;->context:Lorg/bson/AbstractBsonWriter$Context;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/bson/AbstractBsonWriter;)Lorg/bson/AbstractBsonWriter$State;
    .registers 1

    iget-object p0, p0, Lorg/bson/AbstractBsonWriter;->state:Lorg/bson/AbstractBsonWriter$State;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/bson/AbstractBsonWriter;)I
    .registers 1

    iget p0, p0, Lorg/bson/AbstractBsonWriter;->serializationDepth:I

    return p0
.end method

.method public static synthetic access$302(Lorg/bson/AbstractBsonWriter;I)I
    .registers 2

    iput p1, p0, Lorg/bson/AbstractBsonWriter;->serializationDepth:I

    return p1
.end method

.method private pipeArray(Lorg/bson/BsonArray;)V
    .registers 3

    .line 8
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->writeStartArray()V

    .line 9
    invoke-virtual {p1}, Lorg/bson/BsonArray;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bson/BsonValue;

    .line 10
    invoke-direct {p0, v0}, Lorg/bson/AbstractBsonWriter;->pipeValue(Lorg/bson/BsonValue;)V

    goto :goto_7

    .line 11
    :cond_17
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->writeEndArray()V

    return-void
.end method

.method private pipeArray(Lorg/bson/BsonReader;)V
    .registers 4

    .line 1
    invoke-interface {p1}, Lorg/bson/BsonReader;->readStartArray()V

    .line 2
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->writeStartArray()V

    .line 3
    :cond_6
    invoke-interface {p1}, Lorg/bson/BsonReader;->readBsonType()Lorg/bson/BsonType;

    move-result-object v0

    sget-object v1, Lorg/bson/BsonType;->END_OF_DOCUMENT:Lorg/bson/BsonType;

    if-eq v0, v1, :cond_18

    .line 4
    invoke-direct {p0, p1}, Lorg/bson/AbstractBsonWriter;->pipeValue(Lorg/bson/BsonReader;)V

    .line 5
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->abortPipe()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 6
    :cond_18
    invoke-interface {p1}, Lorg/bson/BsonReader;->readEndArray()V

    .line 7
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->writeEndArray()V

    return-void
.end method

.method private pipeDocument(Lorg/bson/BsonDocument;)V
    .registers 4

    .line 10
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->writeStartDocument()V

    .line 11
    invoke-virtual {p1}, Lorg/bson/BsonDocument;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 12
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/bson/AbstractBsonWriter;->writeName(Ljava/lang/String;)V

    .line 13
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bson/BsonValue;

    invoke-direct {p0, v0}, Lorg/bson/AbstractBsonWriter;->pipeValue(Lorg/bson/BsonValue;)V

    goto :goto_b

    .line 14
    :cond_2a
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->writeEndDocument()V

    return-void
.end method

.method private pipeDocument(Lorg/bson/BsonReader;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bson/BsonReader;",
            "Ljava/util/List<",
            "Lorg/bson/BsonElement;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lorg/bson/BsonReader;->readStartDocument()V

    .line 2
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->writeStartDocument()V

    .line 3
    :cond_6
    invoke-interface {p1}, Lorg/bson/BsonReader;->readBsonType()Lorg/bson/BsonType;

    move-result-object v0

    sget-object v1, Lorg/bson/BsonType;->END_OF_DOCUMENT:Lorg/bson/BsonType;

    if-eq v0, v1, :cond_1f

    .line 4
    invoke-interface {p1}, Lorg/bson/BsonReader;->readName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonWriter;->writeName(Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1}, Lorg/bson/AbstractBsonWriter;->pipeValue(Lorg/bson/BsonReader;)V

    .line 6
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->abortPipe()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 7
    :cond_1f
    invoke-interface {p1}, Lorg/bson/BsonReader;->readEndDocument()V

    if-eqz p2, :cond_27

    .line 8
    invoke-virtual {p0, p2}, Lorg/bson/AbstractBsonWriter;->pipeExtraElements(Ljava/util/List;)V

    .line 9
    :cond_27
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->writeEndDocument()V

    return-void
.end method

.method private pipeJavascriptWithScope(Lorg/bson/BsonJavaScriptWithScope;)V
    .registers 3

    .line 3
    invoke-virtual {p1}, Lorg/bson/BsonJavaScriptWithScope;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonWriter;->writeJavaScriptWithScope(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lorg/bson/BsonJavaScriptWithScope;->getScope()Lorg/bson/BsonDocument;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bson/AbstractBsonWriter;->pipeDocument(Lorg/bson/BsonDocument;)V

    return-void
.end method

.method private pipeJavascriptWithScope(Lorg/bson/BsonReader;)V
    .registers 3

    .line 1
    invoke-interface {p1}, Lorg/bson/BsonReader;->readJavaScriptWithScope()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bson/AbstractBsonWriter;->writeJavaScriptWithScope(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lorg/bson/AbstractBsonWriter;->pipeDocument(Lorg/bson/BsonReader;Ljava/util/List;)V

    return-void
.end method

.method private pipeValue(Lorg/bson/BsonReader;)V
    .registers 4

    .line 1
    sget-object v0, Lorg/bson/AbstractBsonWriter$1;->$SwitchMap$org$bson$BsonType:[I

    invoke-interface {p1}, Lorg/bson/BsonReader;->getCurrentBsonType()Lorg/bson/BsonType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_c6

    .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unhandled BSON type: "

    .line 3
    invoke-static {v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    invoke-interface {p1}, Lorg/bson/BsonReader;->getCurrentBsonType()Lorg/bson/BsonType;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :pswitch_26
    invoke-interface {p1}, Lorg/bson/BsonReader;->readMaxKey()V

    .line 6
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->writeMaxKey()V

    goto/16 :goto_c4

    .line 7
    :pswitch_2e
    invoke-interface {p1}, Lorg/bson/BsonReader;->readDBPointer()Lorg/bson/BsonDbPointer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->writeDBPointer(Lorg/bson/BsonDbPointer;)V

    goto/16 :goto_c4

    .line 8
    :pswitch_37
    invoke-interface {p1}, Lorg/bson/BsonReader;->readMinKey()V

    .line 9
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->writeMinKey()V

    goto/16 :goto_c4

    .line 10
    :pswitch_3f
    invoke-interface {p1}, Lorg/bson/BsonReader;->readDecimal128()Lorg/bson/types/Decimal128;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->writeDecimal128(Lorg/bson/types/Decimal128;)V

    goto/16 :goto_c4

    .line 11
    :pswitch_48
    invoke-interface {p1}, Lorg/bson/BsonReader;->readInt64()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/bson/AbstractBsonWriter;->writeInt64(J)V

    goto/16 :goto_c4

    .line 12
    :pswitch_51
    invoke-interface {p1}, Lorg/bson/BsonReader;->readTimestamp()Lorg/bson/BsonTimestamp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->writeTimestamp(Lorg/bson/BsonTimestamp;)V

    goto/16 :goto_c4

    .line 13
    :pswitch_5a
    invoke-interface {p1}, Lorg/bson/BsonReader;->readInt32()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->writeInt32(I)V

    goto :goto_c4

    .line 14
    :pswitch_62
    invoke-direct {p0, p1}, Lorg/bson/AbstractBsonWriter;->pipeJavascriptWithScope(Lorg/bson/BsonReader;)V

    goto :goto_c4

    .line 15
    :pswitch_66
    invoke-interface {p1}, Lorg/bson/BsonReader;->readSymbol()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->writeSymbol(Ljava/lang/String;)V

    goto :goto_c4

    .line 16
    :pswitch_6e
    invoke-interface {p1}, Lorg/bson/BsonReader;->readJavaScript()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->writeJavaScript(Ljava/lang/String;)V

    goto :goto_c4

    .line 17
    :pswitch_76
    invoke-interface {p1}, Lorg/bson/BsonReader;->readRegularExpression()Lorg/bson/BsonRegularExpression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->writeRegularExpression(Lorg/bson/BsonRegularExpression;)V

    goto :goto_c4

    .line 18
    :pswitch_7e
    invoke-interface {p1}, Lorg/bson/BsonReader;->readNull()V

    .line 19
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->writeNull()V

    goto :goto_c4

    .line 20
    :pswitch_85
    invoke-interface {p1}, Lorg/bson/BsonReader;->readDateTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/bson/AbstractBsonWriter;->writeDateTime(J)V

    goto :goto_c4

    .line 21
    :pswitch_8d
    invoke-interface {p1}, Lorg/bson/BsonReader;->readBoolean()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->writeBoolean(Z)V

    goto :goto_c4

    .line 22
    :pswitch_95
    invoke-interface {p1}, Lorg/bson/BsonReader;->readObjectId()Lorg/bson/types/ObjectId;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->writeObjectId(Lorg/bson/types/ObjectId;)V

    goto :goto_c4

    .line 23
    :pswitch_9d
    invoke-interface {p1}, Lorg/bson/BsonReader;->readUndefined()V

    .line 24
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->writeUndefined()V

    goto :goto_c4

    .line 25
    :pswitch_a4
    invoke-interface {p1}, Lorg/bson/BsonReader;->readBinaryData()Lorg/bson/BsonBinary;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->writeBinaryData(Lorg/bson/BsonBinary;)V

    goto :goto_c4

    .line 26
    :pswitch_ac
    invoke-interface {p1}, Lorg/bson/BsonReader;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->writeString(Ljava/lang/String;)V

    goto :goto_c4

    .line 27
    :pswitch_b4
    invoke-interface {p1}, Lorg/bson/BsonReader;->readDouble()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/bson/AbstractBsonWriter;->writeDouble(D)V

    goto :goto_c4

    .line 28
    :pswitch_bc
    invoke-direct {p0, p1}, Lorg/bson/AbstractBsonWriter;->pipeArray(Lorg/bson/BsonReader;)V

    goto :goto_c4

    :pswitch_c0
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0}, Lorg/bson/AbstractBsonWriter;->pipeDocument(Lorg/bson/BsonReader;Ljava/util/List;)V

    :goto_c4
    return-void

    nop

    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_c0
        :pswitch_bc
        :pswitch_b4
        :pswitch_ac
        :pswitch_a4
        :pswitch_9d
        :pswitch_95
        :pswitch_8d
        :pswitch_85
        :pswitch_7e
        :pswitch_76
        :pswitch_6e
        :pswitch_66
        :pswitch_62
        :pswitch_5a
        :pswitch_51
        :pswitch_48
        :pswitch_3f
        :pswitch_37
        :pswitch_2e
        :pswitch_26
    .end packed-switch
.end method

.method private pipeValue(Lorg/bson/BsonValue;)V
    .registers 4

    .line 33
    sget-object v0, Lorg/bson/AbstractBsonWriter$1;->$SwitchMap$org$bson$BsonType:[I

    invoke-virtual {p1}, Lorg/bson/BsonValue;->getBsonType()Lorg/bson/BsonType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_f0

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unhandled BSON type: "

    .line 35
    invoke-static {v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 36
    invoke-virtual {p1}, Lorg/bson/BsonValue;->getBsonType()Lorg/bson/BsonType;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :pswitch_26
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->writeMaxKey()V

    goto/16 :goto_ee

    .line 38
    :pswitch_2b
    invoke-virtual {p1}, Lorg/bson/BsonValue;->asDBPointer()Lorg/bson/BsonDbPointer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->writeDBPointer(Lorg/bson/BsonDbPointer;)V

    goto/16 :goto_ee

    .line 39
    :pswitch_34
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->writeMinKey()V

    goto/16 :goto_ee

    .line 40
    :pswitch_39
    invoke-virtual {p1}, Lorg/bson/BsonValue;->asDecimal128()Lorg/bson/BsonDecimal128;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bson/BsonDecimal128;->getValue()Lorg/bson/types/Decimal128;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->writeDecimal128(Lorg/bson/types/Decimal128;)V

    goto/16 :goto_ee

    .line 41
    :pswitch_46
    invoke-virtual {p1}, Lorg/bson/BsonValue;->asInt64()Lorg/bson/BsonInt64;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bson/BsonInt64;->getValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/bson/AbstractBsonWriter;->writeInt64(J)V

    goto/16 :goto_ee

    .line 42
    :pswitch_53
    invoke-virtual {p1}, Lorg/bson/BsonValue;->asTimestamp()Lorg/bson/BsonTimestamp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->writeTimestamp(Lorg/bson/BsonTimestamp;)V

    goto/16 :goto_ee

    .line 43
    :pswitch_5c
    invoke-virtual {p1}, Lorg/bson/BsonValue;->asInt32()Lorg/bson/BsonInt32;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bson/BsonInt32;->getValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->writeInt32(I)V

    goto/16 :goto_ee

    .line 44
    :pswitch_69
    invoke-virtual {p1}, Lorg/bson/BsonValue;->asJavaScriptWithScope()Lorg/bson/BsonJavaScriptWithScope;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bson/AbstractBsonWriter;->pipeJavascriptWithScope(Lorg/bson/BsonJavaScriptWithScope;)V

    goto/16 :goto_ee

    .line 45
    :pswitch_72
    invoke-virtual {p1}, Lorg/bson/BsonValue;->asSymbol()Lorg/bson/BsonSymbol;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bson/BsonSymbol;->getSymbol()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->writeSymbol(Ljava/lang/String;)V

    goto/16 :goto_ee

    .line 46
    :pswitch_7f
    invoke-virtual {p1}, Lorg/bson/BsonValue;->asJavaScript()Lorg/bson/BsonJavaScript;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bson/BsonJavaScript;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->writeJavaScript(Ljava/lang/String;)V

    goto :goto_ee

    .line 47
    :pswitch_8b
    invoke-virtual {p1}, Lorg/bson/BsonValue;->asRegularExpression()Lorg/bson/BsonRegularExpression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->writeRegularExpression(Lorg/bson/BsonRegularExpression;)V

    goto :goto_ee

    .line 48
    :pswitch_93
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->writeNull()V

    goto :goto_ee

    .line 49
    :pswitch_97
    invoke-virtual {p1}, Lorg/bson/BsonValue;->asDateTime()Lorg/bson/BsonDateTime;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bson/BsonDateTime;->getValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/bson/AbstractBsonWriter;->writeDateTime(J)V

    goto :goto_ee

    .line 50
    :pswitch_a3
    invoke-virtual {p1}, Lorg/bson/BsonValue;->asBoolean()Lorg/bson/BsonBoolean;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bson/BsonBoolean;->getValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->writeBoolean(Z)V

    goto :goto_ee

    .line 51
    :pswitch_af
    invoke-virtual {p1}, Lorg/bson/BsonValue;->asObjectId()Lorg/bson/BsonObjectId;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bson/BsonObjectId;->getValue()Lorg/bson/types/ObjectId;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->writeObjectId(Lorg/bson/types/ObjectId;)V

    goto :goto_ee

    .line 52
    :pswitch_bb
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->writeUndefined()V

    goto :goto_ee

    .line 53
    :pswitch_bf
    invoke-virtual {p1}, Lorg/bson/BsonValue;->asBinary()Lorg/bson/BsonBinary;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->writeBinaryData(Lorg/bson/BsonBinary;)V

    goto :goto_ee

    .line 54
    :pswitch_c7
    invoke-virtual {p1}, Lorg/bson/BsonValue;->asString()Lorg/bson/BsonString;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bson/BsonString;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->writeString(Ljava/lang/String;)V

    goto :goto_ee

    .line 55
    :pswitch_d3
    invoke-virtual {p1}, Lorg/bson/BsonValue;->asDouble()Lorg/bson/BsonDouble;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bson/BsonDouble;->getValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/bson/AbstractBsonWriter;->writeDouble(D)V

    goto :goto_ee

    .line 56
    :pswitch_df
    invoke-virtual {p1}, Lorg/bson/BsonValue;->asArray()Lorg/bson/BsonArray;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bson/AbstractBsonWriter;->pipeArray(Lorg/bson/BsonArray;)V

    goto :goto_ee

    .line 57
    :pswitch_e7
    invoke-virtual {p1}, Lorg/bson/BsonValue;->asDocument()Lorg/bson/BsonDocument;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bson/AbstractBsonWriter;->pipeDocument(Lorg/bson/BsonDocument;)V

    :goto_ee
    return-void

    nop

    :pswitch_data_f0
    .packed-switch 0x1
        :pswitch_e7
        :pswitch_df
        :pswitch_d3
        :pswitch_c7
        :pswitch_bf
        :pswitch_bb
        :pswitch_af
        :pswitch_a3
        :pswitch_97
        :pswitch_93
        :pswitch_8b
        :pswitch_7f
        :pswitch_72
        :pswitch_69
        :pswitch_5c
        :pswitch_53
        :pswitch_46
        :pswitch_39
        :pswitch_34
        :pswitch_2b
        :pswitch_26
    .end packed-switch
.end method


# virtual methods
.method public abortPipe()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final varargs checkPreconditions(Ljava/lang/String;[Lorg/bson/AbstractBsonWriter$State;)V
    .registers 8

    .line 1
    iget-boolean v0, p0, Lorg/bson/AbstractBsonWriter;->closed:Z

    if-nez v0, :cond_1c

    .line 2
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_14

    aget-object v3, p2, v2

    .line 3
    iget-object v4, p0, Lorg/bson/AbstractBsonWriter;->state:Lorg/bson/AbstractBsonWriter$State;

    if-ne v3, v4, :cond_11

    const/4 v1, 0x1

    goto :goto_14

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_14
    :goto_14
    if-eqz v1, :cond_17

    return-void

    .line 4
    :cond_17
    invoke-virtual {p0, p1, p2}, Lorg/bson/AbstractBsonWriter;->throwInvalidState(Ljava/lang/String;[Lorg/bson/AbstractBsonWriter$State;)V

    const/4 p1, 0x0

    throw p1

    .line 5
    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "BsonWriter is closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bson/AbstractBsonWriter;->closed:Z

    return-void
.end method

.method public abstract doWriteBinaryData(Lorg/bson/BsonBinary;)V
.end method

.method public abstract doWriteBoolean(Z)V
.end method

.method public abstract doWriteDBPointer(Lorg/bson/BsonDbPointer;)V
.end method

.method public abstract doWriteDateTime(J)V
.end method

.method public abstract doWriteDecimal128(Lorg/bson/types/Decimal128;)V
.end method

.method public abstract doWriteDouble(D)V
.end method

.method public abstract doWriteEndArray()V
.end method

.method public abstract doWriteEndDocument()V
.end method

.method public abstract doWriteInt32(I)V
.end method

.method public abstract doWriteInt64(J)V
.end method

.method public abstract doWriteJavaScript(Ljava/lang/String;)V
.end method

.method public abstract doWriteJavaScriptWithScope(Ljava/lang/String;)V
.end method

.method public abstract doWriteMaxKey()V
.end method

.method public abstract doWriteMinKey()V
.end method

.method public doWriteName(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public abstract doWriteNull()V
.end method

.method public abstract doWriteObjectId(Lorg/bson/types/ObjectId;)V
.end method

.method public abstract doWriteRegularExpression(Lorg/bson/BsonRegularExpression;)V
.end method

.method public abstract doWriteStartArray()V
.end method

.method public abstract doWriteStartDocument()V
.end method

.method public abstract doWriteString(Ljava/lang/String;)V
.end method

.method public abstract doWriteSymbol(Ljava/lang/String;)V
.end method

.method public abstract doWriteTimestamp(Lorg/bson/BsonTimestamp;)V
.end method

.method public abstract doWriteUndefined()V
.end method

.method public getContext()Lorg/bson/AbstractBsonWriter$Context;
    .registers 2

    iget-object v0, p0, Lorg/bson/AbstractBsonWriter;->context:Lorg/bson/AbstractBsonWriter$Context;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bson/AbstractBsonWriter;->context:Lorg/bson/AbstractBsonWriter$Context;

    # getter for: Lorg/bson/AbstractBsonWriter$Context;->name:Ljava/lang/String;
    invoke-static {v0}, Lorg/bson/AbstractBsonWriter$Context;->access$000(Lorg/bson/AbstractBsonWriter$Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getNextState()Lorg/bson/AbstractBsonWriter$State;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->getContext()Lorg/bson/AbstractBsonWriter$Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/AbstractBsonWriter$Context;->getContextType()Lorg/bson/BsonContextType;

    move-result-object v0

    sget-object v1, Lorg/bson/BsonContextType;->ARRAY:Lorg/bson/BsonContextType;

    if-ne v0, v1, :cond_f

    .line 2
    sget-object v0, Lorg/bson/AbstractBsonWriter$State;->VALUE:Lorg/bson/AbstractBsonWriter$State;

    return-object v0

    .line 3
    :cond_f
    sget-object v0, Lorg/bson/AbstractBsonWriter$State;->NAME:Lorg/bson/AbstractBsonWriter$State;

    return-object v0
.end method

.method public final getState()Lorg/bson/AbstractBsonWriter$State;
    .registers 2

    iget-object v0, p0, Lorg/bson/AbstractBsonWriter;->state:Lorg/bson/AbstractBsonWriter$State;

    return-object v0
.end method

.method public pipe(Lorg/bson/BsonReader;)V
    .registers 3

    const-string v0, "reader"

    .line 1
    invoke-static {v0, p1}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lorg/bson/AbstractBsonWriter;->pipeDocument(Lorg/bson/BsonReader;Ljava/util/List;)V

    return-void
.end method

.method public pipe(Lorg/bson/BsonReader;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bson/BsonReader;",
            "Ljava/util/List<",
            "Lorg/bson/BsonElement;",
            ">;)V"
        }
    .end annotation

    const-string v0, "reader"

    .line 3
    invoke-static {v0, p1}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "extraElements"

    .line 4
    invoke-static {v0, p2}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-direct {p0, p1, p2}, Lorg/bson/AbstractBsonWriter;->pipeDocument(Lorg/bson/BsonReader;Ljava/util/List;)V

    return-void
.end method

.method public final pipeExtraElements(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bson/BsonElement;",
            ">;)V"
        }
    .end annotation

    const-string v0, "extraElements"

    .line 1
    invoke-static {v0, p1}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bson/BsonElement;

    .line 3
    invoke-virtual {v0}, Lorg/bson/BsonElement;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/bson/AbstractBsonWriter;->writeName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lorg/bson/BsonElement;->getValue()Lorg/bson/BsonValue;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bson/AbstractBsonWriter;->pipeValue(Lorg/bson/BsonValue;)V

    goto :goto_9

    :cond_24
    return-void
.end method

.method public final setContext(Lorg/bson/AbstractBsonWriter$Context;)V
    .registers 2

    iput-object p1, p0, Lorg/bson/AbstractBsonWriter;->context:Lorg/bson/AbstractBsonWriter$Context;

    return-void
.end method

.method public final setState(Lorg/bson/AbstractBsonWriter$State;)V
    .registers 2

    iput-object p1, p0, Lorg/bson/AbstractBsonWriter;->state:Lorg/bson/AbstractBsonWriter$State;

    return-void
.end method

.method public final varargs throwInvalidContextType(Ljava/lang/String;Lorg/bson/BsonContextType;[Lorg/bson/BsonContextType;)V
    .registers 7

    .line 1
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    const-string v0, " or "

    invoke-static {v0, p3}, Lorg/bson/StringUtils;->join(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p3

    .line 2
    new-instance v0, Lorg/bson/BsonInvalidOperationException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p3, v1, p1

    const/4 p1, 0x2

    aput-object p2, v1, p1

    const-string p1, "%s can only be called when ContextType is %s, not when ContextType is %s."

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bson/BsonInvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final varargs throwInvalidState(Ljava/lang/String;[Lorg/bson/AbstractBsonWriter$State;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lorg/bson/AbstractBsonWriter;->state:Lorg/bson/AbstractBsonWriter$State;

    sget-object v1, Lorg/bson/AbstractBsonWriter$State;->INITIAL:Lorg/bson/AbstractBsonWriter$State;

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v0, v1, :cond_12

    sget-object v1, Lorg/bson/AbstractBsonWriter$State;->SCOPE_DOCUMENT:Lorg/bson/AbstractBsonWriter$State;

    if-eq v0, v1, :cond_12

    sget-object v1, Lorg/bson/AbstractBsonWriter$State;->DONE:Lorg/bson/AbstractBsonWriter$State;

    if-ne v0, v1, :cond_87

    :cond_12
    const-string v0, "end"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_87

    const-string v0, "writeName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_87

    const/4 p2, 0x5

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "start"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_33
    new-array p2, p2, [Ljava/lang/Character;

    const/16 v0, 0x41

    .line 6
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    aput-object v0, p2, v5

    const/16 v0, 0x45

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    aput-object v0, p2, v4

    const/16 v0, 0x49

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    aput-object v0, p2, v3

    const/16 v0, 0x4f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    aput-object v0, p2, v2

    const/4 v0, 0x4

    const/16 v1, 0x55

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_73

    const-string p2, "An"

    goto :goto_75

    :cond_73
    const-string p2, "A"

    .line 7
    :goto_75
    new-instance v0, Lorg/bson/BsonInvalidOperationException;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v5

    aput-object p1, v1, v4

    const-string p1, "%s %s value cannot be written to the root level of a BSON document."

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bson/BsonInvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_87
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const-string v0, " or "

    invoke-static {v0, p2}, Lorg/bson/StringUtils;->join(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p2

    .line 9
    new-instance v0, Lorg/bson/BsonInvalidOperationException;

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    aput-object p2, v1, v4

    iget-object p1, p0, Lorg/bson/AbstractBsonWriter;->state:Lorg/bson/AbstractBsonWriter$State;

    aput-object p1, v1, v3

    const-string p1, "%s can only be called when State is %s, not when State is %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bson/BsonInvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeBinaryData(Ljava/lang/String;Lorg/bson/BsonBinary;)V
    .registers 4

    const-string v0, "name"

    .line 1
    invoke-static {v0, p1}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "value"

    .line 2
    invoke-static {v0, p2}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->writeName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p2}, Lorg/bson/AbstractBsonWriter;->writeBinaryData(Lorg/bson/BsonBinary;)V

    return-void
.end method

.method public writeBinaryData(Lorg/bson/BsonBinary;)V
    .registers 5

    const-string v0, "value"

    .line 5
    invoke-static {v0, p1}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/bson/AbstractBsonWriter$State;

    .line 6
    sget-object v1, Lorg/bson/AbstractBsonWriter$State;->VALUE:Lorg/bson/AbstractBsonWriter$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/bson/AbstractBsonWriter$State;->INITIAL:Lorg/bson/AbstractBsonWriter$State;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "writeBinaryData"

    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonWriter;->checkPreconditions(Ljava/lang/String;[Lorg/bson/AbstractBsonWriter$State;)V

    .line 7
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->doWriteBinaryData(Lorg/bson/BsonBinary;)V

    .line 8
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->getNextState()Lorg/bson/AbstractBsonWriter$State;

    move-result-object p1

    .line 9
    iput-object p1, p0, Lorg/bson/AbstractBsonWriter;->state:Lorg/bson/AbstractBsonWriter$State;

    return-void
.end method

.method public writeBoolean(Ljava/lang/String;Z)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->writeName(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p2}, Lorg/bson/AbstractBsonWriter;->writeBoolean(Z)V

    return-void
.end method

.method public writeBoolean(Z)V
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/bson/AbstractBsonWriter$State;

    .line 3
    sget-object v1, Lorg/bson/AbstractBsonWriter$State;->VALUE:Lorg/bson/AbstractBsonWriter$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/bson/AbstractBsonWriter$State;->INITIAL:Lorg/bson/AbstractBsonWriter$State;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "writeBoolean"

    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonWriter;->checkPreconditions(Ljava/lang/String;[Lorg/bson/AbstractBsonWriter$State;)V

    .line 4
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->doWriteBoolean(Z)V

    .line 5
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->getNextState()Lorg/bson/AbstractBsonWriter$State;

    move-result-object p1

    .line 6
    iput-object p1, p0, Lorg/bson/AbstractBsonWriter;->state:Lorg/bson/AbstractBsonWriter$State;

    return-void
.end method

.method public writeDBPointer(Ljava/lang/String;Lorg/bson/BsonDbPointer;)V
    .registers 4

    const-string v0, "name"

    .line 1
    invoke-static {v0, p1}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "value"

    .line 2
    invoke-static {v0, p2}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->writeName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p2}, Lorg/bson/AbstractBsonWriter;->writeDBPointer(Lorg/bson/BsonDbPointer;)V

    return-void
.end method

.method public writeDBPointer(Lorg/bson/BsonDbPointer;)V
    .registers 5

    const-string v0, "value"

    .line 5
    invoke-static {v0, p1}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/bson/AbstractBsonWriter$State;

    .line 6
    sget-object v1, Lorg/bson/AbstractBsonWriter$State;->VALUE:Lorg/bson/AbstractBsonWriter$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/bson/AbstractBsonWriter$State;->INITIAL:Lorg/bson/AbstractBsonWriter$State;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "writeDBPointer"

    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonWriter;->checkPreconditions(Ljava/lang/String;[Lorg/bson/AbstractBsonWriter$State;)V

    .line 7
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->doWriteDBPointer(Lorg/bson/BsonDbPointer;)V

    .line 8
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->getNextState()Lorg/bson/AbstractBsonWriter$State;

    move-result-object p1

    .line 9
    iput-object p1, p0, Lorg/bson/AbstractBsonWriter;->state:Lorg/bson/AbstractBsonWriter$State;

    return-void
.end method

.method public writeDateTime(J)V
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/bson/AbstractBsonWriter$State;

    .line 3
    sget-object v1, Lorg/bson/AbstractBsonWriter$State;->VALUE:Lorg/bson/AbstractBsonWriter$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/bson/AbstractBsonWriter$State;->INITIAL:Lorg/bson/AbstractBsonWriter$State;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "writeDateTime"

    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonWriter;->checkPreconditions(Ljava/lang/String;[Lorg/bson/AbstractBsonWriter$State;)V

    .line 4
    invoke-virtual {p0, p1, p2}, Lorg/bson/AbstractBsonWriter;->doWriteDateTime(J)V

    .line 5
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->getNextState()Lorg/bson/AbstractBsonWriter$State;

    move-result-object p1

    .line 6
    iput-object p1, p0, Lorg/bson/AbstractBsonWriter;->state:Lorg/bson/AbstractBsonWriter$State;

    return-void
.end method

.method public writeDateTime(Ljava/lang/String;J)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->writeName(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p2, p3}, Lorg/bson/AbstractBsonWriter;->writeDateTime(J)V

    return-void
.end method

.method public writeDecimal128(Ljava/lang/String;Lorg/bson/types/Decimal128;)V
    .registers 4

    const-string v0, "name"

    .line 6
    invoke-static {v0, p1}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "value"

    .line 7
    invoke-static {v0, p2}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->writeName(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, p2}, Lorg/bson/AbstractBsonWriter;->writeDecimal128(Lorg/bson/types/Decimal128;)V

    return-void
.end method

.method public writeDecimal128(Lorg/bson/types/Decimal128;)V
    .registers 5

    const-string v0, "value"

    .line 1
    invoke-static {v0, p1}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bson/AbstractBsonWriter$State;

    .line 2
    sget-object v1, Lorg/bson/AbstractBsonWriter$State;->VALUE:Lorg/bson/AbstractBsonWriter$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "writeInt64"

    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonWriter;->checkPreconditions(Ljava/lang/String;[Lorg/bson/AbstractBsonWriter$State;)V

    .line 3
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->doWriteDecimal128(Lorg/bson/types/Decimal128;)V

    .line 4
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->getNextState()Lorg/bson/AbstractBsonWriter$State;

    move-result-object p1

    .line 5
    iput-object p1, p0, Lorg/bson/AbstractBsonWriter;->state:Lorg/bson/AbstractBsonWriter$State;

    return-void
.end method

.method public writeDouble(D)V
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/bson/AbstractBsonWriter$State;

    .line 3
    sget-object v1, Lorg/bson/AbstractBsonWriter$State;->VALUE:Lorg/bson/AbstractBsonWriter$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/bson/AbstractBsonWriter$State;->INITIAL:Lorg/bson/AbstractBsonWriter$State;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "writeDBPointer"

    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonWriter;->checkPreconditions(Ljava/lang/String;[Lorg/bson/AbstractBsonWriter$State;)V

    .line 4
    invoke-virtual {p0, p1, p2}, Lorg/bson/AbstractBsonWriter;->doWriteDouble(D)V

    .line 5
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->getNextState()Lorg/bson/AbstractBsonWriter$State;

    move-result-object p1

    .line 6
    iput-object p1, p0, Lorg/bson/AbstractBsonWriter;->state:Lorg/bson/AbstractBsonWriter$State;

    return-void
.end method

.method public writeDouble(Ljava/lang/String;D)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->writeName(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p2, p3}, Lorg/bson/AbstractBsonWriter;->writeDouble(D)V

    return-void
.end method

.method public writeEndArray()V
    .registers 5

    const/4 v0, 0x1

    new-array v1, v0, [Lorg/bson/AbstractBsonWriter$State;

    .line 1
    sget-object v2, Lorg/bson/AbstractBsonWriter$State;->VALUE:Lorg/bson/AbstractBsonWriter$State;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "writeEndArray"

    invoke-virtual {p0, v2, v1}, Lorg/bson/AbstractBsonWriter;->checkPreconditions(Ljava/lang/String;[Lorg/bson/AbstractBsonWriter$State;)V

    .line 2
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->getContext()Lorg/bson/AbstractBsonWriter$Context;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bson/AbstractBsonWriter$Context;->getContextType()Lorg/bson/BsonContextType;

    move-result-object v1

    sget-object v2, Lorg/bson/BsonContextType;->ARRAY:Lorg/bson/BsonContextType;

    if-ne v1, v2, :cond_41

    .line 3
    iget-object v1, p0, Lorg/bson/AbstractBsonWriter;->context:Lorg/bson/AbstractBsonWriter$Context;

    invoke-virtual {v1}, Lorg/bson/AbstractBsonWriter$Context;->getParentContext()Lorg/bson/AbstractBsonWriter$Context;

    move-result-object v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lorg/bson/AbstractBsonWriter;->context:Lorg/bson/AbstractBsonWriter$Context;

    invoke-virtual {v1}, Lorg/bson/AbstractBsonWriter$Context;->getParentContext()Lorg/bson/AbstractBsonWriter$Context;

    move-result-object v1

    # getter for: Lorg/bson/AbstractBsonWriter$Context;->name:Ljava/lang/String;
    invoke-static {v1}, Lorg/bson/AbstractBsonWriter$Context;->access$000(Lorg/bson/AbstractBsonWriter$Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 4
    iget-object v1, p0, Lorg/bson/AbstractBsonWriter;->fieldNameValidatorStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 5
    :cond_32
    iget v1, p0, Lorg/bson/AbstractBsonWriter;->serializationDepth:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/bson/AbstractBsonWriter;->serializationDepth:I

    .line 6
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->doWriteEndArray()V

    .line 7
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->getNextState()Lorg/bson/AbstractBsonWriter$State;

    move-result-object v0

    .line 8
    iput-object v0, p0, Lorg/bson/AbstractBsonWriter;->state:Lorg/bson/AbstractBsonWriter$State;

    return-void

    .line 9
    :cond_41
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->getContext()Lorg/bson/AbstractBsonWriter$Context;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bson/AbstractBsonWriter$Context;->getContextType()Lorg/bson/BsonContextType;

    move-result-object v1

    new-array v0, v0, [Lorg/bson/BsonContextType;

    aput-object v2, v0, v3

    const-string v2, "WriteEndArray"

    invoke-virtual {p0, v2, v1, v0}, Lorg/bson/AbstractBsonWriter;->throwInvalidContextType(Ljava/lang/String;Lorg/bson/BsonContextType;[Lorg/bson/BsonContextType;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public writeEndDocument()V
    .registers 7

    const/4 v0, 0x1

    new-array v1, v0, [Lorg/bson/AbstractBsonWriter$State;

    .line 1
    sget-object v2, Lorg/bson/AbstractBsonWriter$State;->NAME:Lorg/bson/AbstractBsonWriter$State;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "writeEndDocument"

    invoke-virtual {p0, v2, v1}, Lorg/bson/AbstractBsonWriter;->checkPreconditions(Ljava/lang/String;[Lorg/bson/AbstractBsonWriter$State;)V

    .line 2
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->getContext()Lorg/bson/AbstractBsonWriter$Context;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bson/AbstractBsonWriter$Context;->getContextType()Lorg/bson/BsonContextType;

    move-result-object v1

    .line 3
    sget-object v2, Lorg/bson/BsonContextType;->DOCUMENT:Lorg/bson/BsonContextType;

    if-eq v1, v2, :cond_2c

    sget-object v4, Lorg/bson/BsonContextType;->SCOPE_DOCUMENT:Lorg/bson/BsonContextType;

    if-ne v1, v4, :cond_1e

    goto :goto_2c

    :cond_1e
    const/4 v5, 0x2

    new-array v5, v5, [Lorg/bson/BsonContextType;

    aput-object v2, v5, v3

    aput-object v4, v5, v0

    const-string v0, "WriteEndDocument"

    .line 4
    invoke-virtual {p0, v0, v1, v5}, Lorg/bson/AbstractBsonWriter;->throwInvalidContextType(Ljava/lang/String;Lorg/bson/BsonContextType;[Lorg/bson/BsonContextType;)V

    const/4 v0, 0x0

    throw v0

    .line 5
    :cond_2c
    :goto_2c
    iget-object v1, p0, Lorg/bson/AbstractBsonWriter;->context:Lorg/bson/AbstractBsonWriter$Context;

    invoke-virtual {v1}, Lorg/bson/AbstractBsonWriter$Context;->getParentContext()Lorg/bson/AbstractBsonWriter$Context;

    move-result-object v1

    if-eqz v1, :cond_45

    iget-object v1, p0, Lorg/bson/AbstractBsonWriter;->context:Lorg/bson/AbstractBsonWriter$Context;

    invoke-virtual {v1}, Lorg/bson/AbstractBsonWriter$Context;->getParentContext()Lorg/bson/AbstractBsonWriter$Context;

    move-result-object v1

    # getter for: Lorg/bson/AbstractBsonWriter$Context;->name:Ljava/lang/String;
    invoke-static {v1}, Lorg/bson/AbstractBsonWriter$Context;->access$000(Lorg/bson/AbstractBsonWriter$Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 6
    iget-object v1, p0, Lorg/bson/AbstractBsonWriter;->fieldNameValidatorStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 7
    :cond_45
    iget v1, p0, Lorg/bson/AbstractBsonWriter;->serializationDepth:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/bson/AbstractBsonWriter;->serializationDepth:I

    .line 8
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->doWriteEndDocument()V

    .line 9
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->getContext()Lorg/bson/AbstractBsonWriter$Context;

    move-result-object v0

    if-eqz v0, :cond_67

    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->getContext()Lorg/bson/AbstractBsonWriter$Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/AbstractBsonWriter$Context;->getContextType()Lorg/bson/BsonContextType;

    move-result-object v0

    sget-object v1, Lorg/bson/BsonContextType;->TOP_LEVEL:Lorg/bson/BsonContextType;

    if-ne v0, v1, :cond_60

    goto :goto_67

    .line 10
    :cond_60
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->getNextState()Lorg/bson/AbstractBsonWriter$State;

    move-result-object v0

    .line 11
    iput-object v0, p0, Lorg/bson/AbstractBsonWriter;->state:Lorg/bson/AbstractBsonWriter$State;

    goto :goto_6b

    .line 12
    :cond_67
    :goto_67
    sget-object v0, Lorg/bson/AbstractBsonWriter$State;->DONE:Lorg/bson/AbstractBsonWriter$State;

    .line 13
    iput-object v0, p0, Lorg/bson/AbstractBsonWriter;->state:Lorg/bson/AbstractBsonWriter$State;

    :goto_6b
    return-void
.end method

.method public writeInt32(I)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bson/AbstractBsonWriter$State;

    .line 3
    sget-object v1, Lorg/bson/AbstractBsonWriter$State;->VALUE:Lorg/bson/AbstractBsonWriter$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "writeInt32"

    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonWriter;->checkPreconditions(Ljava/lang/String;[Lorg/bson/AbstractBsonWriter$State;)V

    .line 4
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->doWriteInt32(I)V

    .line 5
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->getNextState()Lorg/bson/AbstractBsonWriter$State;

    move-result-object p1

    .line 6
    iput-object p1, p0, Lorg/bson/AbstractBsonWriter;->state:Lorg/bson/AbstractBsonWriter$State;

    return-void
.end method

.method public writeInt32(Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->writeName(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p2}, Lorg/bson/AbstractBsonWriter;->writeInt32(I)V

    return-void
.end method

.method public writeInt64(J)V
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bson/AbstractBsonWriter$State;

    .line 3
    sget-object v1, Lorg/bson/AbstractBsonWriter$State;->VALUE:Lorg/bson/AbstractBsonWriter$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "writeInt64"

    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonWriter;->checkPreconditions(Ljava/lang/String;[Lorg/bson/AbstractBsonWriter$State;)V

    .line 4
    invoke-virtual {p0, p1, p2}, Lorg/bson/AbstractBsonWriter;->doWriteInt64(J)V

    .line 5
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->getNextState()Lorg/bson/AbstractBsonWriter$State;

    move-result-object p1

    .line 6
    iput-object p1, p0, Lorg/bson/AbstractBsonWriter;->state:Lorg/bson/AbstractBsonWriter$State;

    return-void
.end method

.method public writeInt64(Ljava/lang/String;J)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->writeName(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p2, p3}, Lorg/bson/AbstractBsonWriter;->writeInt64(J)V

    return-void
.end method

.method public writeJavaScript(Ljava/lang/String;)V
    .registers 5

    const-string v0, "value"

    .line 5
    invoke-static {v0, p1}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bson/AbstractBsonWriter$State;

    .line 6
    sget-object v1, Lorg/bson/AbstractBsonWriter$State;->VALUE:Lorg/bson/AbstractBsonWriter$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "writeJavaScript"

    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonWriter;->checkPreconditions(Ljava/lang/String;[Lorg/bson/AbstractBsonWriter$State;)V

    .line 7
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->doWriteJavaScript(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->getNextState()Lorg/bson/AbstractBsonWriter$State;

    move-result-object p1

    .line 9
    iput-object p1, p0, Lorg/bson/AbstractBsonWriter;->state:Lorg/bson/AbstractBsonWriter$State;

    return-void
.end method

.method public writeJavaScript(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "name"

    .line 1
    invoke-static {v0, p1}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "value"

    .line 2
    invoke-static {v0, p2}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->writeName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p2}, Lorg/bson/AbstractBsonWriter;->writeJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method public writeJavaScriptWithScope(Ljava/lang/String;)V
    .registers 5

    const-string v0, "value"

    .line 5
    invoke-static {v0, p1}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bson/AbstractBsonWriter$State;

    .line 6
    sget-object v1, Lorg/bson/AbstractBsonWriter$State;->VALUE:Lorg/bson/AbstractBsonWriter$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "writeJavaScriptWithScope"

    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonWriter;->checkPreconditions(Ljava/lang/String;[Lorg/bson/AbstractBsonWriter$State;)V

    .line 7
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->doWriteJavaScriptWithScope(Ljava/lang/String;)V

    .line 8
    sget-object p1, Lorg/bson/AbstractBsonWriter$State;->SCOPE_DOCUMENT:Lorg/bson/AbstractBsonWriter$State;

    .line 9
    iput-object p1, p0, Lorg/bson/AbstractBsonWriter;->state:Lorg/bson/AbstractBsonWriter$State;

    return-void
.end method

.method public writeJavaScriptWithScope(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "name"

    .line 1
    invoke-static {v0, p1}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "value"

    .line 2
    invoke-static {v0, p2}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->writeName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p2}, Lorg/bson/AbstractBsonWriter;->writeJavaScriptWithScope(Ljava/lang/String;)V

    return-void
.end method

.method public writeMaxKey()V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bson/AbstractBsonWriter$State;

    .line 3
    sget-object v1, Lorg/bson/AbstractBsonWriter$State;->VALUE:Lorg/bson/AbstractBsonWriter$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "writeMaxKey"

    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonWriter;->checkPreconditions(Ljava/lang/String;[Lorg/bson/AbstractBsonWriter$State;)V

    .line 4
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->doWriteMaxKey()V

    .line 5
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->getNextState()Lorg/bson/AbstractBsonWriter$State;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lorg/bson/AbstractBsonWriter;->state:Lorg/bson/AbstractBsonWriter$State;

    return-void
.end method

.method public writeMaxKey(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->writeName(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->writeMaxKey()V

    return-void
.end method

.method public writeMinKey()V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bson/AbstractBsonWriter$State;

    .line 3
    sget-object v1, Lorg/bson/AbstractBsonWriter$State;->VALUE:Lorg/bson/AbstractBsonWriter$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "writeMinKey"

    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonWriter;->checkPreconditions(Ljava/lang/String;[Lorg/bson/AbstractBsonWriter$State;)V

    .line 4
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->doWriteMinKey()V

    .line 5
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->getNextState()Lorg/bson/AbstractBsonWriter$State;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lorg/bson/AbstractBsonWriter;->state:Lorg/bson/AbstractBsonWriter$State;

    return-void
.end method

.method public writeMinKey(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->writeName(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->writeMinKey()V

    return-void
.end method

.method public writeName(Ljava/lang/String;)V
    .registers 6

    const-string v0, "name"

    .line 1
    invoke-static {v0, p1}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lorg/bson/AbstractBsonWriter;->state:Lorg/bson/AbstractBsonWriter$State;

    sget-object v1, Lorg/bson/AbstractBsonWriter$State;->NAME:Lorg/bson/AbstractBsonWriter$State;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_38

    .line 3
    iget-object v0, p0, Lorg/bson/AbstractBsonWriter;->fieldNameValidatorStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bson/FieldNameValidator;

    invoke-interface {v0, p1}, Lorg/bson/FieldNameValidator;->validate(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 4
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->doWriteName(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lorg/bson/AbstractBsonWriter;->context:Lorg/bson/AbstractBsonWriter$Context;

    # setter for: Lorg/bson/AbstractBsonWriter$Context;->name:Ljava/lang/String;
    invoke-static {v0, p1}, Lorg/bson/AbstractBsonWriter$Context;->access$002(Lorg/bson/AbstractBsonWriter$Context;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    sget-object p1, Lorg/bson/AbstractBsonWriter$State;->VALUE:Lorg/bson/AbstractBsonWriter$State;

    iput-object p1, p0, Lorg/bson/AbstractBsonWriter;->state:Lorg/bson/AbstractBsonWriter$State;

    return-void

    .line 7
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string p1, "Invalid BSON field name %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    new-array p1, v3, [Lorg/bson/AbstractBsonWriter$State;

    aput-object v1, p1, v2

    const-string v0, "WriteName"

    .line 8
    invoke-virtual {p0, v0, p1}, Lorg/bson/AbstractBsonWriter;->throwInvalidState(Ljava/lang/String;[Lorg/bson/AbstractBsonWriter$State;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public writeNull()V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bson/AbstractBsonWriter$State;

    .line 3
    sget-object v1, Lorg/bson/AbstractBsonWriter$State;->VALUE:Lorg/bson/AbstractBsonWriter$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "writeNull"

    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonWriter;->checkPreconditions(Ljava/lang/String;[Lorg/bson/AbstractBsonWriter$State;)V

    .line 4
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->doWriteNull()V

    .line 5
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->getNextState()Lorg/bson/AbstractBsonWriter$State;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lorg/bson/AbstractBsonWriter;->state:Lorg/bson/AbstractBsonWriter$State;

    return-void
.end method

.method public writeNull(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->writeName(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->writeNull()V

    return-void
.end method

.method public writeObjectId(Ljava/lang/String;Lorg/bson/types/ObjectId;)V
    .registers 4

    const-string v0, "name"

    .line 1
    invoke-static {v0, p1}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "value"

    .line 2
    invoke-static {v0, p2}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->writeName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p2}, Lorg/bson/AbstractBsonWriter;->writeObjectId(Lorg/bson/types/ObjectId;)V

    return-void
.end method

.method public writeObjectId(Lorg/bson/types/ObjectId;)V
    .registers 5

    const-string v0, "value"

    .line 5
    invoke-static {v0, p1}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bson/AbstractBsonWriter$State;

    .line 6
    sget-object v1, Lorg/bson/AbstractBsonWriter$State;->VALUE:Lorg/bson/AbstractBsonWriter$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "writeObjectId"

    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonWriter;->checkPreconditions(Ljava/lang/String;[Lorg/bson/AbstractBsonWriter$State;)V

    .line 7
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->doWriteObjectId(Lorg/bson/types/ObjectId;)V

    .line 8
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->getNextState()Lorg/bson/AbstractBsonWriter$State;

    move-result-object p1

    .line 9
    iput-object p1, p0, Lorg/bson/AbstractBsonWriter;->state:Lorg/bson/AbstractBsonWriter$State;

    return-void
.end method

.method public writeRegularExpression(Ljava/lang/String;Lorg/bson/BsonRegularExpression;)V
    .registers 4

    const-string v0, "name"

    .line 1
    invoke-static {v0, p1}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "value"

    .line 2
    invoke-static {v0, p2}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->writeName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p2}, Lorg/bson/AbstractBsonWriter;->writeRegularExpression(Lorg/bson/BsonRegularExpression;)V

    return-void
.end method

.method public writeRegularExpression(Lorg/bson/BsonRegularExpression;)V
    .registers 5

    const-string v0, "value"

    .line 5
    invoke-static {v0, p1}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bson/AbstractBsonWriter$State;

    .line 6
    sget-object v1, Lorg/bson/AbstractBsonWriter$State;->VALUE:Lorg/bson/AbstractBsonWriter$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "writeRegularExpression"

    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonWriter;->checkPreconditions(Ljava/lang/String;[Lorg/bson/AbstractBsonWriter$State;)V

    .line 7
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->doWriteRegularExpression(Lorg/bson/BsonRegularExpression;)V

    .line 8
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->getNextState()Lorg/bson/AbstractBsonWriter$State;

    move-result-object p1

    .line 9
    iput-object p1, p0, Lorg/bson/AbstractBsonWriter;->state:Lorg/bson/AbstractBsonWriter$State;

    return-void
.end method

.method public writeStartArray()V
    .registers 6

    const/4 v0, 0x1

    new-array v1, v0, [Lorg/bson/AbstractBsonWriter$State;

    .line 3
    sget-object v2, Lorg/bson/AbstractBsonWriter$State;->VALUE:Lorg/bson/AbstractBsonWriter$State;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v3, "writeStartArray"

    invoke-virtual {p0, v3, v1}, Lorg/bson/AbstractBsonWriter;->checkPreconditions(Ljava/lang/String;[Lorg/bson/AbstractBsonWriter$State;)V

    .line 4
    iget-object v1, p0, Lorg/bson/AbstractBsonWriter;->context:Lorg/bson/AbstractBsonWriter$Context;

    if-eqz v1, :cond_2a

    # getter for: Lorg/bson/AbstractBsonWriter$Context;->name:Ljava/lang/String;
    invoke-static {v1}, Lorg/bson/AbstractBsonWriter$Context;->access$000(Lorg/bson/AbstractBsonWriter$Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 5
    iget-object v1, p0, Lorg/bson/AbstractBsonWriter;->fieldNameValidatorStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bson/FieldNameValidator;

    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/bson/FieldNameValidator;->getValidatorForField(Ljava/lang/String;)Lorg/bson/FieldNameValidator;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_2a
    iget v1, p0, Lorg/bson/AbstractBsonWriter;->serializationDepth:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/bson/AbstractBsonWriter;->serializationDepth:I

    .line 7
    iget-object v0, p0, Lorg/bson/AbstractBsonWriter;->settings:Lorg/bson/BsonWriterSettings;

    invoke-virtual {v0}, Lorg/bson/BsonWriterSettings;->getMaxSerializationDepth()I

    move-result v0

    if-gt v1, v0, :cond_3d

    .line 8
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->doWriteStartArray()V

    .line 9
    iput-object v2, p0, Lorg/bson/AbstractBsonWriter;->state:Lorg/bson/AbstractBsonWriter$State;

    return-void

    .line 10
    :cond_3d
    new-instance v0, Lorg/bson/BsonSerializationException;

    const-string v1, "Maximum serialization depth exceeded (does the object being serialized have a circular reference?)."

    invoke-direct {v0, v1}, Lorg/bson/BsonSerializationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeStartArray(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->writeName(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->writeStartArray()V

    return-void
.end method

.method public writeStartDocument()V
    .registers 5

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/bson/AbstractBsonWriter$State;

    .line 3
    sget-object v1, Lorg/bson/AbstractBsonWriter$State;->INITIAL:Lorg/bson/AbstractBsonWriter$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/bson/AbstractBsonWriter$State;->VALUE:Lorg/bson/AbstractBsonWriter$State;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/bson/AbstractBsonWriter$State;->SCOPE_DOCUMENT:Lorg/bson/AbstractBsonWriter$State;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Lorg/bson/AbstractBsonWriter$State;->DONE:Lorg/bson/AbstractBsonWriter$State;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "writeStartDocument"

    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonWriter;->checkPreconditions(Ljava/lang/String;[Lorg/bson/AbstractBsonWriter$State;)V

    .line 4
    iget-object v0, p0, Lorg/bson/AbstractBsonWriter;->context:Lorg/bson/AbstractBsonWriter$Context;

    if-eqz v0, :cond_39

    # getter for: Lorg/bson/AbstractBsonWriter$Context;->name:Ljava/lang/String;
    invoke-static {v0}, Lorg/bson/AbstractBsonWriter$Context;->access$000(Lorg/bson/AbstractBsonWriter$Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 5
    iget-object v0, p0, Lorg/bson/AbstractBsonWriter;->fieldNameValidatorStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bson/FieldNameValidator;

    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/bson/FieldNameValidator;->getValidatorForField(Ljava/lang/String;)Lorg/bson/FieldNameValidator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_39
    iget v0, p0, Lorg/bson/AbstractBsonWriter;->serializationDepth:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/bson/AbstractBsonWriter;->serializationDepth:I

    .line 7
    iget-object v1, p0, Lorg/bson/AbstractBsonWriter;->settings:Lorg/bson/BsonWriterSettings;

    invoke-virtual {v1}, Lorg/bson/BsonWriterSettings;->getMaxSerializationDepth()I

    move-result v1

    if-gt v0, v1, :cond_4e

    .line 8
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->doWriteStartDocument()V

    .line 9
    sget-object v0, Lorg/bson/AbstractBsonWriter$State;->NAME:Lorg/bson/AbstractBsonWriter$State;

    .line 10
    iput-object v0, p0, Lorg/bson/AbstractBsonWriter;->state:Lorg/bson/AbstractBsonWriter$State;

    return-void

    .line 11
    :cond_4e
    new-instance v0, Lorg/bson/BsonSerializationException;

    const-string v1, "Maximum serialization depth exceeded (does the object being serialized have a circular reference?)."

    invoke-direct {v0, v1}, Lorg/bson/BsonSerializationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeStartDocument(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->writeName(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->writeStartDocument()V

    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .registers 5

    const-string v0, "value"

    .line 5
    invoke-static {v0, p1}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bson/AbstractBsonWriter$State;

    .line 6
    sget-object v1, Lorg/bson/AbstractBsonWriter$State;->VALUE:Lorg/bson/AbstractBsonWriter$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "writeString"

    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonWriter;->checkPreconditions(Ljava/lang/String;[Lorg/bson/AbstractBsonWriter$State;)V

    .line 7
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->doWriteString(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->getNextState()Lorg/bson/AbstractBsonWriter$State;

    move-result-object p1

    .line 9
    iput-object p1, p0, Lorg/bson/AbstractBsonWriter;->state:Lorg/bson/AbstractBsonWriter$State;

    return-void
.end method

.method public writeString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "name"

    .line 1
    invoke-static {v0, p1}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "value"

    .line 2
    invoke-static {v0, p2}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->writeName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p2}, Lorg/bson/AbstractBsonWriter;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public writeSymbol(Ljava/lang/String;)V
    .registers 5

    const-string v0, "value"

    .line 5
    invoke-static {v0, p1}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bson/AbstractBsonWriter$State;

    .line 6
    sget-object v1, Lorg/bson/AbstractBsonWriter$State;->VALUE:Lorg/bson/AbstractBsonWriter$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "writeSymbol"

    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonWriter;->checkPreconditions(Ljava/lang/String;[Lorg/bson/AbstractBsonWriter$State;)V

    .line 7
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->doWriteSymbol(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->getNextState()Lorg/bson/AbstractBsonWriter$State;

    move-result-object p1

    .line 9
    iput-object p1, p0, Lorg/bson/AbstractBsonWriter;->state:Lorg/bson/AbstractBsonWriter$State;

    return-void
.end method

.method public writeSymbol(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "name"

    .line 1
    invoke-static {v0, p1}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "value"

    .line 2
    invoke-static {v0, p2}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->writeName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p2}, Lorg/bson/AbstractBsonWriter;->writeSymbol(Ljava/lang/String;)V

    return-void
.end method

.method public writeTimestamp(Ljava/lang/String;Lorg/bson/BsonTimestamp;)V
    .registers 4

    const-string v0, "name"

    .line 1
    invoke-static {v0, p1}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "value"

    .line 2
    invoke-static {v0, p2}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->writeName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p2}, Lorg/bson/AbstractBsonWriter;->writeTimestamp(Lorg/bson/BsonTimestamp;)V

    return-void
.end method

.method public writeTimestamp(Lorg/bson/BsonTimestamp;)V
    .registers 5

    const-string v0, "value"

    .line 5
    invoke-static {v0, p1}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bson/AbstractBsonWriter$State;

    .line 6
    sget-object v1, Lorg/bson/AbstractBsonWriter$State;->VALUE:Lorg/bson/AbstractBsonWriter$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "writeTimestamp"

    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonWriter;->checkPreconditions(Ljava/lang/String;[Lorg/bson/AbstractBsonWriter$State;)V

    .line 7
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->doWriteTimestamp(Lorg/bson/BsonTimestamp;)V

    .line 8
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->getNextState()Lorg/bson/AbstractBsonWriter$State;

    move-result-object p1

    .line 9
    iput-object p1, p0, Lorg/bson/AbstractBsonWriter;->state:Lorg/bson/AbstractBsonWriter$State;

    return-void
.end method

.method public writeUndefined()V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bson/AbstractBsonWriter$State;

    .line 3
    sget-object v1, Lorg/bson/AbstractBsonWriter$State;->VALUE:Lorg/bson/AbstractBsonWriter$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "writeUndefined"

    invoke-virtual {p0, v1, v0}, Lorg/bson/AbstractBsonWriter;->checkPreconditions(Ljava/lang/String;[Lorg/bson/AbstractBsonWriter$State;)V

    .line 4
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->doWriteUndefined()V

    .line 5
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->getNextState()Lorg/bson/AbstractBsonWriter$State;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lorg/bson/AbstractBsonWriter;->state:Lorg/bson/AbstractBsonWriter$State;

    return-void
.end method

.method public writeUndefined(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/bson/AbstractBsonWriter;->writeName(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lorg/bson/AbstractBsonWriter;->writeUndefined()V

    return-void
.end method
