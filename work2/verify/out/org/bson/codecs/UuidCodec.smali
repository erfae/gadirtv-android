.class public Lorg/bson/codecs/UuidCodec;
.super Ljava/lang/Object;
.source "UuidCodec.java"

# interfaces
.implements Lorg/bson/codecs/Codec;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/bson/codecs/Codec<",
        "Ljava/util/UUID;",
        ">;"
    }
.end annotation


# instance fields
.field private final uuidRepresentation:Lorg/bson/UuidRepresentation;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    sget-object v0, Lorg/bson/UuidRepresentation;->JAVA_LEGACY:Lorg/bson/UuidRepresentation;

    iput-object v0, p0, Lorg/bson/codecs/UuidCodec;->uuidRepresentation:Lorg/bson/UuidRepresentation;

    return-void
.end method

.method public constructor <init>(Lorg/bson/UuidRepresentation;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "uuidRepresentation"

    .line 2
    invoke-static {v0, p1}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lorg/bson/codecs/UuidCodec;->uuidRepresentation:Lorg/bson/UuidRepresentation;

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lorg/bson/BsonReader;Lorg/bson/codecs/DecoderContext;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/bson/codecs/UuidCodec;->decode(Lorg/bson/BsonReader;Lorg/bson/codecs/DecoderContext;)Ljava/util/UUID;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lorg/bson/BsonReader;Lorg/bson/codecs/DecoderContext;)Ljava/util/UUID;
    .registers 4

    .line 2
    invoke-interface {p1}, Lorg/bson/BsonReader;->peekBinarySubType()B

    move-result p2

    .line 3
    sget-object v0, Lorg/bson/BsonBinarySubType;->UUID_LEGACY:Lorg/bson/BsonBinarySubType;

    invoke-virtual {v0}, Lorg/bson/BsonBinarySubType;->getValue()B

    move-result v0

    if-eq p2, v0, :cond_1d

    sget-object v0, Lorg/bson/BsonBinarySubType;->UUID_STANDARD:Lorg/bson/BsonBinarySubType;

    invoke-virtual {v0}, Lorg/bson/BsonBinarySubType;->getValue()B

    move-result v0

    if-ne p2, v0, :cond_15

    goto :goto_1d

    .line 4
    :cond_15
    new-instance p1, Lorg/bson/BSONException;

    const-string p2, "Unexpected BsonBinarySubType"

    invoke-direct {p1, p2}, Lorg/bson/BSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1d
    :goto_1d
    invoke-interface {p1}, Lorg/bson/BsonReader;->readBinaryData()Lorg/bson/BsonBinary;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bson/BsonBinary;->getData()[B

    move-result-object p1

    .line 6
    iget-object v0, p0, Lorg/bson/codecs/UuidCodec;->uuidRepresentation:Lorg/bson/UuidRepresentation;

    invoke-static {p1, p2, v0}, Lorg/bson/internal/UuidHelper;->decodeBinaryToUuid([BBLorg/bson/UuidRepresentation;)Ljava/util/UUID;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic encode(Lorg/bson/BsonWriter;Ljava/lang/Object;Lorg/bson/codecs/EncoderContext;)V
    .registers 4

    .line 1
    check-cast p2, Ljava/util/UUID;

    invoke-virtual {p0, p1, p2, p3}, Lorg/bson/codecs/UuidCodec;->encode(Lorg/bson/BsonWriter;Ljava/util/UUID;Lorg/bson/codecs/EncoderContext;)V

    return-void
.end method

.method public encode(Lorg/bson/BsonWriter;Ljava/util/UUID;Lorg/bson/codecs/EncoderContext;)V
    .registers 5

    .line 2
    iget-object p3, p0, Lorg/bson/codecs/UuidCodec;->uuidRepresentation:Lorg/bson/UuidRepresentation;

    sget-object v0, Lorg/bson/UuidRepresentation;->UNSPECIFIED:Lorg/bson/UuidRepresentation;

    if-eq p3, v0, :cond_26

    .line 3
    invoke-static {p2, p3}, Lorg/bson/internal/UuidHelper;->encodeUuidToBinary(Ljava/util/UUID;Lorg/bson/UuidRepresentation;)[B

    move-result-object p2

    .line 4
    iget-object p3, p0, Lorg/bson/codecs/UuidCodec;->uuidRepresentation:Lorg/bson/UuidRepresentation;

    sget-object v0, Lorg/bson/UuidRepresentation;->STANDARD:Lorg/bson/UuidRepresentation;

    if-ne p3, v0, :cond_1b

    .line 5
    new-instance p3, Lorg/bson/BsonBinary;

    sget-object v0, Lorg/bson/BsonBinarySubType;->UUID_STANDARD:Lorg/bson/BsonBinarySubType;

    invoke-direct {p3, v0, p2}, Lorg/bson/BsonBinary;-><init>(Lorg/bson/BsonBinarySubType;[B)V

    invoke-interface {p1, p3}, Lorg/bson/BsonWriter;->writeBinaryData(Lorg/bson/BsonBinary;)V

    goto :goto_25

    .line 6
    :cond_1b
    new-instance p3, Lorg/bson/BsonBinary;

    sget-object v0, Lorg/bson/BsonBinarySubType;->UUID_LEGACY:Lorg/bson/BsonBinarySubType;

    invoke-direct {p3, v0, p2}, Lorg/bson/BsonBinary;-><init>(Lorg/bson/BsonBinarySubType;[B)V

    invoke-interface {p1, p3}, Lorg/bson/BsonWriter;->writeBinaryData(Lorg/bson/BsonBinary;)V

    :goto_25
    return-void

    .line 7
    :cond_26
    new-instance p1, Lorg/bson/codecs/configuration/CodecConfigurationException;

    const-string p2, "The uuidRepresentation has not been specified, so the UUID cannot be encoded."

    invoke-direct {p1, p2}, Lorg/bson/codecs/configuration/CodecConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getEncoderClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/util/UUID;

    return-object v0
.end method

.method public getUuidRepresentation()Lorg/bson/UuidRepresentation;
    .registers 2

    iget-object v0, p0, Lorg/bson/codecs/UuidCodec;->uuidRepresentation:Lorg/bson/UuidRepresentation;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "UuidCodec{uuidRepresentation="

    .line 1
    invoke-static {v0}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/bson/codecs/UuidCodec;->uuidRepresentation:Lorg/bson/UuidRepresentation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
