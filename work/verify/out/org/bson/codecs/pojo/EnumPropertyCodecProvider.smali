.class final Lorg/bson/codecs/pojo/EnumPropertyCodecProvider;
.super Ljava/lang/Object;
.source "EnumPropertyCodecProvider.java"

# interfaces
.implements Lorg/bson/codecs/pojo/PropertyCodecProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bson/codecs/pojo/EnumPropertyCodecProvider$EnumCodec;
    }
.end annotation


# instance fields
.field private final codecRegistry:Lorg/bson/codecs/configuration/CodecRegistry;


# direct methods
.method public constructor <init>(Lorg/bson/codecs/configuration/CodecRegistry;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/bson/codecs/pojo/EnumPropertyCodecProvider;->codecRegistry:Lorg/bson/codecs/configuration/CodecRegistry;

    return-void
.end method


# virtual methods
.method public get(Lorg/bson/codecs/pojo/TypeWithTypeParameters;Lorg/bson/codecs/pojo/PropertyCodecRegistry;)Lorg/bson/codecs/Codec;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/bson/codecs/pojo/TypeWithTypeParameters<",
            "TT;>;",
            "Lorg/bson/codecs/pojo/PropertyCodecRegistry;",
            ")",
            "Lorg/bson/codecs/Codec<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lorg/bson/codecs/pojo/TypeWithTypeParameters;->getType()Ljava/lang/Class;

    move-result-object p1

    .line 2
    const-class p2, Ljava/lang/Enum;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_19

    .line 3
    :try_start_c
    iget-object p2, p0, Lorg/bson/codecs/pojo/EnumPropertyCodecProvider;->codecRegistry:Lorg/bson/codecs/configuration/CodecRegistry;

    invoke-interface {p2, p1}, Lorg/bson/codecs/configuration/CodecRegistry;->get(Ljava/lang/Class;)Lorg/bson/codecs/Codec;

    move-result-object p1
    :try_end_12
    .catch Lorg/bson/codecs/configuration/CodecConfigurationException; {:try_start_c .. :try_end_12} :catch_13

    return-object p1

    .line 4
    :catch_13
    new-instance p2, Lorg/bson/codecs/pojo/EnumPropertyCodecProvider$EnumCodec;

    invoke-direct {p2, p1}, Lorg/bson/codecs/pojo/EnumPropertyCodecProvider$EnumCodec;-><init>(Ljava/lang/Class;)V

    return-object p2

    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method
