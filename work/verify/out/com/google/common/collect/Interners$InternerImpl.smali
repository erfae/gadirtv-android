.class final Lcom/google/common/collect/Interners$InternerImpl;
.super Ljava/lang/Object;
.source "Interners.java"

# interfaces
.implements Lcom/google/common/collect/Interner;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Interners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InternerImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/Interner<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final map:Lcom/google/common/collect/MapMakerInternalMap;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap<",
            "TE;",
            "Lcom/google/common/collect/MapMaker$Dummy;",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/collect/MapMaker;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/google/common/base/Equivalence;->equals()Lcom/google/common/base/Equivalence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/MapMaker;->keyEquivalence(Lcom/google/common/base/Equivalence;)Lcom/google/common/collect/MapMaker;

    invoke-static {p1}, Lcom/google/common/collect/MapMakerInternalMap;->createWithDummyValues(Lcom/google/common/collect/MapMaker;)Lcom/google/common/collect/MapMakerInternalMap;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/Interners$InternerImpl;->map:Lcom/google/common/collect/MapMakerInternalMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/collect/Interners$1;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/collect/Interners$InternerImpl;-><init>(Lcom/google/common/collect/MapMaker;)V

    return-void
.end method


# virtual methods
.method public intern(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Interners$InternerImpl;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_9

    const/4 v0, 0x0

    goto :goto_15

    .line 2
    :cond_9
    invoke-virtual {v0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->getEntry(Ljava/lang/Object;I)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    :goto_15
    if-eqz v0, :cond_1e

    .line 4
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1e

    return-object v0

    .line 5
    :cond_1e
    iget-object v0, p0, Lcom/google/common/collect/Interners$InternerImpl;->map:Lcom/google/common/collect/MapMakerInternalMap;

    sget-object v1, Lcom/google/common/collect/MapMaker$Dummy;->VALUE:Lcom/google/common/collect/MapMaker$Dummy;

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/MapMakerInternalMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMaker$Dummy;

    if-nez v0, :cond_0

    return-object p1
.end method
