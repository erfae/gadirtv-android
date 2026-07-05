.class Lorg/bson/codecs/pojo/MapPropertyCodecProvider$MapCodec;
.super Ljava/lang/Object;
.source "MapPropertyCodecProvider.java"

# interfaces
.implements Lorg/bson/codecs/Codec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bson/codecs/pojo/MapPropertyCodecProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MapCodec"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/bson/codecs/Codec<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final codec:Lorg/bson/codecs/Codec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bson/codecs/Codec<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final encoderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lorg/bson/codecs/Codec;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;>;",
            "Lorg/bson/codecs/Codec<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/bson/codecs/pojo/MapPropertyCodecProvider$MapCodec;->encoderClass:Ljava/lang/Class;

    .line 3
    iput-object p2, p0, Lorg/bson/codecs/pojo/MapPropertyCodecProvider$MapCodec;->codec:Lorg/bson/codecs/Codec;

    return-void
.end method

.method private getInstance()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bson/codecs/pojo/MapPropertyCodecProvider$MapCodec;->encoderClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0

    .line 3
    :cond_e
    :try_start_e
    iget-object v0, p0, Lorg/bson/codecs/pojo/MapPropertyCodecProvider$MapCodec;->encoderClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1f} :catch_20

    return-object v0

    :catch_20
    move-exception v0

    .line 4
    new-instance v1, Lorg/bson/codecs/configuration/CodecConfigurationException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bson/codecs/configuration/CodecConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public bridge synthetic decode(Lorg/bson/BsonReader;Lorg/bson/codecs/DecoderContext;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/bson/codecs/pojo/MapPropertyCodecProvider$MapCodec;->decode(Lorg/bson/BsonReader;Lorg/bson/codecs/DecoderContext;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lorg/bson/BsonReader;Lorg/bson/codecs/DecoderContext;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bson/BsonReader;",
            "Lorg/bson/codecs/DecoderContext;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Lorg/bson/BsonReader;->readStartDocument()V

    .line 3
    invoke-direct {p0}, Lorg/bson/codecs/pojo/MapPropertyCodecProvider$MapCodec;->getInstance()Ljava/util/Map;

    move-result-object v0

    .line 4
    :goto_7
    invoke-interface {p1}, Lorg/bson/BsonReader;->readBsonType()Lorg/bson/BsonType;

    move-result-object v1

    sget-object v2, Lorg/bson/BsonType;->END_OF_DOCUMENT:Lorg/bson/BsonType;

    if-eq v1, v2, :cond_31

    .line 5
    invoke-interface {p1}, Lorg/bson/BsonReader;->getCurrentBsonType()Lorg/bson/BsonType;

    move-result-object v1

    sget-object v2, Lorg/bson/BsonType;->NULL:Lorg/bson/BsonType;

    if-ne v1, v2, :cond_23

    .line 6
    invoke-interface {p1}, Lorg/bson/BsonReader;->readName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-interface {p1}, Lorg/bson/BsonReader;->readNull()V

    goto :goto_7

    .line 8
    :cond_23
    invoke-interface {p1}, Lorg/bson/BsonReader;->readName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/bson/codecs/pojo/MapPropertyCodecProvider$MapCodec;->codec:Lorg/bson/codecs/Codec;

    invoke-interface {v2, p1, p2}, Lorg/bson/codecs/Decoder;->decode(Lorg/bson/BsonReader;Lorg/bson/codecs/DecoderContext;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 9
    :cond_31
    invoke-interface {p1}, Lorg/bson/BsonReader;->readEndDocument()V

    return-object v0
.end method

.method public bridge synthetic encode(Lorg/bson/BsonWriter;Ljava/lang/Object;Lorg/bson/codecs/EncoderContext;)V
    .registers 4

    .line 1
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p3}, Lorg/bson/codecs/pojo/MapPropertyCodecProvider$MapCodec;->encode(Lorg/bson/BsonWriter;Ljava/util/Map;Lorg/bson/codecs/EncoderContext;)V

    return-void
.end method

.method public encode(Lorg/bson/BsonWriter;Ljava/util/Map;Lorg/bson/codecs/EncoderContext;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bson/BsonWriter;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;",
            "Lorg/bson/codecs/EncoderContext;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Lorg/bson/BsonWriter;->writeStartDocument()V

    .line 3
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Lorg/bson/BsonWriter;->writeName(Ljava/lang/String;)V

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2a

    .line 6
    invoke-interface {p1}, Lorg/bson/BsonWriter;->writeNull()V

    goto :goto_b

    .line 7
    :cond_2a
    iget-object v1, p0, Lorg/bson/codecs/pojo/MapPropertyCodecProvider$MapCodec;->codec:Lorg/bson/codecs/Codec;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, p1, v0, p3}, Lorg/bson/codecs/Encoder;->encode(Lorg/bson/BsonWriter;Ljava/lang/Object;Lorg/bson/codecs/EncoderContext;)V

    goto :goto_b

    .line 8
    :cond_34
    invoke-interface {p1}, Lorg/bson/BsonWriter;->writeEndDocument()V

    return-void
.end method

.method public getEncoderClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bson/codecs/pojo/MapPropertyCodecProvider$MapCodec;->encoderClass:Ljava/lang/Class;

    return-object v0
.end method
