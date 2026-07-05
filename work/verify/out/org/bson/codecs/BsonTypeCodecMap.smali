.class public Lorg/bson/codecs/BsonTypeCodecMap;
.super Ljava/lang/Object;
.source "BsonTypeCodecMap.java"


# instance fields
.field private final bsonTypeClassMap:Lorg/bson/codecs/BsonTypeClassMap;

.field private final codecs:[Lorg/bson/codecs/Codec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/bson/codecs/Codec<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/bson/codecs/BsonTypeClassMap;Lorg/bson/codecs/configuration/CodecRegistry;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [Lorg/bson/codecs/Codec;

    .line 2
    iput-object v0, p0, Lorg/bson/codecs/BsonTypeCodecMap;->codecs:[Lorg/bson/codecs/Codec;

    const-string v0, "bsonTypeClassMap"

    .line 3
    invoke-static {v0, p1}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bson/codecs/BsonTypeClassMap;

    iput-object v0, p0, Lorg/bson/codecs/BsonTypeCodecMap;->bsonTypeClassMap:Lorg/bson/codecs/BsonTypeClassMap;

    const-string v0, "codecRegistry"

    .line 4
    invoke-static {v0, p2}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Lorg/bson/codecs/BsonTypeClassMap;->keys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_20
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bson/BsonType;

    .line 6
    invoke-virtual {p1, v1}, Lorg/bson/codecs/BsonTypeClassMap;->get(Lorg/bson/BsonType;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 7
    :try_start_32
    iget-object v3, p0, Lorg/bson/codecs/BsonTypeCodecMap;->codecs:[Lorg/bson/codecs/Codec;

    invoke-virtual {v1}, Lorg/bson/BsonType;->getValue()I

    move-result v1

    invoke-interface {p2, v2}, Lorg/bson/codecs/configuration/CodecRegistry;->get(Ljava/lang/Class;)Lorg/bson/codecs/Codec;

    move-result-object v2

    aput-object v2, v3, v1
    :try_end_3e
    .catch Lorg/bson/codecs/configuration/CodecConfigurationException; {:try_start_32 .. :try_end_3e} :catch_3f

    goto :goto_20

    :catch_3f
    nop

    goto :goto_20

    :cond_41
    return-void
.end method


# virtual methods
.method public get(Lorg/bson/BsonType;)Lorg/bson/codecs/Codec;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bson/BsonType;",
            ")",
            "Lorg/bson/codecs/Codec<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bson/codecs/BsonTypeCodecMap;->codecs:[Lorg/bson/codecs/Codec;

    invoke-virtual {p1}, Lorg/bson/BsonType;->getValue()I

    move-result v1

    aget-object v0, v0, v1

    if-nez v0, :cond_34

    .line 2
    iget-object v0, p0, Lorg/bson/codecs/BsonTypeCodecMap;->bsonTypeClassMap:Lorg/bson/codecs/BsonTypeClassMap;

    invoke-virtual {v0, p1}, Lorg/bson/codecs/BsonTypeClassMap;->get(Lorg/bson/BsonType;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_24

    .line 3
    new-instance v0, Lorg/bson/codecs/configuration/CodecConfigurationException;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "No class mapped for BSON type %s."

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bson/codecs/configuration/CodecConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_24
    new-instance p1, Lorg/bson/codecs/configuration/CodecConfigurationException;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "Can\'t find a codec for %s."

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/bson/codecs/configuration/CodecConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_34
    return-object v0
.end method
