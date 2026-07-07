.class public final Lcom/google/ads/interactivemedia/v3/internal/afc;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/ads/interactivemedia/v3/internal/adt<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/aik;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/ads/interactivemedia/v3/internal/adt<",
            "*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/aik;->a()Lcom/google/ads/interactivemedia/v3/internal/aik;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/afc;->b:Lcom/google/ads/interactivemedia/v3/internal/aik;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/afc;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/aim;)Lcom/google/ads/interactivemedia/v3/internal/afq;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/ads/interactivemedia/v3/internal/aim<",
            "TT;>;)",
            "Lcom/google/ads/interactivemedia/v3/internal/afq<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aim;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aim;->a()Ljava/lang/Class;

    move-result-object p1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/afc;->a:Ljava/util/Map;

    .line 4
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/adt;

    if-eqz v1, :cond_0

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/aet;

    .line 5
    invoke-direct {p1, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/aet;-><init>(Lcom/google/ads/interactivemedia/v3/internal/adt;Ljava/lang/reflect/Type;)V

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/afc;->a:Ljava/util/Map;

    .line 6
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/adt;

    if-nez v1, :cond_e

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-array v3, v2, [Ljava/lang/Class;

    .line 7
    invoke-virtual {p1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 8
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/afc;->b:Lcom/google/ads/interactivemedia/v3/internal/aik;

    .line 9
    invoke-virtual {v4, v3}, Lcom/google/ads/interactivemedia/v3/internal/aik;->a(Ljava/lang/reflect/AccessibleObject;)V

    :cond_1
    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/aev;

    .line 10
    invoke-direct {v4, v3}, Lcom/google/ads/interactivemedia/v3/internal/aev;-><init>(Ljava/lang/reflect/Constructor;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v4, v1

    :goto_0
    if-nez v4, :cond_d

    const-class v3, Ljava/util/Collection;

    .line 11
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-class v1, Ljava/util/SortedSet;

    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/aew;

    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/internal/aew;-><init>()V

    goto/16 :goto_1

    .line 23
    :cond_2
    const-class v1, Ljava/util/EnumSet;

    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/aex;

    .line 14
    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/aex;-><init>(Ljava/lang/reflect/Type;)V

    goto/16 :goto_1

    :cond_3
    const-class v1, Ljava/util/Set;

    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/aey;

    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/internal/aey;-><init>()V

    goto/16 :goto_1

    :cond_4
    const-class v1, Ljava/util/Queue;

    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/aez;

    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/internal/aez;-><init>()V

    goto :goto_1

    :cond_5
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/afa;

    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/internal/afa;-><init>()V

    goto :goto_1

    :cond_6
    const-class v3, Ljava/util/Map;

    .line 17
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-class v1, Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/afb;

    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/internal/afb;-><init>()V

    goto :goto_1

    :cond_7
    const-class v1, Ljava/util/concurrent/ConcurrentMap;

    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/aeo;

    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/internal/aeo;-><init>()V

    goto :goto_1

    :cond_8
    const-class v1, Ljava/util/SortedMap;

    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/aep;

    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/internal/aep;-><init>()V

    goto :goto_1

    .line 21
    :cond_9
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_a

    const-class v1, Ljava/lang/String;

    move-object v3, v0

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    .line 22
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    aget-object v2, v3, v2

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/aim;->a(Ljava/lang/reflect/Type;)Lcom/google/ads/interactivemedia/v3/internal/aim;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/aim;->a()Ljava/lang/Class;

    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_a

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/aeq;

    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/internal/aeq;-><init>()V

    goto :goto_1

    :cond_a
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/aer;

    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/internal/aer;-><init>()V

    :cond_b
    :goto_1
    if-eqz v1, :cond_c

    return-object v1

    .line 12
    :cond_c
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/aes;

    .line 23
    invoke-direct {v1, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/aes;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-object v1

    :cond_d
    return-object v4

    .line 21
    :cond_e
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/aeu;

    .line 24
    invoke-direct {p1, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/aeu;-><init>(Lcom/google/ads/interactivemedia/v3/internal/adt;Ljava/lang/reflect/Type;)V

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/afc;->a:Ljava/util/Map;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
