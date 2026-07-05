.class Lcom/google/common/cache/LocalCache$ManualSerializationProxy;
.super Lcom/google/common/cache/ForwardingCache;
.source "LocalCache.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ManualSerializationProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/ForwardingCache<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final concurrencyLevel:I

.field public transient delegate:Lcom/google/common/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/Cache<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field public final expireAfterAccessNanos:J

.field public final expireAfterWriteNanos:J

.field public final keyEquivalence:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final keyStrength:Lcom/google/common/cache/LocalCache$Strength;

.field public final loader:Lcom/google/common/cache/CacheLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/CacheLoader<",
            "-TK;TV;>;"
        }
    .end annotation
.end field

.field public final maxWeight:J

.field public final removalListener:Lcom/google/common/cache/RemovalListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/RemovalListener<",
            "-TK;-TV;>;"
        }
    .end annotation
.end field

.field public final ticker:Lcom/google/common/base/Ticker;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field public final valueEquivalence:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final valueStrength:Lcom/google/common/cache/LocalCache$Strength;

.field public final weigher:Lcom/google/common/cache/Weigher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/Weigher<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/cache/LocalCache$Strength;Lcom/google/common/cache/LocalCache$Strength;Lcom/google/common/base/Equivalence;Lcom/google/common/base/Equivalence;JJJLcom/google/common/cache/Weigher;ILcom/google/common/cache/RemovalListener;Lcom/google/common/base/Ticker;Lcom/google/common/cache/CacheLoader;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$Strength;",
            "Lcom/google/common/cache/LocalCache$Strength;",
            "Lcom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;JJJ",
            "Lcom/google/common/cache/Weigher<",
            "TK;TV;>;I",
            "Lcom/google/common/cache/RemovalListener<",
            "-TK;-TV;>;",
            "Lcom/google/common/base/Ticker;",
            "Lcom/google/common/cache/CacheLoader<",
            "-TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/cache/ForwardingCache;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->keyStrength:Lcom/google/common/cache/LocalCache$Strength;

    .line 3
    iput-object p2, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    .line 4
    iput-object p3, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 5
    iput-object p4, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->valueEquivalence:Lcom/google/common/base/Equivalence;

    .line 6
    iput-wide p5, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->expireAfterWriteNanos:J

    .line 7
    iput-wide p7, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->expireAfterAccessNanos:J

    .line 8
    iput-wide p9, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->maxWeight:J

    .line 9
    iput-object p11, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->weigher:Lcom/google/common/cache/Weigher;

    .line 10
    iput p12, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->concurrencyLevel:I

    .line 11
    iput-object p13, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->removalListener:Lcom/google/common/cache/RemovalListener;

    .line 12
    invoke-static {}, Lcom/google/common/base/Ticker;->systemTicker()Lcom/google/common/base/Ticker;

    move-result-object p1

    if-eq p14, p1, :cond_21

    sget-object p1, Lcom/google/common/cache/CacheBuilder;->NULL_TICKER:Lcom/google/common/base/Ticker;

    if-ne p14, p1, :cond_22

    :cond_21
    const/4 p14, 0x0

    :cond_22
    iput-object p14, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->ticker:Lcom/google/common/base/Ticker;

    .line 13
    iput-object p15, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->loader:Lcom/google/common/cache/CacheLoader;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->recreateCacheBuilder()Lcom/google/common/cache/CacheBuilder;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->build()Lcom/google/common/cache/Cache;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->delegate:Lcom/google/common/cache/Cache;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->delegate:Lcom/google/common/cache/Cache;

    return-object v0
.end method


# virtual methods
.method public final delegate()Lcom/google/common/cache/Cache;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/Cache<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->delegate:Lcom/google/common/cache/Cache;

    return-object v0
.end method

.method public final delegate()Ljava/lang/Object;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->delegate:Lcom/google/common/cache/Cache;

    return-object v0
.end method

.method public final recreateCacheBuilder()Lcom/google/common/cache/CacheBuilder;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/cache/CacheBuilder;->newBuilder()Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->keyStrength:Lcom/google/common/cache/LocalCache$Strength;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/common/cache/CacheBuilder;->setKeyStrength(Lcom/google/common/cache/LocalCache$Strength;)Lcom/google/common/cache/CacheBuilder;

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/common/cache/CacheBuilder;->setValueStrength(Lcom/google/common/cache/LocalCache$Strength;)Lcom/google/common/cache/CacheBuilder;

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 4
    iget-object v2, v0, Lcom/google/common/cache/CacheBuilder;->keyEquivalence:Lcom/google/common/base/Equivalence;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_18

    const/4 v5, 0x1

    goto :goto_19

    :cond_18
    const/4 v5, 0x0

    :goto_19
    const-string v6, "key equivalence was already set to %s"

    invoke-static {v5, v6, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/base/Equivalence;

    iput-object v1, v0, Lcom/google/common/cache/CacheBuilder;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 6
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->valueEquivalence:Lcom/google/common/base/Equivalence;

    .line 7
    iget-object v2, v0, Lcom/google/common/cache/CacheBuilder;->valueEquivalence:Lcom/google/common/base/Equivalence;

    if-nez v2, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v3, 0x0

    :goto_2e
    const-string v5, "value equivalence was already set to %s"

    invoke-static {v3, v5, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 8
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/base/Equivalence;

    iput-object v1, v0, Lcom/google/common/cache/CacheBuilder;->valueEquivalence:Lcom/google/common/base/Equivalence;

    .line 9
    iget v1, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->concurrencyLevel:I

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/common/cache/CacheBuilder;->concurrencyLevel(I)Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->removalListener:Lcom/google/common/cache/RemovalListener;

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/common/cache/CacheBuilder;->removalListener(Lcom/google/common/cache/RemovalListener;)Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    .line 12
    iput-boolean v4, v0, Lcom/google/common/cache/CacheBuilder;->strictParsing:Z

    .line 13
    iget-wide v1, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->expireAfterWriteNanos:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_56

    .line 14
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v5}, Lcom/google/common/cache/CacheBuilder;->expireAfterWrite(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/CacheBuilder;

    .line 15
    :cond_56
    iget-wide v1, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->expireAfterAccessNanos:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_61

    .line 16
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/cache/CacheBuilder;->expireAfterAccess(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/CacheBuilder;

    .line 17
    :cond_61
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->weigher:Lcom/google/common/cache/Weigher;

    sget-object v2, Lcom/google/common/cache/CacheBuilder$OneWeigher;->INSTANCE:Lcom/google/common/cache/CacheBuilder$OneWeigher;

    const-wide/16 v3, -0x1

    if-eq v1, v2, :cond_76

    .line 18
    invoke-virtual {v0, v1}, Lcom/google/common/cache/CacheBuilder;->weigher(Lcom/google/common/cache/Weigher;)Lcom/google/common/cache/CacheBuilder;

    .line 19
    iget-wide v1, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->maxWeight:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_7f

    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/google/common/cache/CacheBuilder;->maximumWeight(J)Lcom/google/common/cache/CacheBuilder;

    goto :goto_7f

    .line 21
    :cond_76
    iget-wide v1, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->maxWeight:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_7f

    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/google/common/cache/CacheBuilder;->maximumSize(J)Lcom/google/common/cache/CacheBuilder;

    .line 23
    :cond_7f
    :goto_7f
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;->ticker:Lcom/google/common/base/Ticker;

    if-eqz v1, :cond_86

    .line 24
    invoke-virtual {v0, v1}, Lcom/google/common/cache/CacheBuilder;->ticker(Lcom/google/common/base/Ticker;)Lcom/google/common/cache/CacheBuilder;

    :cond_86
    return-object v0
.end method
