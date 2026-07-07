.class public final Lcom/google/ads/interactivemedia/v3/internal/aqf;
.super Ljava/lang/Object;
.source "IMASDK"


# static fields
.field private static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Set<",
            "Lcom/google/ads/interactivemedia/v3/internal/aql<",
            "Lcom/google/ads/interactivemedia/v3/internal/aqj;",
            "Lcom/google/ads/interactivemedia/v3/internal/aqj;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private b:Z

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    .line 1
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/aqf;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aqf;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aqf;->d:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aqf;->c:Ljava/util/List;

    const-class v1, Ljava/lang/String;

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/aql;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/ads/interactivemedia/v3/internal/aql<",
            "Lcom/google/ads/interactivemedia/v3/internal/aqj;",
            "Lcom/google/ads/interactivemedia/v3/internal/aqj;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aqj;

    .line 47
    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/aqj;-><init>(Ljava/lang/Object;)V

    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/aqj;

    .line 48
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aqj;-><init>(Ljava/lang/Object;)V

    .line 49
    invoke-static {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/aql;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/aql;

    move-result-object p0

    return-object p0
.end method

.method static a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/ads/interactivemedia/v3/internal/aql<",
            "Lcom/google/ads/interactivemedia/v3/internal/aqj;",
            "Lcom/google/ads/interactivemedia/v3/internal/aqj;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/aqf;->a:Ljava/lang/ThreadLocal;

    .line 50
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 51
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/aqf;->a()Ljava/util/Set;

    move-result-object v0

    .line 52
    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/aqf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/aql;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/aql;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/aql;->a()Ljava/lang/Object;

    move-result-object v3

    .line 53
    invoke-static {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/aql;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/aql;

    move-result-object v2

    if-eqz v0, :cond_1

    .line 54
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 55
    :cond_1
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/aqf;->a()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashSet;

    .line 56
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/aqf;->a:Ljava/lang/ThreadLocal;

    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 58
    :cond_2
    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/aqf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/aql;

    move-result-object v1

    .line 59
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {p3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p3

    const/4 v0, 0x1

    .line 61
    invoke-static {p3, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    const/4 v0, 0x0

    .line 62
    :goto_1
    array-length v1, p3

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aqf;->b:Z

    if-eqz v1, :cond_4

    .line 63
    aget-object v1, p3, v0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aqf;->d:[Ljava/lang/String;

    .line 64
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/anh;->a([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 65
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 66
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 67
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-nez v2, :cond_3

    const-class v2, Lcom/google/ads/interactivemedia/v3/internal/aqg;

    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_3

    .line 69
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/aqf;->b(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 72
    :catch_0
    :try_start_2
    new-instance p3, Ljava/lang/InternalError;

    const-string v0, "Unexpected IllegalAccessException"

    .line 71
    invoke-direct {p3, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 70
    :cond_4
    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/aqf;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p3

    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/aqf;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    throw p3
.end method

.method public static varargs a(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_4

    :cond_0
    if-nez p1, :cond_1

    goto/16 :goto_4

    :cond_1
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/aqf;

    .line 73
    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/internal/aqf;-><init>()V

    iput-object p2, v1, Lcom/google/ads/interactivemedia/v3/internal/aqf;->d:[Ljava/lang/String;

    iget-boolean p2, v1, Lcom/google/ads/interactivemedia/v3/internal/aqf;->b:Z

    if-nez p2, :cond_2

    goto :goto_3

    :cond_2
    if-eq p0, p1, :cond_a

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 76
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 77
    invoke-virtual {v2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    .line 78
    :cond_3
    invoke-virtual {v2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 79
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    move-object v3, p2

    goto :goto_1

    :cond_5
    :goto_0
    move-object v3, v2

    .line 80
    :goto_1
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 81
    invoke-virtual {v1, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aqf;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    iget-object v4, v1, Lcom/google/ads/interactivemedia/v3/internal/aqf;->c:Ljava/util/List;

    if-eqz v4, :cond_8

    .line 82
    invoke-interface {v4, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    iget-object p2, v1, Lcom/google/ads/interactivemedia/v3/internal/aqf;->c:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 87
    :cond_7
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    iput-boolean p0, v1, Lcom/google/ads/interactivemedia/v3/internal/aqf;->b:Z

    goto :goto_3

    .line 83
    :cond_8
    invoke-direct {v1, p0, p1, v3}, Lcom/google/ads/interactivemedia/v3/internal/aqf;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 84
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p2

    if-eqz p2, :cond_a

    if-eqz v3, :cond_a

    .line 85
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    .line 86
    invoke-direct {v1, p0, p1, v3}, Lcom/google/ads/interactivemedia/v3/internal/aqf;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 79
    :catch_0
    :cond_9
    iput-boolean v0, v1, Lcom/google/ads/interactivemedia/v3/internal/aqf;->b:Z

    .line 73
    :cond_a
    :goto_3
    iget-boolean v0, v1, Lcom/google/ads/interactivemedia/v3/internal/aqf;->b:Z

    :goto_4
    return v0
.end method

.method private static c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 88
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/aqf;->a()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    invoke-static {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aqf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/aql;

    move-result-object p0

    .line 90
    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 91
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/ads/interactivemedia/v3/internal/aqf;->a:Ljava/lang/ThreadLocal;

    .line 92
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aqf;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aqf;->b:Z

    return-void
.end method

.method public final a(JJ)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aqf;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    cmp-long v0, p1, p3

    if-nez v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aqf;->b:Z

    return-void
.end method

.method protected final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aqf;->b:Z

    return-void
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aqf;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ne p1, p2, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_1c

    if-nez p2, :cond_2

    goto/16 :goto_e

    .line 5
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aqf;->b()V

    return-void

    .line 9
    :cond_3
    instance-of v0, p1, [J

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 10
    check-cast p1, [J

    check-cast p1, [J

    check-cast p2, [J

    check-cast p2, [J

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aqf;->b:Z

    if-nez v0, :cond_4

    goto/16 :goto_d

    :cond_4
    if-eq p1, p2, :cond_1a

    array-length v0, p1

    array-length v2, p2

    if-ne v0, v2, :cond_5

    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_1a

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aqf;->b:Z

    if-eqz v0, :cond_1a

    .line 11
    aget-wide v2, p1, v1

    aget-wide v4, p2, v1

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/aqf;->a(JJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_5
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aqf;->b()V

    return-void

    .line 13
    :cond_6
    instance-of v0, p1, [I

    if-eqz v0, :cond_8

    .line 14
    check-cast p1, [I

    check-cast p1, [I

    check-cast p2, [I

    check-cast p2, [I

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aqf;->b:Z

    if-eqz v0, :cond_1a

    if-eq p1, p2, :cond_1a

    array-length v0, p1

    array-length v2, p2

    if-ne v0, v2, :cond_7

    :goto_1
    array-length v0, p1

    if-ge v1, v0, :cond_1a

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aqf;->b:Z

    if-eqz v0, :cond_1a

    .line 15
    aget v0, p1, v1

    aget v2, p2, v1

    invoke-virtual {p0, v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/aqf;->a(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 16
    :cond_7
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aqf;->b()V

    return-void

    .line 17
    :cond_8
    instance-of v0, p1, [S

    const/4 v2, 0x1

    if-eqz v0, :cond_b

    .line 18
    check-cast p1, [S

    check-cast p1, [S

    check-cast p2, [S

    check-cast p2, [S

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aqf;->b:Z

    if-eqz v0, :cond_1a

    if-eq p1, p2, :cond_1a

    array-length v0, p1

    array-length v3, p2

    if-ne v0, v3, :cond_a

    const/4 v0, 0x0

    :goto_2
    array-length v3, p1

    if-ge v0, v3, :cond_1a

    iget-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aqf;->b:Z

    if-eqz v3, :cond_1a

    .line 19
    aget-short v3, p1, v0

    aget-short v4, p2, v0

    if-ne v3, v4, :cond_9

    const/4 v3, 0x1

    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    :goto_3
    iput-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aqf;->b:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 20
    :cond_a
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aqf;->b()V

    return-void

    .line 21
    :cond_b
    instance-of v0, p1, [C

    if-eqz v0, :cond_e

    .line 22
    check-cast p1, [C

    check-cast p1, [C

    check-cast p2, [C

    check-cast p2, [C

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aqf;->b:Z

    if-eqz v0, :cond_1a

    if-eq p1, p2, :cond_1a

    array-length v0, p1

    array-length v3, p2

    if-ne v0, v3, :cond_d

    const/4 v0, 0x0

    :goto_4
    array-length v3, p1

    if-ge v0, v3, :cond_1a

    iget-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aqf;->b:Z

    if-eqz v3, :cond_1a

    .line 23
    aget-char v3, p1, v0

    aget-char v4, p2, v0

    if-ne v3, v4, :cond_c

    const/4 v3, 0x1

    goto :goto_5

    :cond_c
    const/4 v3, 0x0

    :goto_5
    iput-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aqf;->b:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 24
    :cond_d
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aqf;->b()V

    return-void

    .line 25
    :cond_e
    instance-of v0, p1, [B

    if-eqz v0, :cond_11

    .line 26
    check-cast p1, [B

    check-cast p1, [B

    check-cast p2, [B

    check-cast p2, [B

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aqf;->b:Z

    if-eqz v0, :cond_1a

    if-eq p1, p2, :cond_1a

    array-length v0, p1

    array-length v3, p2

    if-ne v0, v3, :cond_10

    const/4 v0, 0x0

    :goto_6
    array-length v3, p1

    if-ge v0, v3, :cond_1a

    iget-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aqf;->b:Z

    if-eqz v3, :cond_1a

    .line 27
    aget-byte v3, p1, v0

    aget-byte v4, p2, v0

    if-ne v3, v4, :cond_f

    const/4 v3, 0x1

    goto :goto_7

    :cond_f
    const/4 v3, 0x0

    :goto_7
    iput-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aqf;->b:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 28
    :cond_10
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aqf;->b()V

    return-void

    .line 29
    :cond_11
    instance-of v0, p1, [D

    if-eqz v0, :cond_13

    .line 30
    check-cast p1, [D

    check-cast p1, [D

    check-cast p2, [D

    check-cast p2, [D

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aqf;->b:Z

    if-eqz v0, :cond_1a

    if-eq p1, p2, :cond_1a

    array-length v0, p1

    array-length v2, p2

    if-ne v0, v2, :cond_12

    :goto_8
    array-length v0, p1

    if-ge v1, v0, :cond_1a

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aqf;->b:Z

    if-eqz v0, :cond_1a

    .line 31
    aget-wide v2, p1, v1

    aget-wide v4, p2, v1

    .line 32
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/aqf;->a(JJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 33
    :cond_12
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aqf;->b()V

    return-void

    .line 34
    :cond_13
    instance-of v0, p1, [F

    if-eqz v0, :cond_15

    .line 35
    check-cast p1, [F

    check-cast p1, [F

    check-cast p2, [F

    check-cast p2, [F

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aqf;->b:Z

    if-eqz v0, :cond_1a

    if-eq p1, p2, :cond_1a

    array-length v0, p1

    array-length v2, p2

    if-ne v0, v2, :cond_14

    :goto_9
    array-length v0, p1

    if-ge v1, v0, :cond_1a

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aqf;->b:Z

    if-eqz v0, :cond_1a

    .line 36
    aget v0, p1, v1

    aget v2, p2, v1

    .line 37
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/aqf;->a(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 38
    :cond_14
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aqf;->b()V

    return-void

    .line 39
    :cond_15
    instance-of v0, p1, [Z

    if-eqz v0, :cond_18

    .line 40
    check-cast p1, [Z

    check-cast p1, [Z

    check-cast p2, [Z

    check-cast p2, [Z

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aqf;->b:Z

    if-eqz v0, :cond_1a

    if-eq p1, p2, :cond_1a

    array-length v0, p1

    array-length v3, p2

    if-ne v0, v3, :cond_17

    const/4 v0, 0x0

    :goto_a
    array-length v3, p1

    if-ge v0, v3, :cond_1a

    iget-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aqf;->b:Z

    if-eqz v3, :cond_1a

    .line 41
    aget-boolean v3, p1, v0

    aget-boolean v4, p2, v0

    if-ne v3, v4, :cond_16

    const/4 v3, 0x1

    goto :goto_b

    :cond_16
    const/4 v3, 0x0

    :goto_b
    iput-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aqf;->b:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 42
    :cond_17
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aqf;->b()V

    return-void

    .line 43
    :cond_18
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aqf;->b:Z

    if-eqz v0, :cond_1a

    if-eq p1, p2, :cond_1a

    array-length v0, p1

    array-length v2, p2

    if-ne v0, v2, :cond_19

    :goto_c
    array-length v0, p1

    if-ge v1, v0, :cond_1a

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aqf;->b:Z

    if-eqz v0, :cond_1a

    .line 44
    aget-object v0, p1, v1

    aget-object v2, p2, v1

    invoke-virtual {p0, v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/aqf;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 45
    :cond_19
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aqf;->b()V

    :cond_1a
    :goto_d
    return-void

    .line 46
    :cond_1b
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aqf;->b:Z

    return-void

    .line 4
    :cond_1c
    :goto_e
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aqf;->b()V

    return-void
.end method
