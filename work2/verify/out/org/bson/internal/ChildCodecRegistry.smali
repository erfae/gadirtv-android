.class Lorg/bson/internal/ChildCodecRegistry;
.super Ljava/lang/Object;
.source "ChildCodecRegistry.java"

# interfaces
.implements Lorg/bson/codecs/configuration/CodecRegistry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/bson/codecs/configuration/CodecRegistry;"
    }
.end annotation


# instance fields
.field private final codecClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final parent:Lorg/bson/internal/ChildCodecRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bson/internal/ChildCodecRegistry<",
            "*>;"
        }
    .end annotation
.end field

.field private final registry:Lorg/bson/internal/CycleDetectingCodecRegistry;


# direct methods
.method private constructor <init>(Lorg/bson/internal/ChildCodecRegistry;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bson/internal/ChildCodecRegistry<",
            "*>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lorg/bson/internal/ChildCodecRegistry;->parent:Lorg/bson/internal/ChildCodecRegistry;

    .line 7
    iput-object p2, p0, Lorg/bson/internal/ChildCodecRegistry;->codecClass:Ljava/lang/Class;

    .line 8
    iget-object p1, p1, Lorg/bson/internal/ChildCodecRegistry;->registry:Lorg/bson/internal/CycleDetectingCodecRegistry;

    iput-object p1, p0, Lorg/bson/internal/ChildCodecRegistry;->registry:Lorg/bson/internal/CycleDetectingCodecRegistry;

    return-void
.end method

.method public constructor <init>(Lorg/bson/internal/CycleDetectingCodecRegistry;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bson/internal/CycleDetectingCodecRegistry;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lorg/bson/internal/ChildCodecRegistry;->codecClass:Ljava/lang/Class;

    const/4 p2, 0x0

    .line 3
    iput-object p2, p0, Lorg/bson/internal/ChildCodecRegistry;->parent:Lorg/bson/internal/ChildCodecRegistry;

    .line 4
    iput-object p1, p0, Lorg/bson/internal/ChildCodecRegistry;->registry:Lorg/bson/internal/CycleDetectingCodecRegistry;

    return-void
.end method

.method private hasCycles(Ljava/lang/Class;)Ljava/lang/Boolean;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TU;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    move-object v0, p0

    :goto_1
    if-eqz v0, :cond_11

    .line 1
    iget-object v1, v0, Lorg/bson/internal/ChildCodecRegistry;->codecClass:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 3
    :cond_e
    iget-object v0, v0, Lorg/bson/internal/ChildCodecRegistry;->parent:Lorg/bson/internal/ChildCodecRegistry;

    goto :goto_1

    .line 4
    :cond_11
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3d

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3d

    .line 2
    :cond_12
    check-cast p1, Lorg/bson/internal/ChildCodecRegistry;

    .line 3
    iget-object v2, p0, Lorg/bson/internal/ChildCodecRegistry;->codecClass:Ljava/lang/Class;

    iget-object v3, p1, Lorg/bson/internal/ChildCodecRegistry;->codecClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    return v1

    .line 4
    :cond_1f
    iget-object v2, p0, Lorg/bson/internal/ChildCodecRegistry;->parent:Lorg/bson/internal/ChildCodecRegistry;

    if-eqz v2, :cond_2c

    iget-object v3, p1, Lorg/bson/internal/ChildCodecRegistry;->parent:Lorg/bson/internal/ChildCodecRegistry;

    invoke-virtual {v2, v3}, Lorg/bson/internal/ChildCodecRegistry;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    goto :goto_30

    :cond_2c
    iget-object v2, p1, Lorg/bson/internal/ChildCodecRegistry;->parent:Lorg/bson/internal/ChildCodecRegistry;

    if-eqz v2, :cond_31

    :goto_30
    return v1

    .line 5
    :cond_31
    iget-object v2, p0, Lorg/bson/internal/ChildCodecRegistry;->registry:Lorg/bson/internal/CycleDetectingCodecRegistry;

    iget-object p1, p1, Lorg/bson/internal/ChildCodecRegistry;->registry:Lorg/bson/internal/CycleDetectingCodecRegistry;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3c

    return v1

    :cond_3c
    return v0

    :cond_3d
    :goto_3d
    return v1
.end method

.method public get(Ljava/lang/Class;)Lorg/bson/codecs/Codec;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TU;>;)",
            "Lorg/bson/codecs/Codec<",
            "TU;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/bson/internal/ChildCodecRegistry;->hasCycles(Ljava/lang/Class;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2
    new-instance v0, Lorg/bson/internal/LazyCodec;

    iget-object v1, p0, Lorg/bson/internal/ChildCodecRegistry;->registry:Lorg/bson/internal/CycleDetectingCodecRegistry;

    invoke-direct {v0, v1, p1}, Lorg/bson/internal/LazyCodec;-><init>(Lorg/bson/codecs/configuration/CodecRegistry;Ljava/lang/Class;)V

    return-object v0

    .line 3
    :cond_12
    iget-object v0, p0, Lorg/bson/internal/ChildCodecRegistry;->registry:Lorg/bson/internal/CycleDetectingCodecRegistry;

    new-instance v1, Lorg/bson/internal/ChildCodecRegistry;

    invoke-direct {v1, p0, p1}, Lorg/bson/internal/ChildCodecRegistry;-><init>(Lorg/bson/internal/ChildCodecRegistry;Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Lorg/bson/internal/CycleDetectingCodecRegistry;->get(Lorg/bson/internal/ChildCodecRegistry;)Lorg/bson/codecs/Codec;

    move-result-object p1

    return-object p1
.end method

.method public getCodecClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bson/internal/ChildCodecRegistry;->codecClass:Ljava/lang/Class;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/bson/internal/ChildCodecRegistry;->parent:Lorg/bson/internal/ChildCodecRegistry;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lorg/bson/internal/ChildCodecRegistry;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lorg/bson/internal/ChildCodecRegistry;->registry:Lorg/bson/internal/CycleDetectingCodecRegistry;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget-object v0, p0, Lorg/bson/internal/ChildCodecRegistry;->codecClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method
