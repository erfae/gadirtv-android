.class public final Lorg/bson/internal/CodecRegistryHelper;
.super Ljava/lang/Object;
.source "CodecRegistryHelper.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRegistry(Lorg/bson/codecs/configuration/CodecRegistry;Lorg/bson/UuidRepresentation;)Lorg/bson/codecs/configuration/CodecRegistry;
    .registers 3

    .line 1
    sget-object v0, Lorg/bson/UuidRepresentation;->JAVA_LEGACY:Lorg/bson/UuidRepresentation;

    if-eq p1, v0, :cond_19

    .line 2
    instance-of v0, p0, Lorg/bson/codecs/configuration/CodecProvider;

    if-eqz v0, :cond_11

    .line 3
    new-instance v0, Lorg/bson/internal/OverridableUuidRepresentationCodecRegistry;

    check-cast p0, Lorg/bson/codecs/configuration/CodecProvider;

    invoke-direct {v0, p0, p1}, Lorg/bson/internal/OverridableUuidRepresentationCodecRegistry;-><init>(Lorg/bson/codecs/configuration/CodecProvider;Lorg/bson/UuidRepresentation;)V

    move-object p0, v0

    goto :goto_19

    .line 4
    :cond_11
    new-instance p0, Lorg/bson/codecs/configuration/CodecConfigurationException;

    const-string p1, "Changing the default UuidRepresentation requires a CodecRegistry that also implements the CodecProvider interface"

    invoke-direct {p0, p1}, Lorg/bson/codecs/configuration/CodecConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    :goto_19
    return-object p0
.end method
