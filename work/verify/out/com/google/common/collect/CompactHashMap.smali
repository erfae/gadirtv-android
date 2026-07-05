.class Lcom/google/common/collect/CompactHashMap;
.super Ljava/util/AbstractMap;
.source "CompactHashMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/CompactHashMap$ValuesView;,
        Lcom/google/common/collect/CompactHashMap$MapEntry;,
        Lcom/google/common/collect/CompactHashMap$EntrySetView;,
        Lcom/google/common/collect/CompactHashMap$KeySetView;,
        Lcom/google/common/collect/CompactHashMap$Itr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final MAX_HASH_BUCKET_LENGTH:I = 0x9

.field private static final NOT_FOUND:Ljava/lang/Object;


# instance fields
.field public transient entries:[I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private transient entrySetView:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private transient keySetView:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public transient keys:[Ljava/lang/Object;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private transient metadata:I

.field private transient size:I

.field private transient table:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public transient values:[Ljava/lang/Object;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private transient valuesView:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/common/collect/CompactHashMap;->NOT_FOUND:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactHashMap;->init(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CompactHashMap;->init(I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/google/common/collect/CompactHashMap;)I
    .registers 1

    iget p0, p0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    return p0
.end method

.method public static synthetic access$100(Lcom/google/common/collect/CompactHashMap;I)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap;->key(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/google/common/collect/CompactHashMap;)[Ljava/lang/Object;
    .registers 1

    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireKeys()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/google/common/collect/CompactHashMap;)[Ljava/lang/Object;
    .registers 1

    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireValues()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1210(Lcom/google/common/collect/CompactHashMap;)I
    .registers 3

    iget v0, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    return v0
.end method

.method public static synthetic access$1300(Lcom/google/common/collect/CompactHashMap;ILjava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/CompactHashMap;->setValue(ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/google/common/collect/CompactHashMap;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap;->removeHelper(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/google/common/collect/CompactHashMap;->NOT_FOUND:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic access$500(Lcom/google/common/collect/CompactHashMap;Ljava/lang/Object;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$600(Lcom/google/common/collect/CompactHashMap;I)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap;->value(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$700(Lcom/google/common/collect/CompactHashMap;)I
    .registers 1

    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->hashTableMask()I

    move-result p0

    return p0
.end method

.method public static synthetic access$800(Lcom/google/common/collect/CompactHashMap;)Ljava/lang/Object;
    .registers 1

    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireTable()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$900(Lcom/google/common/collect/CompactHashMap;)[I
    .registers 1

    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireEntries()[I

    move-result-object p0

    return-object p0
.end method

.method public static create()Lcom/google/common/collect/CompactHashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/CompactHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/CompactHashMap;

    invoke-direct {v0}, Lcom/google/common/collect/CompactHashMap;-><init>()V

    return-object v0
.end method

.method public static createWithExpectedSize(I)Lcom/google/common/collect/CompactHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/CompactHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/CompactHashMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashMap;-><init>(I)V

    return-object v0
.end method

.method private entry(I)I
    .registers 3

    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireEntries()[I

    move-result-object v0

    aget p1, v0, p1

    return p1
.end method

.method private hashTableMask()I
    .registers 3

    iget v0, p0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    and-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    return v0
.end method

.method private indexOf(Ljava/lang/Object;)I
    .registers 9
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    return v1

    .line 2
    :cond_8
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    .line 3
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->hashTableMask()I

    move-result v2

    .line 4
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireTable()Ljava/lang/Object;

    move-result-object v3

    and-int v4, v0, v2

    invoke-static {v3, v4}, Lcom/google/common/collect/CompactHashing;->tableGet(Ljava/lang/Object;I)I

    move-result v3

    if-nez v3, :cond_1d

    return v1

    :cond_1d
    not-int v4, v2

    and-int/2addr v0, v4

    :cond_1f
    add-int/lit8 v3, v3, -0x1

    .line 5
    invoke-direct {p0, v3}, Lcom/google/common/collect/CompactHashMap;->entry(I)I

    move-result v5

    and-int v6, v5, v4

    if-ne v6, v0, :cond_34

    .line 6
    invoke-direct {p0, v3}, Lcom/google/common/collect/CompactHashMap;->key(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_34

    return v3

    :cond_34
    and-int v3, v5, v2

    if-nez v3, :cond_1f

    return v1
.end method

.method private key(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireKeys()[Ljava/lang/Object;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    if-ltz v0, :cond_1e

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactHashMap;->init(I)V

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_1d

    .line 4
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 6
    invoke-virtual {p0, v2, v3}, Lcom/google/common/collect/CompactHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1d
    return-void

    .line 7
    :cond_1e
    new-instance p1, Ljava/io/InvalidObjectException;

    const/16 v1, 0x19

    const-string v2, "Invalid size: "

    .line 8
    invoke-static {v1, v2, v0}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private removeHelper(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2
    sget-object p1, Lcom/google/common/collect/CompactHashMap;->NOT_FOUND:Ljava/lang/Object;

    return-object p1

    .line 3
    :cond_9
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->hashTableMask()I

    move-result v7

    const/4 v1, 0x0

    .line 4
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireTable()Ljava/lang/Object;

    move-result-object v3

    .line 5
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireEntries()[I

    move-result-object v4

    .line 6
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireKeys()[Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p1

    move v2, v7

    .line 7
    invoke-static/range {v0 .. v6}, Lcom/google/common/collect/CompactHashing;->remove(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_27

    .line 8
    sget-object p1, Lcom/google/common/collect/CompactHashMap;->NOT_FOUND:Ljava/lang/Object;

    return-object p1

    .line 9
    :cond_27
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap;->value(I)Ljava/lang/Object;

    move-result-object v0

    .line 10
    invoke-virtual {p0, p1, v7}, Lcom/google/common/collect/CompactHashMap;->moveLastEntry(II)V

    .line 11
    iget p1, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    .line 12
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->incrementModCount()V

    return-object v0
.end method

.method private requireEntries()[I
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entries:[I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method private requireKeys()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method private requireTable()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private requireValues()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method private resizeMeMaybe(I)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireEntries()[I

    move-result-object v0

    array-length v0, v0

    if-le p1, v0, :cond_1c

    const p1, 0x3fffffff    # 1.9999999f

    ushr-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    .line 2
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v0

    or-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-eq p1, v0, :cond_1c

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CompactHashMap;->resizeEntries(I)V

    :cond_1c
    return-void
.end method

.method private resizeTable(IIII)I
    .registers 13
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/common/collect/CompactHashing;->createTable(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 p2, p2, -0x1

    if-eqz p4, :cond_e

    and-int/2addr p3, p2

    add-int/lit8 p4, p4, 0x1

    .line 2
    invoke-static {v0, p3, p4}, Lcom/google/common/collect/CompactHashing;->tableSet(Ljava/lang/Object;II)V

    .line 3
    :cond_e
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireTable()Ljava/lang/Object;

    move-result-object p3

    .line 4
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireEntries()[I

    move-result-object p4

    const/4 v1, 0x0

    :goto_17
    if-gt v1, p1, :cond_3c

    .line 5
    invoke-static {p3, v1}, Lcom/google/common/collect/CompactHashing;->tableGet(Ljava/lang/Object;I)I

    move-result v2

    :goto_1d
    if-eqz v2, :cond_39

    add-int/lit8 v3, v2, -0x1

    .line 6
    aget v4, p4, v3

    not-int v5, p1

    and-int/2addr v5, v4

    or-int/2addr v5, v1

    and-int v6, v5, p2

    .line 7
    invoke-static {v0, v6}, Lcom/google/common/collect/CompactHashing;->tableGet(Ljava/lang/Object;I)I

    move-result v7

    .line 8
    invoke-static {v0, v6, v2}, Lcom/google/common/collect/CompactHashing;->tableSet(Ljava/lang/Object;II)V

    not-int v2, p2

    and-int/2addr v2, v5

    and-int v5, v7, p2

    or-int/2addr v2, v5

    .line 9
    aput v2, p4, v3

    and-int v2, v4, p1

    goto :goto_1d

    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 10
    :cond_3c
    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    .line 11
    invoke-direct {p0, p2}, Lcom/google/common/collect/CompactHashMap;->setHashTableMask(I)V

    return p2
.end method

.method private setEntry(II)V
    .registers 4

    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireEntries()[I

    move-result-object v0

    aput p2, v0, p1

    return-void
.end method

.method private setHashTableMask(I)V
    .registers 3

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x20

    .line 2
    iget v0, p0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    and-int/lit8 v0, v0, -0x20

    and-int/lit8 p1, p1, 0x1f

    or-int/2addr p1, v0

    .line 3
    iput p1, p0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    return-void
.end method

.method private setKey(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireKeys()[Ljava/lang/Object;

    move-result-object v0

    aput-object p2, v0, p1

    return-void
.end method

.method private setValue(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireValues()[Ljava/lang/Object;

    move-result-object v0

    aput-object p2, v0, p1

    return-void
.end method

.method private value(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireValues()[Ljava/lang/Object;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->entrySetIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_e

    :cond_29
    return-void
.end method


# virtual methods
.method public accessEntry(I)V
    .registers 2

    return-void
.end method

.method public adjustAfterRemove(II)I
    .registers 3

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public allocArrays()I
    .registers 4
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v0

    const-string v1, "Arrays already allocated"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 2
    iget v0, p0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    .line 3
    invoke-static {v0}, Lcom/google/common/collect/CompactHashing;->tableSize(I)I

    move-result v1

    .line 4
    invoke-static {v1}, Lcom/google/common/collect/CompactHashing;->createTable(I)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    .line 5
    invoke-direct {p0, v1}, Lcom/google/common/collect/CompactHashMap;->setHashTableMask(I)V

    .line 6
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/common/collect/CompactHashMap;->entries:[I

    .line 7
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    .line 8
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    return v0
.end method

.method public clear()V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2
    :cond_7
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->incrementModCount()V

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_28

    .line 4
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->size()I

    move-result v3

    const/4 v4, 0x3

    const v5, 0x3fffffff    # 1.9999999f

    invoke-static {v3, v4, v5}, Lcom/google/common/primitives/Ints;->constrainToRange(III)I

    move-result v3

    iput v3, p0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 6
    iput-object v1, p0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    .line 7
    iput v2, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    goto :goto_4c

    .line 8
    :cond_28
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireKeys()[Ljava/lang/Object;

    move-result-object v0

    iget v3, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 9
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireValues()[Ljava/lang/Object;

    move-result-object v0

    iget v3, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 10
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireTable()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/CompactHashing;->tableClear(Ljava/lang/Object;)V

    .line 11
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireEntries()[I

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 12
    iput v2, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    :goto_4c
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_15

    :cond_b
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_b
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_d
    iget v2, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    if-ge v1, v2, :cond_20

    .line 4
    invoke-direct {p0, v1}, Lcom/google/common/collect/CompactHashMap;->value(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 p1, 0x1

    return p1

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_20
    return v0
.end method

.method public convertToHashFloodingResistantImplementation()Ljava/util/Map;
    .registers 5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->hashTableMask()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactHashMap;->createHashFloodingResistantDelegate(I)Ljava/util/Map;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->firstEntryIndex()I

    move-result v1

    :goto_e
    if-ltz v1, :cond_20

    .line 3
    invoke-direct {p0, v1}, Lcom/google/common/collect/CompactHashMap;->key(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/google/common/collect/CompactHashMap;->value(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/common/collect/CompactHashMap;->getSuccessor(I)I

    move-result v1

    goto :goto_e

    .line 5
    :cond_20
    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/google/common/collect/CompactHashMap;->entries:[I

    .line 7
    iput-object v1, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    .line 8
    iput-object v1, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->incrementModCount()V

    return-object v0
.end method

.method public createHashFloodingResistantDelegate(I)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, p1, v1}, Ljava/util/LinkedHashMap;-><init>(IF)V

    return-object v0
.end method

.method public final delegateOrNull()Ljava/util/Map;
    .registers 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_9

    .line 2
    check-cast v0, Ljava/util/Map;

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entrySetView:Ljava/util/Set;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lcom/google/common/collect/CompactHashMap$EntrySetView;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashMap$EntrySetView;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    .line 3
    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entrySetView:Ljava/util/Set;

    :cond_b
    return-object v0
.end method

.method public final entrySetIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 3
    :cond_f
    new-instance v0, Lcom/google/common/collect/CompactHashMap$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashMap$2;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    return-object v0
.end method

.method public firstEntryIndex()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_b
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_14

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_14
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CompactHashMap;->accessEntry(I)V

    .line 5
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap;->value(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getSuccessor(I)I
    .registers 3

    add-int/lit8 p1, p1, 0x1

    iget v0, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    if-ge p1, v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 p1, -0x1

    :goto_8
    return p1
.end method

.method public final incrementModCount()V
    .registers 2

    iget v0, p0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    return-void
.end method

.method public init(I)V
    .registers 5

    const/4 v0, 0x1

    if-ltz p1, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    const-string v2, "Expected size must be >= 0"

    .line 1
    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const v1, 0x3fffffff    # 1.9999999f

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/common/primitives/Ints;->constrainToRange(III)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    return-void
.end method

.method public insertEntry(ILjava/lang/Object;Ljava/lang/Object;II)V
    .registers 7
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;II)V"
        }
    .end annotation

    not-int v0, p5

    and-int/2addr p4, v0

    const/4 v0, 0x0

    and-int/2addr p5, v0

    or-int/2addr p4, p5

    .line 1
    invoke-direct {p0, p1, p4}, Lcom/google/common/collect/CompactHashMap;->setEntry(II)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/CompactHashMap;->setKey(ILjava/lang/Object;)V

    .line 3
    invoke-direct {p0, p1, p3}, Lcom/google/common/collect/CompactHashMap;->setValue(ILjava/lang/Object;)V

    return-void
.end method

.method public isEmpty()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->keySetView:Ljava/util/Set;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lcom/google/common/collect/CompactHashMap$KeySetView;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashMap$KeySetView;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    .line 3
    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->keySetView:Ljava/util/Set;

    :cond_b
    return-object v0
.end method

.method public moveLastEntry(II)V
    .registers 12

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireTable()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireEntries()[I

    move-result-object v1

    .line 3
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireKeys()[Ljava/lang/Object;

    move-result-object v2

    .line 4
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireValues()[Ljava/lang/Object;

    move-result-object v3

    .line 5
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-ge p1, v4, :cond_52

    .line 6
    aget-object v7, v2, v4

    .line 7
    aput-object v7, v2, p1

    .line 8
    aget-object v8, v3, v4

    aput-object v8, v3, p1

    .line 9
    aput-object v6, v2, v4

    .line 10
    aput-object v6, v3, v4

    .line 11
    aget v2, v1, v4

    aput v2, v1, p1

    .line 12
    aput v5, v1, v4

    .line 13
    invoke-static {v7}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v2

    and-int/2addr v2, p2

    .line 14
    invoke-static {v0, v2}, Lcom/google/common/collect/CompactHashing;->tableGet(Ljava/lang/Object;I)I

    move-result v3

    add-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_3f

    add-int/lit8 p1, p1, 0x1

    .line 15
    invoke-static {v0, v2, p1}, Lcom/google/common/collect/CompactHashing;->tableSet(Ljava/lang/Object;II)V

    goto :goto_58

    :cond_3f
    :goto_3f
    add-int/lit8 v3, v3, -0x1

    .line 16
    aget v0, v1, v3

    and-int v2, v0, p2

    if-ne v2, v4, :cond_50

    add-int/lit8 p1, p1, 0x1

    not-int v2, p2

    and-int/2addr v0, v2

    and-int/2addr p1, p2

    or-int/2addr p1, v0

    .line 17
    aput p1, v1, v3

    goto :goto_58

    :cond_50
    move v3, v2

    goto :goto_3f

    .line 18
    :cond_52
    aput-object v6, v2, p1

    .line 19
    aput-object v6, v3, p1

    .line 20
    aput v5, v1, p1

    :goto_58
    return-void
.end method

.method public final needsAllocArrays()Z
    .registers 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 20
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->allocArrays()I

    .line 3
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 4
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1a
    invoke-direct/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->requireEntries()[I

    move-result-object v0

    .line 6
    invoke-direct/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->requireKeys()[Ljava/lang/Object;

    move-result-object v1

    .line 7
    invoke-direct/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->requireValues()[Ljava/lang/Object;

    move-result-object v4

    .line 8
    iget v5, v6, Lcom/google/common/collect/CompactHashMap;->size:I

    add-int/lit8 v7, v5, 0x1

    .line 9
    invoke-static/range {p1 .. p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v8

    .line 10
    invoke-direct/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->hashTableMask()I

    move-result v9

    and-int v10, v8, v9

    .line 11
    invoke-direct/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->requireTable()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11, v10}, Lcom/google/common/collect/CompactHashing;->tableGet(Ljava/lang/Object;I)I

    move-result v11

    if-nez v11, :cond_52

    if-le v7, v9, :cond_4a

    .line 12
    invoke-static {v9}, Lcom/google/common/collect/CompactHashing;->newCapacity(I)I

    move-result v0

    invoke-direct {v6, v9, v0, v8, v5}, Lcom/google/common/collect/CompactHashMap;->resizeTable(IIII)I

    move-result v0

    :goto_48
    move v9, v0

    goto :goto_93

    .line 13
    :cond_4a
    invoke-direct/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->requireTable()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v10, v7}, Lcom/google/common/collect/CompactHashing;->tableSet(Ljava/lang/Object;II)V

    goto :goto_93

    :cond_52
    not-int v10, v9

    and-int v12, v8, v10

    const/4 v13, 0x0

    :goto_56
    add-int/lit8 v11, v11, -0x1

    .line 14
    aget v14, v0, v11

    and-int v15, v14, v10

    move/from16 v16, v10

    if-ne v15, v12, :cond_70

    .line 15
    aget-object v10, v1, v11

    .line 16
    invoke-static {v2, v10}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_70

    .line 17
    aget-object v0, v4, v11

    .line 18
    aput-object v3, v4, v11

    .line 19
    invoke-virtual {v6, v11}, Lcom/google/common/collect/CompactHashMap;->accessEntry(I)V

    return-object v0

    :cond_70
    and-int v10, v14, v9

    add-int/lit8 v13, v13, 0x1

    if-nez v10, :cond_a9

    const/16 v1, 0x9

    if-lt v13, v1, :cond_83

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->convertToHashFloodingResistantImplementation()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_83
    if-le v7, v9, :cond_8e

    .line 21
    invoke-static {v9}, Lcom/google/common/collect/CompactHashing;->newCapacity(I)I

    move-result v0

    invoke-direct {v6, v9, v0, v8, v5}, Lcom/google/common/collect/CompactHashMap;->resizeTable(IIII)I

    move-result v0

    goto :goto_48

    :cond_8e
    and-int v1, v7, v9

    or-int/2addr v1, v15

    .line 22
    aput v1, v0, v11

    .line 23
    :goto_93
    invoke-direct {v6, v7}, Lcom/google/common/collect/CompactHashMap;->resizeMeMaybe(I)V

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v8

    move v5, v9

    .line 24
    invoke-virtual/range {v0 .. v5}, Lcom/google/common/collect/CompactHashMap;->insertEntry(ILjava/lang/Object;Ljava/lang/Object;II)V

    .line 25
    iput v7, v6, Lcom/google/common/collect/CompactHashMap;->size:I

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->incrementModCount()V

    const/4 v0, 0x0

    return-object v0

    :cond_a9
    move v11, v10

    move/from16 v10, v16

    goto :goto_56
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_b
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap;->removeHelper(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    sget-object v0, Lcom/google/common/collect/CompactHashMap;->NOT_FOUND:Ljava/lang/Object;

    if-ne p1, v0, :cond_14

    const/4 p1, 0x0

    :cond_14
    return-object p1
.end method

.method public resizeEntries(I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireEntries()[I

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entries:[I

    .line 2
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireKeys()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireValues()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    return-void
.end method

.method public size()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_d

    :cond_b
    iget v0, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    :goto_d
    return v0
.end method

.method public trimToSize()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2
    :cond_7
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/common/collect/CompactHashMap;->createHashFloodingResistantDelegate(I)Ljava/util/Map;

    move-result-object v1

    .line 4
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 5
    iput-object v1, p0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    return-void

    .line 6
    :cond_1b
    iget v0, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    .line 7
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->requireEntries()[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_27

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactHashMap;->resizeEntries(I)V

    .line 9
    :cond_27
    invoke-static {v0}, Lcom/google/common/collect/CompactHashing;->tableSize(I)I

    move-result v0

    .line 10
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->hashTableMask()I

    move-result v1

    if-ge v0, v1, :cond_35

    const/4 v2, 0x0

    .line 11
    invoke-direct {p0, v1, v0, v2, v2}, Lcom/google/common/collect/CompactHashMap;->resizeTable(IIII)I

    :cond_35
    return-void
.end method

.method public values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->valuesView:Ljava/util/Collection;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lcom/google/common/collect/CompactHashMap$ValuesView;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashMap$ValuesView;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    .line 3
    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->valuesView:Ljava/util/Collection;

    :cond_b
    return-object v0
.end method
