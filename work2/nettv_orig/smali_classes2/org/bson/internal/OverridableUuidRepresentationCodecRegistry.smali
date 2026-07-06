.class public Lorg/bson/internal/OverridableUuidRepresentationCodecRegistry;
.super Ljava/lang/Object;
.source "OverridableUuidRepresentationCodecRegistry.java"

# interfaces
.implements Lorg/bson/internal/CycleDetectingCodecRegistry;


# instance fields
.field private final codecCache:Lorg/bson/internal/CodecCache;

.field private final uuidRepresentation:Lorg/bson/UuidRepresentation;

.field private final wrapped:Lorg/bson/codecs/configuration/CodecProvider;


# direct methods
.method public constructor <init>(Lorg/bson/codecs/configuration/CodecProvider;Lorg/bson/UuidRepresentation;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/bson/internal/CodecCache;

    invoke-direct {v0}, Lorg/bson/internal/CodecCache;-><init>()V

    iput-object v0, p0, Lorg/bson/internal/OverridableUuidRepresentationCodecRegistry;->codecCache:Lorg/bson/internal/CodecCache;

    const-string v0, "uuidRepresentation"

    .line 3
    invoke-static {v0, p2}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bson/UuidRepresentation;

    iput-object p2, p0, Lorg/bson/internal/OverridableUuidRepresentationCodecRegistry;->uuidRepresentation:Lorg/bson/UuidRepresentation;

    const-string p2, "wrapped"

    .line 4
    invoke-static {p2, p1}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bson/codecs/configuration/CodecProvider;

    iput-object p1, p0, Lorg/bson/internal/OverridableUuidRepresentationCodecRegistry;->wrapped:Lorg/bson/codecs/configuration/CodecProvider;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lorg/bson/internal/OverridableUuidRepresentationCodecRegistry;

    .line 3
    iget-object v2, p0, Lorg/bson/internal/OverridableUuidRepresentationCodecRegistry;->wrapped:Lorg/bson/codecs/configuration/CodecProvider;

    iget-object v3, p1, Lorg/bson/internal/OverridableUuidRepresentationCodecRegistry;->wrapped:Lorg/bson/codecs/configuration/CodecProvider;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object v2, p0, Lorg/bson/internal/OverridableUuidRepresentationCodecRegistry;->uuidRepresentation:Lorg/bson/UuidRepresentation;

    iget-object p1, p1, Lorg/bson/internal/OverridableUuidRepresentationCodecRegistry;->uuidRepresentation:Lorg/bson/UuidRepresentation;

    if-ne v2, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public get(Ljava/lang/Class;)Lorg/bson/codecs/Codec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/bson/codecs/Codec<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/bson/internal/ChildCodecRegistry;

    invoke-direct {v0, p0, p1}, Lorg/bson/internal/ChildCodecRegistry;-><init>(Lorg/bson/internal/CycleDetectingCodecRegistry;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lorg/bson/internal/OverridableUuidRepresentationCodecRegistry;->get(Lorg/bson/internal/ChildCodecRegistry;)Lorg/bson/codecs/Codec;

    move-result-object p1

    return-object p1
.end method

.method public get(Lorg/bson/internal/ChildCodecRegistry;)Lorg/bson/codecs/Codec;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/bson/internal/ChildCodecRegistry<",
            "TT;>;)",
            "Lorg/bson/codecs/Codec<",
            "TT;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/bson/internal/OverridableUuidRepresentationCodecRegistry;->codecCache:Lorg/bson/internal/CodecCache;

    invoke-virtual {p1}, Lorg/bson/internal/ChildCodecRegistry;->getCodecClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bson/internal/CodecCache;->containsKey(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lorg/bson/internal/OverridableUuidRepresentationCodecRegistry;->wrapped:Lorg/bson/codecs/configuration/CodecProvider;

    invoke-virtual {p1}, Lorg/bson/internal/ChildCodecRegistry;->getCodecClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/bson/codecs/configuration/CodecProvider;->get(Ljava/lang/Class;Lorg/bson/codecs/configuration/CodecRegistry;)Lorg/bson/codecs/Codec;

    move-result-object v0

    .line 4
    instance-of v1, v0, Lorg/bson/codecs/OverridableUuidRepresentationCodec;

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, Lorg/bson/codecs/OverridableUuidRepresentationCodec;

    iget-object v1, p0, Lorg/bson/internal/OverridableUuidRepresentationCodecRegistry;->uuidRepresentation:Lorg/bson/UuidRepresentation;

    invoke-interface {v0, v1}, Lorg/bson/codecs/OverridableUuidRepresentationCodec;->withUuidRepresentation(Lorg/bson/UuidRepresentation;)Lorg/bson/codecs/Codec;

    move-result-object v0

    .line 6
    :cond_0
    iget-object v1, p0, Lorg/bson/internal/OverridableUuidRepresentationCodecRegistry;->codecCache:Lorg/bson/internal/CodecCache;

    invoke-virtual {p1}, Lorg/bson/internal/ChildCodecRegistry;->getCodecClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/bson/internal/CodecCache;->put(Ljava/lang/Class;Lorg/bson/codecs/Codec;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lorg/bson/internal/OverridableUuidRepresentationCodecRegistry;->codecCache:Lorg/bson/internal/CodecCache;

    invoke-virtual {p1}, Lorg/bson/internal/ChildCodecRegistry;->getCodecClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bson/internal/CodecCache;->getOrThrow(Ljava/lang/Class;)Lorg/bson/codecs/Codec;

    move-result-object p1

    return-object p1
.end method

.method public getUuidRepresentation()Lorg/bson/UuidRepresentation;
    .locals 1

    iget-object v0, p0, Lorg/bson/internal/OverridableUuidRepresentationCodecRegistry;->uuidRepresentation:Lorg/bson/UuidRepresentation;

    return-object v0
.end method

.method public getWrapped()Lorg/bson/codecs/configuration/CodecProvider;
    .locals 1

    iget-object v0, p0, Lorg/bson/internal/OverridableUuidRepresentationCodecRegistry;->wrapped:Lorg/bson/codecs/configuration/CodecProvider;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/bson/internal/OverridableUuidRepresentationCodecRegistry;->wrapped:Lorg/bson/codecs/configuration/CodecProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lorg/bson/internal/OverridableUuidRepresentationCodecRegistry;->uuidRepresentation:Lorg/bson/UuidRepresentation;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
