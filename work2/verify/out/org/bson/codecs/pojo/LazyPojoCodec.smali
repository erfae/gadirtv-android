.class Lorg/bson/codecs/pojo/LazyPojoCodec;
.super Lorg/bson/codecs/pojo/PojoCodec;
.source "LazyPojoCodec.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/bson/codecs/pojo/PojoCodec<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final classModel:Lorg/bson/codecs/pojo/ClassModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bson/codecs/pojo/ClassModel<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final codecCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lorg/bson/codecs/pojo/ClassModel<",
            "*>;",
            "Lorg/bson/codecs/Codec<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final discriminatorLookup:Lorg/bson/codecs/pojo/DiscriminatorLookup;

.field private volatile pojoCodec:Lorg/bson/codecs/pojo/PojoCodecImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bson/codecs/pojo/PojoCodecImpl<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final propertyCodecRegistry:Lorg/bson/codecs/pojo/PropertyCodecRegistry;

.field private final registry:Lorg/bson/codecs/configuration/CodecRegistry;


# direct methods
.method public constructor <init>(Lorg/bson/codecs/pojo/ClassModel;Lorg/bson/codecs/configuration/CodecRegistry;Lorg/bson/codecs/pojo/PropertyCodecRegistry;Lorg/bson/codecs/pojo/DiscriminatorLookup;Ljava/util/concurrent/ConcurrentMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bson/codecs/pojo/ClassModel<",
            "TT;>;",
            "Lorg/bson/codecs/configuration/CodecRegistry;",
            "Lorg/bson/codecs/pojo/PropertyCodecRegistry;",
            "Lorg/bson/codecs/pojo/DiscriminatorLookup;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lorg/bson/codecs/pojo/ClassModel<",
            "*>;",
            "Lorg/bson/codecs/Codec<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/bson/codecs/pojo/PojoCodec;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/bson/codecs/pojo/LazyPojoCodec;->classModel:Lorg/bson/codecs/pojo/ClassModel;

    .line 3
    iput-object p2, p0, Lorg/bson/codecs/pojo/LazyPojoCodec;->registry:Lorg/bson/codecs/configuration/CodecRegistry;

    .line 4
    iput-object p3, p0, Lorg/bson/codecs/pojo/LazyPojoCodec;->propertyCodecRegistry:Lorg/bson/codecs/pojo/PropertyCodecRegistry;

    .line 5
    iput-object p4, p0, Lorg/bson/codecs/pojo/LazyPojoCodec;->discriminatorLookup:Lorg/bson/codecs/pojo/DiscriminatorLookup;

    .line 6
    iput-object p5, p0, Lorg/bson/codecs/pojo/LazyPojoCodec;->codecCache:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private getPojoCodec()Lorg/bson/codecs/Codec;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bson/codecs/Codec<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bson/codecs/pojo/LazyPojoCodec;->pojoCodec:Lorg/bson/codecs/pojo/PojoCodecImpl;

    if-nez v0, :cond_16

    .line 2
    new-instance v0, Lorg/bson/codecs/pojo/PojoCodecImpl;

    iget-object v2, p0, Lorg/bson/codecs/pojo/LazyPojoCodec;->classModel:Lorg/bson/codecs/pojo/ClassModel;

    iget-object v3, p0, Lorg/bson/codecs/pojo/LazyPojoCodec;->registry:Lorg/bson/codecs/configuration/CodecRegistry;

    iget-object v4, p0, Lorg/bson/codecs/pojo/LazyPojoCodec;->propertyCodecRegistry:Lorg/bson/codecs/pojo/PropertyCodecRegistry;

    iget-object v5, p0, Lorg/bson/codecs/pojo/LazyPojoCodec;->discriminatorLookup:Lorg/bson/codecs/pojo/DiscriminatorLookup;

    iget-object v6, p0, Lorg/bson/codecs/pojo/LazyPojoCodec;->codecCache:Ljava/util/concurrent/ConcurrentMap;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/bson/codecs/pojo/PojoCodecImpl;-><init>(Lorg/bson/codecs/pojo/ClassModel;Lorg/bson/codecs/configuration/CodecRegistry;Lorg/bson/codecs/pojo/PropertyCodecRegistry;Lorg/bson/codecs/pojo/DiscriminatorLookup;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v0, p0, Lorg/bson/codecs/pojo/LazyPojoCodec;->pojoCodec:Lorg/bson/codecs/pojo/PojoCodecImpl;

    .line 3
    :cond_16
    iget-object v0, p0, Lorg/bson/codecs/pojo/LazyPojoCodec;->pojoCodec:Lorg/bson/codecs/pojo/PojoCodecImpl;

    return-object v0
.end method


# virtual methods
.method public decode(Lorg/bson/BsonReader;Lorg/bson/codecs/DecoderContext;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bson/BsonReader;",
            "Lorg/bson/codecs/DecoderContext;",
            ")TT;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/bson/codecs/pojo/LazyPojoCodec;->getPojoCodec()Lorg/bson/codecs/Codec;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/bson/codecs/Decoder;->decode(Lorg/bson/BsonReader;Lorg/bson/codecs/DecoderContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lorg/bson/BsonWriter;Ljava/lang/Object;Lorg/bson/codecs/EncoderContext;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bson/BsonWriter;",
            "TT;",
            "Lorg/bson/codecs/EncoderContext;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/bson/codecs/pojo/LazyPojoCodec;->getPojoCodec()Lorg/bson/codecs/Codec;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/bson/codecs/Encoder;->encode(Lorg/bson/BsonWriter;Ljava/lang/Object;Lorg/bson/codecs/EncoderContext;)V

    return-void
.end method

.method public final getClassModel()Lorg/bson/codecs/pojo/ClassModel;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bson/codecs/pojo/ClassModel<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bson/codecs/pojo/LazyPojoCodec;->classModel:Lorg/bson/codecs/pojo/ClassModel;

    return-object v0
.end method

.method public getEncoderClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bson/codecs/pojo/LazyPojoCodec;->classModel:Lorg/bson/codecs/pojo/ClassModel;

    invoke-virtual {v0}, Lorg/bson/codecs/pojo/ClassModel;->getType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
