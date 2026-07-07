.class public abstract Lcom/google/ads/interactivemedia/v3/internal/aop;
.super Lcom/google/ads/interactivemedia/v3/internal/aol;
.source "IMASDK"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/ads/interactivemedia/v3/internal/aol<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/ads/interactivemedia/v3/internal/aps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/aps<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aps;

    .line 1
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/ape;->a:Lcom/google/ads/interactivemedia/v3/internal/aop;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/aps;-><init>(Lcom/google/ads/interactivemedia/v3/internal/aop;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/aop;->a:Lcom/google/ads/interactivemedia/v3/internal/aps;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/aol;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/aop;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/google/ads/interactivemedia/v3/internal/aop<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 47
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/aop;->d([Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/aop;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/aop;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;)",
            "Lcom/google/ads/interactivemedia/v3/internal/aop<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    .line 48
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/aop;->d([Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/aop;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/Collection;)Lcom/google/ads/interactivemedia/v3/internal/aop;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Lcom/google/ads/interactivemedia/v3/internal/aop<",
            "TE;>;"
        }
    .end annotation

    .line 15
    instance-of v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aol;

    if-eqz v0, :cond_1

    .line 16
    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/aol;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aol;->e()Lcom/google/ads/interactivemedia/v3/internal/aop;

    move-result-object p0

    .line 17
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aop;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aol;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/aop;->c([Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/aop;

    move-result-object p0

    :cond_0
    return-object p0

    .line 18
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/aop;->d([Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/aop;

    move-result-object p0

    return-object p0
.end method

.method static a([Ljava/lang/Object;I)Lcom/google/ads/interactivemedia/v3/internal/aop;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/google/ads/interactivemedia/v3/internal/aop<",
            "TE;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 6
    sget-object p0, Lcom/google/ads/interactivemedia/v3/internal/ape;->a:Lcom/google/ads/interactivemedia/v3/internal/aop;

    return-object p0

    .line 7
    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ape;

    invoke-direct {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ape;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static b([Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/aop;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/ads/interactivemedia/v3/internal/aop<",
            "TE;>;"
        }
    .end annotation

    .line 19
    array-length v0, p0

    if-nez v0, :cond_0

    .line 20
    sget-object p0, Lcom/google/ads/interactivemedia/v3/internal/ape;->a:Lcom/google/ads/interactivemedia/v3/internal/aop;

    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/aop;->d([Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/aop;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static c([Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/aop;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/ads/interactivemedia/v3/internal/aop<",
            "TE;>;"
        }
    .end annotation

    .line 5
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/aop;->a([Ljava/lang/Object;I)Lcom/google/ads/interactivemedia/v3/internal/aop;

    move-result-object p0

    return-object p0
.end method

.method private static varargs d([Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/aop;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/ads/interactivemedia/v3/internal/aop<",
            "TE;>;"
        }
    .end annotation

    .line 9
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 10
    aget-object v2, p0, v1

    invoke-static {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/apn;->a(Ljava/lang/Object;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/aop;->c([Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/aop;

    move-result-object p0

    return-object p0
.end method

.method public static g()Lcom/google/ads/interactivemedia/v3/internal/aop;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/ads/interactivemedia/v3/internal/aop<",
            "TE;>;"
        }
    .end annotation

    .line 46
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/ape;->a:Lcom/google/ads/interactivemedia/v3/internal/aop;

    return-object v0
.end method

.method public static i()Lcom/google/ads/interactivemedia/v3/internal/aom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/ads/interactivemedia/v3/internal/aom<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aom;

    .line 8
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/aom;-><init>()V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 49
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Use SerializedForm"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method a([Ljava/lang/Object;)I
    .locals 3

    .line 13
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aop;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 14
    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aop;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public a(II)Lcom/google/ads/interactivemedia/v3/internal/aop;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/ads/interactivemedia/v3/internal/aop<",
            "TE;>;"
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aop;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/anh;->a(III)V

    sub-int/2addr p2, p1

    .line 53
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aop;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    .line 55
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/ape;->a:Lcom/google/ads/interactivemedia/v3/internal/aop;

    return-object p1

    :cond_1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aoo;

    .line 54
    invoke-direct {v0, p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/aoo;-><init>(Lcom/google/ads/interactivemedia/v3/internal/aop;II)V

    return-object v0
.end method

.method public final a()Lcom/google/ads/interactivemedia/v3/internal/apr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/ads/interactivemedia/v3/internal/apr<",
            "TE;>;"
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aop;->h()Lcom/google/ads/interactivemedia/v3/internal/aps;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Lcom/google/ads/interactivemedia/v3/internal/aps;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/ads/interactivemedia/v3/internal/aps<",
            "TE;>;"
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aop;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/anh;->b(II)V

    .line 44
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aop;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/aop;->a:Lcom/google/ads/interactivemedia/v3/internal/aps;

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aps;

    .line 45
    invoke-direct {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aps;-><init>(Lcom/google/ads/interactivemedia/v3/internal/aop;I)V

    return-object v0
.end method

.method public final add(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 4
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aop;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final e()Lcom/google/ads/interactivemedia/v3/internal/aop;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/ads/interactivemedia/v3/internal/aop<",
            "TE;>;"
        }
    .end annotation

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_0

    goto :goto_2

    .line 22
    :cond_0
    instance-of v2, p1, Ljava/util/List;

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    const/4 v0, 0x0

    goto :goto_2

    .line 23
    :cond_2
    check-cast p1, Ljava/util/List;

    .line 24
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 25
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    goto :goto_0

    .line 26
    :cond_3
    instance-of v3, p1, Ljava/util/RandomAccess;

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_9

    .line 27
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/anh;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 28
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 29
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 30
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_0

    .line 31
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 33
    invoke-static {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/anh;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    .line 34
    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_9
    :goto_2
    return v0
.end method

.method public final h()Lcom/google/ads/interactivemedia/v3/internal/aps;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/ads/interactivemedia/v3/internal/aps<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/aop;->a(I)Lcom/google/ads/interactivemedia/v3/internal/aps;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 4

    .line 35
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aop;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    .line 36
    invoke-virtual {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/aop;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 4

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 37
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 38
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aop;->h()Lcom/google/ads/interactivemedia/v3/internal/aps;

    move-result-object v0

    return-object v0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 40
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 41
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public final bridge synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aop;->h()Lcom/google/ads/interactivemedia/v3/internal/aps;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aop;->a(I)Lcom/google/ads/interactivemedia/v3/internal/aps;

    move-result-object p1

    return-object p1
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 50
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 51
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/aop;->a(II)Lcom/google/ads/interactivemedia/v3/internal/aop;

    move-result-object p1

    return-object p1
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aon;

    .line 56
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aol;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aon;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
