.class Lorg/bson/types/StringRangeSet;
.super Ljava/lang/Object;
.source "StringRangeSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final STRINGS:[Ljava/lang/String;


# instance fields
.field private final size:I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x400

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    sput-object v0, Lorg/bson/types/StringRangeSet;->STRINGS:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    :goto_7
    sget-object v1, Lorg/bson/types/StringRangeSet;->STRINGS:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_15

    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_15
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string v1, "size >= 0"

    .line 2
    invoke-static {v1, v0}, Lorg/bson/assertions/Assertions;->isTrue(Ljava/lang/String;Z)V

    .line 3
    iput p1, p0, Lorg/bson/types/StringRangeSet;->size:I

    return-void
.end method

.method public static synthetic access$000(Lorg/bson/types/StringRangeSet;)I
    .registers 1

    iget p0, p0, Lorg/bson/types/StringRangeSet;->size:I

    return p0
.end method

.method public static synthetic access$100(Lorg/bson/types/StringRangeSet;I)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lorg/bson/types/StringRangeSet;->intToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private intToString(I)Ljava/lang/String;
    .registers 4

    .line 1
    sget-object v0, Lorg/bson/types/StringRangeSet;->STRINGS:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_8

    .line 2
    aget-object p1, v0, p1

    goto :goto_c

    .line 3
    :cond_8
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_c
    return-object p1
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/bson/types/StringRangeSet;->add(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public add(Ljava/lang/String;)Z
    .registers 2

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public clear()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2
    :cond_6
    :try_start_6
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_15

    .line 3
    invoke-virtual {p0}, Lorg/bson/types/StringRangeSet;->size()I

    move-result v0
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_12} :catch_15

    if-ge p1, v0, :cond_15

    const/4 v1, 0x1

    :catch_15
    :cond_15
    return v1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lorg/bson/types/StringRangeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_16
    const/4 p1, 0x1

    return p1
.end method

.method public isEmpty()Z
    .registers 2

    invoke-virtual {p0}, Lorg/bson/types/StringRangeSet;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/bson/types/StringRangeSet$1;

    invoke-direct {v0, p0}, Lorg/bson/types/StringRangeSet$1;-><init>(Lorg/bson/types/StringRangeSet;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lorg/bson/types/StringRangeSet;->size:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lorg/bson/types/StringRangeSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2
    :goto_7
    invoke-virtual {p0}, Lorg/bson/types/StringRangeSet;->size()I

    move-result v2

    if-ge v1, v2, :cond_16

    .line 3
    invoke-direct {p0, v1}, Lorg/bson/types/StringRangeSet;->intToString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_16
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 4
    array-length v0, p1

    invoke-virtual {p0}, Lorg/bson/types/StringRangeSet;->size()I

    move-result v1

    if-lt v0, v1, :cond_9

    move-object v0, p1

    goto :goto_19

    .line 5
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Lorg/bson/types/StringRangeSet;->size:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    :goto_19
    const/4 v1, 0x0

    .line 6
    :goto_1a
    invoke-virtual {p0}, Lorg/bson/types/StringRangeSet;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 7
    invoke-direct {p0, v1}, Lorg/bson/types/StringRangeSet;->intToString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 8
    :cond_29
    array-length v1, p1

    invoke-virtual {p0}, Lorg/bson/types/StringRangeSet;->size()I

    move-result v2

    if-le v1, v2, :cond_35

    .line 9
    iget v1, p0, Lorg/bson/types/StringRangeSet;->size:I

    const/4 v2, 0x0

    aput-object v2, p1, v1

    :cond_35
    return-object v0
.end method
