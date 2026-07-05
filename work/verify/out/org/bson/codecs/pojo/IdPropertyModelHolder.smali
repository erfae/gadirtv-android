.class final Lorg/bson/codecs/pojo/IdPropertyModelHolder;
.super Ljava/lang/Object;
.source "IdPropertyModelHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final idGenerator:Lorg/bson/codecs/pojo/IdGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bson/codecs/pojo/IdGenerator<",
            "TI;>;"
        }
    .end annotation
.end field

.field private final propertyModel:Lorg/bson/codecs/pojo/PropertyModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bson/codecs/pojo/PropertyModel<",
            "TI;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/bson/codecs/pojo/PropertyModel;Lorg/bson/codecs/pojo/IdGenerator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bson/codecs/pojo/PropertyModel<",
            "TI;>;",
            "Lorg/bson/codecs/pojo/IdGenerator<",
            "TI;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/bson/codecs/pojo/IdPropertyModelHolder;->propertyModel:Lorg/bson/codecs/pojo/PropertyModel;

    .line 3
    iput-object p2, p0, Lorg/bson/codecs/pojo/IdPropertyModelHolder;->idGenerator:Lorg/bson/codecs/pojo/IdGenerator;

    return-void
.end method

.method public static create(Ljava/lang/Class;Lorg/bson/codecs/pojo/PropertyModel;Lorg/bson/codecs/pojo/IdGenerator;)Lorg/bson/codecs/pojo/IdPropertyModelHolder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "I:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/bson/codecs/pojo/PropertyModel<",
            "TI;>;",
            "Lorg/bson/codecs/pojo/IdGenerator<",
            "TV;>;)",
            "Lorg/bson/codecs/pojo/IdPropertyModelHolder<",
            "TI;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_17

    if-nez p2, :cond_7

    goto :goto_17

    .line 4
    :cond_7
    new-instance p1, Lorg/bson/codecs/configuration/CodecConfigurationException;

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p0, p2, v0

    const-string p0, "Invalid IdGenerator. There is no IdProperty set for: %s"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/bson/codecs/configuration/CodecConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    :goto_17
    if-eqz p2, :cond_4b

    .line 5
    invoke-virtual {p1}, Lorg/bson/codecs/pojo/PropertyModel;->getTypeData()Lorg/bson/codecs/pojo/TypeData;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bson/codecs/pojo/TypeData;->getType()Ljava/lang/Class;

    move-result-object p0

    invoke-interface {p2}, Lorg/bson/codecs/pojo/IdGenerator;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_2c

    goto :goto_4b

    .line 6
    :cond_2c
    new-instance p0, Lorg/bson/codecs/configuration/CodecConfigurationException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Lorg/bson/codecs/pojo/PropertyModel;->getTypeData()Lorg/bson/codecs/pojo/TypeData;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bson/codecs/pojo/TypeData;->getType()Ljava/lang/Class;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-interface {p2}, Lorg/bson/codecs/pojo/IdGenerator;->getType()Ljava/lang/Class;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "Invalid IdGenerator. Mismatching types, the IdProperty type is: %s but the IdGenerator type is: %s"

    .line 8
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bson/codecs/configuration/CodecConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_4b
    :goto_4b
    new-instance p0, Lorg/bson/codecs/pojo/IdPropertyModelHolder;

    invoke-direct {p0, p1, p2}, Lorg/bson/codecs/pojo/IdPropertyModelHolder;-><init>(Lorg/bson/codecs/pojo/PropertyModel;Lorg/bson/codecs/pojo/IdGenerator;)V

    return-object p0
.end method

.method public static create(Lorg/bson/codecs/pojo/ClassModel;Lorg/bson/codecs/pojo/PropertyModel;)Lorg/bson/codecs/pojo/IdPropertyModelHolder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "I:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/bson/codecs/pojo/ClassModel<",
            "TT;>;",
            "Lorg/bson/codecs/pojo/PropertyModel<",
            "TI;>;)",
            "Lorg/bson/codecs/pojo/IdPropertyModelHolder<",
            "TI;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/bson/codecs/pojo/ClassModel;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bson/codecs/pojo/ClassModel;->getIdPropertyModelHolder()Lorg/bson/codecs/pojo/IdPropertyModelHolder;

    move-result-object p0

    .line 2
    iget-object p0, p0, Lorg/bson/codecs/pojo/IdPropertyModelHolder;->idGenerator:Lorg/bson/codecs/pojo/IdGenerator;

    .line 3
    invoke-static {v0, p1, p0}, Lorg/bson/codecs/pojo/IdPropertyModelHolder;->create(Ljava/lang/Class;Lorg/bson/codecs/pojo/PropertyModel;Lorg/bson/codecs/pojo/IdGenerator;)Lorg/bson/codecs/pojo/IdPropertyModelHolder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_34

    .line 1
    const-class v2, Lorg/bson/codecs/pojo/IdPropertyModelHolder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_34

    .line 2
    :cond_10
    check-cast p1, Lorg/bson/codecs/pojo/IdPropertyModelHolder;

    .line 3
    iget-object v2, p0, Lorg/bson/codecs/pojo/IdPropertyModelHolder;->propertyModel:Lorg/bson/codecs/pojo/PropertyModel;

    if-eqz v2, :cond_1f

    iget-object v3, p1, Lorg/bson/codecs/pojo/IdPropertyModelHolder;->propertyModel:Lorg/bson/codecs/pojo/PropertyModel;

    invoke-virtual {v2, v3}, Lorg/bson/codecs/pojo/PropertyModel;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_23

    :cond_1f
    iget-object v2, p1, Lorg/bson/codecs/pojo/IdPropertyModelHolder;->propertyModel:Lorg/bson/codecs/pojo/PropertyModel;

    if-eqz v2, :cond_24

    :goto_23
    return v1

    .line 4
    :cond_24
    iget-object v2, p0, Lorg/bson/codecs/pojo/IdPropertyModelHolder;->idGenerator:Lorg/bson/codecs/pojo/IdGenerator;

    iget-object p1, p1, Lorg/bson/codecs/pojo/IdPropertyModelHolder;->idGenerator:Lorg/bson/codecs/pojo/IdGenerator;

    if-eqz v2, :cond_2f

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_33

    :cond_2f
    if-nez p1, :cond_32

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    return v0

    :cond_34
    :goto_34
    return v1
.end method

.method public final getIdGenerator()Lorg/bson/codecs/pojo/IdGenerator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bson/codecs/pojo/IdGenerator<",
            "TI;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bson/codecs/pojo/IdPropertyModelHolder;->idGenerator:Lorg/bson/codecs/pojo/IdGenerator;

    return-object v0
.end method

.method public final getPropertyModel()Lorg/bson/codecs/pojo/PropertyModel;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bson/codecs/pojo/PropertyModel<",
            "TI;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bson/codecs/pojo/IdPropertyModelHolder;->propertyModel:Lorg/bson/codecs/pojo/PropertyModel;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/bson/codecs/pojo/IdPropertyModelHolder;->propertyModel:Lorg/bson/codecs/pojo/PropertyModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lorg/bson/codecs/pojo/PropertyModel;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v2, p0, Lorg/bson/codecs/pojo/IdPropertyModelHolder;->idGenerator:Lorg/bson/codecs/pojo/IdGenerator;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_15
    add-int/2addr v0, v1

    return v0
.end method
