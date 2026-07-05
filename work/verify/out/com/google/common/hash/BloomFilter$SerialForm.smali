.class Lcom/google/common/hash/BloomFilter$SerialForm;
.super Ljava/lang/Object;
.source "BloomFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/BloomFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SerialForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final funnel:Lcom/google/common/hash/Funnel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/hash/Funnel<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final strategy:Lcom/google/common/hash/BloomFilter$Strategy;


# direct methods
.method public constructor <init>(Lcom/google/common/hash/BloomFilter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/hash/BloomFilter<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    # getter for: Lcom/google/common/hash/BloomFilter;->bits:Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;
    invoke-static {p1}, Lcom/google/common/hash/BloomFilter;->access$000(Lcom/google/common/hash/BloomFilter;)Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {v0}, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->toPlainArray(Ljava/util/concurrent/atomic/AtomicLongArray;)[J

    .line 3
    # getter for: Lcom/google/common/hash/BloomFilter;->numHashFunctions:I
    invoke-static {p1}, Lcom/google/common/hash/BloomFilter;->access$100(Lcom/google/common/hash/BloomFilter;)I

    .line 4
    # getter for: Lcom/google/common/hash/BloomFilter;->funnel:Lcom/google/common/hash/Funnel;
    invoke-static {p1}, Lcom/google/common/hash/BloomFilter;->access$200(Lcom/google/common/hash/BloomFilter;)Lcom/google/common/hash/Funnel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/hash/BloomFilter$SerialForm;->funnel:Lcom/google/common/hash/Funnel;

    .line 5
    # getter for: Lcom/google/common/hash/BloomFilter;->strategy:Lcom/google/common/hash/BloomFilter$Strategy;
    invoke-static {p1}, Lcom/google/common/hash/BloomFilter;->access$300(Lcom/google/common/hash/BloomFilter;)Lcom/google/common/hash/BloomFilter$Strategy;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/hash/BloomFilter$SerialForm;->strategy:Lcom/google/common/hash/BloomFilter$Strategy;

    return-void
.end method
