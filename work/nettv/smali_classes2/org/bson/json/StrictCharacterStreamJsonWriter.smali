.class public final Lorg/bson/json/StrictCharacterStreamJsonWriter;
.super Ljava/lang/Object;
.source "StrictCharacterStreamJsonWriter.java"

# interfaces
.implements Lorg/bson/json/StrictJsonWriter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;,
        Lorg/bson/json/StrictCharacterStreamJsonWriter$State;,
        Lorg/bson/json/StrictCharacterStreamJsonWriter$JsonContextType;
    }
.end annotation


# instance fields
.field private context:Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;

.field private curLength:I

.field private isTruncated:Z

.field private final settings:Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;

.field private state:Lorg/bson/json/StrictCharacterStreamJsonWriter$State;

.field private final writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;

    sget-object v1, Lorg/bson/json/StrictCharacterStreamJsonWriter$JsonContextType;->TOP_LEVEL:Lorg/bson/json/StrictCharacterStreamJsonWriter$JsonContextType;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v0, v2, v1, v3}, Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;-><init>(Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;Lorg/bson/json/StrictCharacterStreamJsonWriter$JsonContextType;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->context:Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;

    .line 3
    sget-object v0, Lorg/bson/json/StrictCharacterStreamJsonWriter$State;->INITIAL:Lorg/bson/json/StrictCharacterStreamJsonWriter$State;

    iput-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->state:Lorg/bson/json/StrictCharacterStreamJsonWriter$State;

    .line 4
    iput-object p1, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->writer:Ljava/io/Writer;

    .line 5
    iput-object p2, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->settings:Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;

    return-void
.end method

.method private checkState(Lorg/bson/json/StrictCharacterStreamJsonWriter$State;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->state:Lorg/bson/json/StrictCharacterStreamJsonWriter$State;

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Lorg/bson/BsonInvalidOperationException;

    const-string v0, "Invalid state "

    .line 3
    invoke-static {v0}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->state:Lorg/bson/json/StrictCharacterStreamJsonWriter$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/bson/BsonInvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private preWriteValue()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->context:Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;

    invoke-static {v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;->access$300(Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;)Lorg/bson/json/StrictCharacterStreamJsonWriter$JsonContextType;

    move-result-object v0

    sget-object v1, Lorg/bson/json/StrictCharacterStreamJsonWriter$JsonContextType;->ARRAY:Lorg/bson/json/StrictCharacterStreamJsonWriter$JsonContextType;

    if-ne v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->context:Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;

    invoke-static {v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;->access$000(Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ","

    .line 3
    invoke-direct {p0, v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->write(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->settings:Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;

    invoke-virtual {v0}, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;->isIndent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->settings:Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;

    invoke-virtual {v0}, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;->getNewLineCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->write(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->context:Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;

    invoke-static {v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;->access$100(Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->context:Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;

    invoke-static {v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;->access$000(Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, " "

    .line 8
    invoke-direct {p0, v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->write(Ljava/lang/String;)V

    .line 9
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->context:Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;

    invoke-static {v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;->access$002(Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;)V

    return-void
.end method

.method private setNextState()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->context:Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;

    invoke-static {v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;->access$300(Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;)Lorg/bson/json/StrictCharacterStreamJsonWriter$JsonContextType;

    move-result-object v0

    sget-object v1, Lorg/bson/json/StrictCharacterStreamJsonWriter$JsonContextType;->ARRAY:Lorg/bson/json/StrictCharacterStreamJsonWriter$JsonContextType;

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lorg/bson/json/StrictCharacterStreamJsonWriter$State;->VALUE:Lorg/bson/json/StrictCharacterStreamJsonWriter$State;

    iput-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->state:Lorg/bson/json/StrictCharacterStreamJsonWriter$State;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lorg/bson/json/StrictCharacterStreamJsonWriter$State;->NAME:Lorg/bson/json/StrictCharacterStreamJsonWriter$State;

    iput-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->state:Lorg/bson/json/StrictCharacterStreamJsonWriter$State;

    :goto_0
    return-void
.end method

.method private throwBSONException(Ljava/io/IOException;)V
    .locals 2

    new-instance v0, Lorg/bson/BSONException;

    const-string v1, "Wrapping IOException"

    invoke-direct {v0, v1, p1}, Lorg/bson/BSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private write(C)V
    .locals 3

    .line 8
    :try_start_0
    iget-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->settings:Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;

    invoke-virtual {v0}, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;->getMaxLength()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->curLength:I

    iget-object v2, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->settings:Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;

    invoke-virtual {v2}, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;->getMaxLength()I

    move-result v2

    if-ge v0, v2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iput-boolean v1, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->isTruncated:Z

    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    .line 11
    iget p1, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->curLength:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->curLength:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 12
    invoke-direct {p0, p1}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->throwBSONException(Ljava/io/IOException;)V

    :goto_1
    return-void
.end method

.method private write(Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->settings:Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;

    invoke-virtual {v0}, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;->getMaxLength()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->curLength:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->settings:Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;

    invoke-virtual {v1}, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;->getMaxLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->writer:Ljava/io/Writer;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->settings:Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;

    invoke-virtual {v2}, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;->getMaxLength()I

    move-result v2

    iget v3, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->curLength:I

    sub-int/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->settings:Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;

    invoke-virtual {p1}, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;->getMaxLength()I

    move-result p1

    iput p1, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->curLength:I

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->isTruncated:Z

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 6
    iget v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->curLength:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->curLength:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 7
    invoke-direct {p0, p1}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->throwBSONException(Ljava/io/IOException;)V

    :goto_1
    return-void
.end method

.method private writeStringHelper(Ljava/lang/String;)V
    .locals 6

    const/16 v0, 0x22

    .line 1
    invoke-direct {p0, v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->write(C)V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_4

    const/16 v4, 0xd

    if-eq v2, v4, :cond_3

    if-eq v2, v0, :cond_2

    const/16 v4, 0x5c

    if-eq v2, v4, :cond_1

    packed-switch v2, :pswitch_data_0

    .line 4
    invoke-static {v2}, Ljava/lang/Character;->getType(C)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    packed-switch v4, :pswitch_data_1

    packed-switch v4, :pswitch_data_2

    const-string v4, "\\u"

    .line 5
    invoke-direct {p0, v4}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->write(Ljava/lang/String;)V

    const v4, 0xf000

    and-int/2addr v4, v2

    shr-int/lit8 v3, v4, 0xc

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->write(Ljava/lang/String;)V

    and-int/lit16 v3, v2, 0xf00

    shr-int/lit8 v3, v3, 0x8

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->write(Ljava/lang/String;)V

    and-int/lit16 v3, v2, 0xf0

    shr-int/lit8 v3, v3, 0x4

    .line 8
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->write(Ljava/lang/String;)V

    and-int/lit8 v2, v2, 0xf

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_0
    :pswitch_0
    invoke-direct {p0, v2}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->write(C)V

    goto :goto_1

    :pswitch_1
    const-string v2, "\\n"

    .line 11
    invoke-direct {p0, v2}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    const-string v2, "\\t"

    .line 12
    invoke-direct {p0, v2}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    const-string v2, "\\b"

    .line 13
    invoke-direct {p0, v2}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v2, "\\\\"

    .line 14
    invoke-direct {p0, v2}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v2, "\\\""

    .line 15
    invoke-direct {p0, v2}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v2, "\\r"

    .line 16
    invoke-direct {p0, v2}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "\\f"

    .line 17
    invoke-direct {p0, v2}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->write(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 18
    :cond_5
    invoke-direct {p0, v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->write(C)V

    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final flush()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-direct {p0, v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->throwBSONException(Ljava/io/IOException;)V

    :goto_0
    return-void
.end method

.method public getCurrentLength()I
    .locals 1

    iget v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->curLength:I

    return v0
.end method

.method public final getWriter()Ljava/io/Writer;
    .locals 1

    iget-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->writer:Ljava/io/Writer;

    return-object v0
.end method

.method public isTruncated()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->isTruncated:Z

    return v0
.end method

.method public writeBoolean(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "name"

    .line 1
    invoke-static {v0, p1}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, p1}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->writeName(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p2}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->writeBoolean(Z)V

    return-void
.end method

.method public writeBoolean(Z)V
    .locals 1

    .line 4
    sget-object v0, Lorg/bson/json/StrictCharacterStreamJsonWriter$State;->VALUE:Lorg/bson/json/StrictCharacterStreamJsonWriter$State;

    invoke-direct {p0, v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->checkState(Lorg/bson/json/StrictCharacterStreamJsonWriter$State;)V

    .line 5
    invoke-direct {p0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->preWriteValue()V

    if-eqz p1, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    .line 6
    :goto_0
    invoke-direct {p0, p1}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->write(Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->setNextState()V

    return-void
.end method

.method public writeEndArray()V
    .locals 2

    .line 1
    sget-object v0, Lorg/bson/json/StrictCharacterStreamJsonWriter$State;->VALUE:Lorg/bson/json/StrictCharacterStreamJsonWriter$State;

    invoke-direct {p0, v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->checkState(Lorg/bson/json/StrictCharacterStreamJsonWriter$State;)V

    .line 2
    iget-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->context:Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;

    invoke-static {v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;->access$300(Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;)Lorg/bson/json/StrictCharacterStreamJsonWriter$JsonContextType;

    move-result-object v0

    sget-object v1, Lorg/bson/json/StrictCharacterStreamJsonWriter$JsonContextType;->ARRAY:Lorg/bson/json/StrictCharacterStreamJsonWriter$JsonContextType;

    if-ne v0, v1, :cond_2

    .line 3
    iget-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->settings:Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;

    invoke-virtual {v0}, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;->isIndent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->context:Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;

    invoke-static {v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;->access$000(Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->settings:Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;

    invoke-virtual {v0}, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;->getNewLineCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->write(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->context:Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;

    invoke-static {v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;->access$200(Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;)Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;

    move-result-object v0

    invoke-static {v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;->access$100(Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->write(Ljava/lang/String;)V

    :cond_0
    const-string v0, "]"

    .line 6
    invoke-direct {p0, v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->write(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->context:Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;

    invoke-static {v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;->access$200(Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;)Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->context:Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;

    .line 8
    invoke-static {v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;->access$300(Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;)Lorg/bson/json/StrictCharacterStreamJsonWriter$JsonContextType;

    move-result-object v0

    sget-object v1, Lorg/bson/json/StrictCharacterStreamJsonWriter$JsonContextType;->TOP_LEVEL:Lorg/bson/json/StrictCharacterStreamJsonWriter$JsonContextType;

    if-ne v0, v1, :cond_1

    .line 9
    sget-object v0, Lorg/bson/json/StrictCharacterStreamJsonWriter$State;->DONE:Lorg/bson/json/StrictCharacterStreamJsonWriter$State;

    iput-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->state:Lorg/bson/json/StrictCharacterStreamJsonWriter$State;

    goto :goto_0

    .line 10
    :cond_1
    invoke-direct {p0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->setNextState()V

    :goto_0
    return-void

    .line 11
    :cond_2
    new-instance v0, Lorg/bson/BsonInvalidOperationException;

    const-string v1, "Can\'t end an array if not in an array"

    invoke-direct {v0, v1}, Lorg/bson/BsonInvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeEndObject()V
    .locals 2

    .line 1
    sget-object v0, Lorg/bson/json/StrictCharacterStreamJsonWriter$State;->NAME:Lorg/bson/json/StrictCharacterStreamJsonWriter$State;

    invoke-direct {p0, v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->checkState(Lorg/bson/json/StrictCharacterStreamJsonWriter$State;)V

    .line 2
    iget-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->settings:Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;

    invoke-virtual {v0}, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;->isIndent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->context:Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;

    invoke-static {v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;->access$000(Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->settings:Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;

    invoke-virtual {v0}, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;->getNewLineCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->write(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->context:Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;

    invoke-static {v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;->access$200(Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;)Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;

    move-result-object v0

    invoke-static {v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;->access$100(Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->write(Ljava/lang/String;)V

    :cond_0
    const-string v0, "}"

    .line 5
    invoke-direct {p0, v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->write(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->context:Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;

    invoke-static {v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;->access$200(Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;)Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->context:Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;

    .line 7
    invoke-static {v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;->access$300(Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;)Lorg/bson/json/StrictCharacterStreamJsonWriter$JsonContextType;

    move-result-object v0

    sget-object v1, Lorg/bson/json/StrictCharacterStreamJsonWriter$JsonContextType;->TOP_LEVEL:Lorg/bson/json/StrictCharacterStreamJsonWriter$JsonContextType;

    if-ne v0, v1, :cond_1

    .line 8
    sget-object v0, Lorg/bson/json/StrictCharacterStreamJsonWriter$State;->DONE:Lorg/bson/json/StrictCharacterStreamJsonWriter$State;

    iput-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->state:Lorg/bson/json/StrictCharacterStreamJsonWriter$State;

    goto :goto_0

    .line 9
    :cond_1
    invoke-direct {p0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->setNextState()V

    :goto_0
    return-void
.end method

.method public writeName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    .line 1
    invoke-static {v0, p1}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lorg/bson/json/StrictCharacterStreamJsonWriter$State;->NAME:Lorg/bson/json/StrictCharacterStreamJsonWriter$State;

    invoke-direct {p0, v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->checkState(Lorg/bson/json/StrictCharacterStreamJsonWriter$State;)V

    .line 3
    iget-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->context:Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;

    invoke-static {v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;->access$000(Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ","

    .line 4
    invoke-direct {p0, v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->write(Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->settings:Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;

    invoke-virtual {v0}, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;->isIndent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->settings:Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;

    invoke-virtual {v0}, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;->getNewLineCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->write(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->context:Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;

    invoke-static {v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;->access$100(Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->context:Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;

    invoke-static {v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;->access$000(Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, " "

    .line 9
    invoke-direct {p0, v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->write(Ljava/lang/String;)V

    .line 10
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->writeStringHelper(Ljava/lang/String;)V

    const-string p1, ": "

    .line 11
    invoke-direct {p0, p1}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->write(Ljava/lang/String;)V

    .line 12
    sget-object p1, Lorg/bson/json/StrictCharacterStreamJsonWriter$State;->VALUE:Lorg/bson/json/StrictCharacterStreamJsonWriter$State;

    iput-object p1, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->state:Lorg/bson/json/StrictCharacterStreamJsonWriter$State;

    return-void
.end method

.method public writeNull()V
    .locals 1

    .line 3
    sget-object v0, Lorg/bson/json/StrictCharacterStreamJsonWriter$State;->VALUE:Lorg/bson/json/StrictCharacterStreamJsonWriter$State;

    invoke-direct {p0, v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->checkState(Lorg/bson/json/StrictCharacterStreamJsonWriter$State;)V

    .line 4
    invoke-direct {p0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->preWriteValue()V

    const-string v0, "null"

    .line 5
    invoke-direct {p0, v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->write(Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->setNextState()V

    return-void
.end method

.method public writeNull(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->writeName(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->writeNull()V

    return-void
.end method

.method public writeNumber(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    .line 5
    invoke-static {v0, p1}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lorg/bson/json/StrictCharacterStreamJsonWriter$State;->VALUE:Lorg/bson/json/StrictCharacterStreamJsonWriter$State;

    invoke-direct {p0, v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->checkState(Lorg/bson/json/StrictCharacterStreamJsonWriter$State;)V

    .line 7
    invoke-direct {p0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->preWriteValue()V

    .line 8
    invoke-direct {p0, p1}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->write(Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->setNextState()V

    return-void
.end method

.method public writeNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    .line 1
    invoke-static {v0, p1}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "value"

    .line 2
    invoke-static {v0, p2}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p1}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->writeName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p2}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->writeNumber(Ljava/lang/String;)V

    return-void
.end method

.method public writeRaw(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    .line 5
    invoke-static {v0, p1}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lorg/bson/json/StrictCharacterStreamJsonWriter$State;->VALUE:Lorg/bson/json/StrictCharacterStreamJsonWriter$State;

    invoke-direct {p0, v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->checkState(Lorg/bson/json/StrictCharacterStreamJsonWriter$State;)V

    .line 7
    invoke-direct {p0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->preWriteValue()V

    .line 8
    invoke-direct {p0, p1}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->write(Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->setNextState()V

    return-void
.end method

.method public writeRaw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    .line 1
    invoke-static {v0, p1}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "value"

    .line 2
    invoke-static {v0, p2}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p1}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->writeName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p2}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->writeRaw(Ljava/lang/String;)V

    return-void
.end method

.method public writeStartArray()V
    .locals 4

    .line 3
    invoke-direct {p0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->preWriteValue()V

    const-string v0, "["

    .line 4
    invoke-direct {p0, v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->write(Ljava/lang/String;)V

    .line 5
    new-instance v0, Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;

    iget-object v1, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->context:Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;

    sget-object v2, Lorg/bson/json/StrictCharacterStreamJsonWriter$JsonContextType;->ARRAY:Lorg/bson/json/StrictCharacterStreamJsonWriter$JsonContextType;

    iget-object v3, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->settings:Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;

    invoke-virtual {v3}, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;->getIndentCharacters()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;-><init>(Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;Lorg/bson/json/StrictCharacterStreamJsonWriter$JsonContextType;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->context:Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;

    .line 6
    sget-object v0, Lorg/bson/json/StrictCharacterStreamJsonWriter$State;->VALUE:Lorg/bson/json/StrictCharacterStreamJsonWriter$State;

    iput-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->state:Lorg/bson/json/StrictCharacterStreamJsonWriter$State;

    return-void
.end method

.method public writeStartArray(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->writeName(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->writeStartArray()V

    return-void
.end method

.method public writeStartObject()V
    .locals 4

    .line 3
    iget-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->state:Lorg/bson/json/StrictCharacterStreamJsonWriter$State;

    sget-object v1, Lorg/bson/json/StrictCharacterStreamJsonWriter$State;->INITIAL:Lorg/bson/json/StrictCharacterStreamJsonWriter$State;

    if-eq v0, v1, :cond_1

    sget-object v1, Lorg/bson/json/StrictCharacterStreamJsonWriter$State;->VALUE:Lorg/bson/json/StrictCharacterStreamJsonWriter$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lorg/bson/BsonInvalidOperationException;

    const-string v1, "Invalid state "

    .line 5
    invoke-static {v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->state:Lorg/bson/json/StrictCharacterStreamJsonWriter$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bson/BsonInvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->preWriteValue()V

    const-string v0, "{"

    .line 8
    invoke-direct {p0, v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->write(Ljava/lang/String;)V

    .line 9
    new-instance v0, Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;

    iget-object v1, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->context:Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;

    sget-object v2, Lorg/bson/json/StrictCharacterStreamJsonWriter$JsonContextType;->DOCUMENT:Lorg/bson/json/StrictCharacterStreamJsonWriter$JsonContextType;

    iget-object v3, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->settings:Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;

    invoke-virtual {v3}, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;->getIndentCharacters()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;-><init>(Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;Lorg/bson/json/StrictCharacterStreamJsonWriter$JsonContextType;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->context:Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;

    .line 10
    sget-object v0, Lorg/bson/json/StrictCharacterStreamJsonWriter$State;->NAME:Lorg/bson/json/StrictCharacterStreamJsonWriter$State;

    iput-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter;->state:Lorg/bson/json/StrictCharacterStreamJsonWriter$State;

    return-void
.end method

.method public writeStartObject(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->writeName(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->writeStartObject()V

    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    .line 5
    invoke-static {v0, p1}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lorg/bson/json/StrictCharacterStreamJsonWriter$State;->VALUE:Lorg/bson/json/StrictCharacterStreamJsonWriter$State;

    invoke-direct {p0, v0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->checkState(Lorg/bson/json/StrictCharacterStreamJsonWriter$State;)V

    .line 7
    invoke-direct {p0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->preWriteValue()V

    .line 8
    invoke-direct {p0, p1}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->writeStringHelper(Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->setNextState()V

    return-void
.end method

.method public writeString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    .line 1
    invoke-static {v0, p1}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "value"

    .line 2
    invoke-static {v0, p2}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p1}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->writeName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p2}, Lorg/bson/json/StrictCharacterStreamJsonWriter;->writeString(Ljava/lang/String;)V

    return-void
.end method
