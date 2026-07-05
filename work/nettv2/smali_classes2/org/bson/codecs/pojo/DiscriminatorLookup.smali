.class final Lorg/bson/codecs/pojo/DiscriminatorLookup;
.super Ljava/lang/Object;
.source "DiscriminatorLookup.java"


# instance fields
.field private final discriminatorClassMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final packages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/bson/codecs/pojo/ClassModel<",
            "*>;>;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/bson/codecs/pojo/DiscriminatorLookup;->discriminatorClassMap:Ljava/util/Map;

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bson/codecs/pojo/ClassModel;

    .line 4
    invoke-virtual {v0}, Lorg/bson/codecs/pojo/ClassModel;->getDiscriminator()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lorg/bson/codecs/pojo/DiscriminatorLookup;->discriminatorClassMap:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/bson/codecs/pojo/ClassModel;->getDiscriminator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bson/codecs/pojo/ClassModel;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_1
    iput-object p2, p0, Lorg/bson/codecs/pojo/DiscriminatorLookup;->packages:Ljava/util/Set;

    return-void
.end method

.method private getClassForName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private searchPackages(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bson/codecs/pojo/DiscriminatorLookup;->packages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "."

    .line 2
    invoke-static {v1, v2, p1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-direct {p0, v1}, Lorg/bson/codecs/pojo/DiscriminatorLookup;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public final addClassModel(Lorg/bson/codecs/pojo/ClassModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bson/codecs/pojo/ClassModel<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/bson/codecs/pojo/ClassModel;->getDiscriminator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/bson/codecs/pojo/DiscriminatorLookup;->discriminatorClassMap:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/bson/codecs/pojo/ClassModel;->getDiscriminator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bson/codecs/pojo/ClassModel;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public lookup(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bson/codecs/pojo/DiscriminatorLookup;->discriminatorClassMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/bson/codecs/pojo/DiscriminatorLookup;->discriminatorClassMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    return-object p1

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lorg/bson/codecs/pojo/DiscriminatorLookup;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lorg/bson/codecs/pojo/DiscriminatorLookup;->searchPackages(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 5
    iget-object v1, p0, Lorg/bson/codecs/pojo/DiscriminatorLookup;->discriminatorClassMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_2
    new-instance v0, Lorg/bson/codecs/configuration/CodecConfigurationException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "A class could not be found for the discriminator: \'%s\'."

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bson/codecs/configuration/CodecConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
