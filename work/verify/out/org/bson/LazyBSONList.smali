.class public Lorg/bson/LazyBSONList;
.super Lorg/bson/LazyBSONObject;
.source "LazyBSONList.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bson/LazyBSONList$LazyBSONListIterator;
    }
.end annotation


# direct methods
.method public constructor <init>([BILorg/bson/LazyBSONCallback;)V
    .registers 4

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lorg/bson/LazyBSONObject;-><init>([BILorg/bson/LazyBSONCallback;)V

    return-void
.end method

.method public constructor <init>([BLorg/bson/LazyBSONCallback;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/bson/LazyBSONObject;-><init>([BLorg/bson/LazyBSONCallback;)V

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 3

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Object is read only"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Object is read only"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 3

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Object is read only"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Object is read only"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Object is read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lorg/bson/LazyBSONList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-le p1, v0, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 5

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    invoke-virtual {p0}, Lorg/bson/LazyBSONList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 4
    :cond_17
    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bson/LazyBSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 5

    .line 1
    invoke-virtual {p0}, Lorg/bson/LazyBSONList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    return v1

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_19
    const/4 p1, -0x1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    new-instance v0, Lorg/bson/LazyBSONList$LazyBSONListIterator;

    invoke-direct {v0, p0}, Lorg/bson/LazyBSONList$LazyBSONListIterator;-><init>(Lorg/bson/LazyBSONList;)V

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 6

    .line 1
    invoke-virtual {p0}, Lorg/bson/LazyBSONList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 2
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    move v1, v2

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1a
    return v1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported instance of this type"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 3

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported instance of this type"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 3

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Object is read only"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Object is read only"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Object is read only"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Object is read only"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Object is read only"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public size()I
    .registers 2

    invoke-virtual {p0}, Lorg/bson/LazyBSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Operation is not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
