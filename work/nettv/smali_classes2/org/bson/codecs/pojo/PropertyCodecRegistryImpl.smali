.class Lorg/bson/codecs/pojo/PropertyCodecRegistryImpl;
.super Ljava/lang/Object;
.source "PropertyCodecRegistryImpl.java"

# interfaces
.implements Lorg/bson/codecs/pojo/PropertyCodecRegistry;


# instance fields
.field private final propertyCodecProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bson/codecs/pojo/PropertyCodecProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/bson/codecs/pojo/PojoCodec;Lorg/bson/codecs/configuration/CodecRegistry;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bson/codecs/pojo/PojoCodec<",
            "*>;",
            "Lorg/bson/codecs/configuration/CodecRegistry;",
            "Ljava/util/List<",
            "Lorg/bson/codecs/pojo/PropertyCodecProvider;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4
    :cond_0
    new-instance p3, Lorg/bson/codecs/pojo/CollectionPropertyCodecProvider;

    invoke-direct {p3}, Lorg/bson/codecs/pojo/CollectionPropertyCodecProvider;-><init>()V

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance p3, Lorg/bson/codecs/pojo/MapPropertyCodecProvider;

    invoke-direct {p3}, Lorg/bson/codecs/pojo/MapPropertyCodecProvider;-><init>()V

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance p3, Lorg/bson/codecs/pojo/EnumPropertyCodecProvider;

    invoke-direct {p3, p2}, Lorg/bson/codecs/pojo/EnumPropertyCodecProvider;-><init>(Lorg/bson/codecs/configuration/CodecRegistry;)V

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance p3, Lorg/bson/codecs/pojo/FallbackPropertyCodecProvider;

    invoke-direct {p3, p1, p2}, Lorg/bson/codecs/pojo/FallbackPropertyCodecProvider;-><init>(Lorg/bson/codecs/pojo/PojoCodec;Lorg/bson/codecs/configuration/CodecRegistry;)V

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iput-object v0, p0, Lorg/bson/codecs/pojo/PropertyCodecRegistryImpl;->propertyCodecProviders:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public get(Lorg/bson/codecs/pojo/TypeWithTypeParameters;)Lorg/bson/codecs/Codec;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/bson/codecs/pojo/TypeWithTypeParameters<",
            "TS;>;)",
            "Lorg/bson/codecs/Codec<",
            "TS;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bson/codecs/pojo/PropertyCodecRegistryImpl;->propertyCodecProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bson/codecs/pojo/PropertyCodecProvider;

    .line 2
    invoke-interface {v1, p1, p0}, Lorg/bson/codecs/pojo/PropertyCodecProvider;->get(Lorg/bson/codecs/pojo/TypeWithTypeParameters;Lorg/bson/codecs/pojo/PropertyCodecRegistry;)Lorg/bson/codecs/Codec;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
