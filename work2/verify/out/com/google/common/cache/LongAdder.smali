.class final Lcom/google/common/cache/LongAdder;
.super Lcom/google/common/cache/Striped64;
.source "LongAdder.java"

# interfaces
.implements Lcom/google/common/cache/LongAddable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation runtime Lcom/google/common/cache/ElementTypesAreNonnullByDefault;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6499de12a37d0a3dL


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/cache/Striped64;-><init>()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/common/cache/Striped64;->busy:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    .line 4
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/cache/Striped64;->base:J

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 2
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    return-void
.end method


# virtual methods
.method public add(J)V
    .registers 16

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-nez v0, :cond_e

    iget-wide v1, p0, Lcom/google/common/cache/Striped64;->base:J

    add-long v3, v1, p1

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/common/cache/Striped64;->casBase(JJ)Z

    move-result v1

    if-nez v1, :cond_111

    .line 2
    :cond_e
    sget-object v1, Lcom/google/common/cache/Striped64;->threadHashCode:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_32

    if-eqz v0, :cond_32

    array-length v5, v0

    if-lt v5, v4, :cond_32

    sub-int/2addr v5, v4

    aget v6, v2, v3

    and-int/2addr v5, v6

    aget-object v0, v0, v5

    if-eqz v0, :cond_32

    iget-wide v5, v0, Lcom/google/common/cache/Striped64$Cell;->value:J

    add-long v7, v5, p1

    .line 3
    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/google/common/cache/Striped64$Cell;->cas(JJ)Z

    move-result v0

    if-nez v0, :cond_111

    goto :goto_33

    :cond_32
    const/4 v0, 0x1

    :goto_33
    if-nez v2, :cond_46

    new-array v2, v4, [I

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 5
    sget-object v1, Lcom/google/common/cache/Striped64;->rng:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    if-nez v1, :cond_43

    const/4 v1, 0x1

    :cond_43
    aput v1, v2, v3

    goto :goto_48

    .line 6
    :cond_46
    aget v1, v2, v3

    :goto_48
    const/4 v5, 0x0

    .line 7
    :cond_49
    :goto_49
    iget-object v6, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-eqz v6, :cond_d9

    array-length v7, v6

    if-lez v7, :cond_d9

    add-int/lit8 v8, v7, -0x1

    and-int/2addr v8, v1

    .line 8
    aget-object v8, v6, v8

    if-nez v8, :cond_87

    .line 9
    iget v6, p0, Lcom/google/common/cache/Striped64;->busy:I

    if-nez v6, :cond_cb

    .line 10
    new-instance v6, Lcom/google/common/cache/Striped64$Cell;

    invoke-direct {v6, p1, p2}, Lcom/google/common/cache/Striped64$Cell;-><init>(J)V

    .line 11
    iget v7, p0, Lcom/google/common/cache/Striped64;->busy:I

    if-nez v7, :cond_cb

    invoke-virtual {p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v7

    if-eqz v7, :cond_cb

    .line 12
    :try_start_6a
    iget-object v7, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-eqz v7, :cond_7c

    array-length v8, v7

    if-lez v8, :cond_7c

    add-int/lit8 v8, v8, -0x1

    and-int/2addr v8, v1

    aget-object v9, v7, v8

    if-nez v9, :cond_7c

    .line 13
    aput-object v6, v7, v8
    :try_end_7a
    .catchall {:try_start_6a .. :try_end_7a} :catchall_83

    const/4 v6, 0x1

    goto :goto_7d

    :cond_7c
    const/4 v6, 0x0

    .line 14
    :goto_7d
    iput v3, p0, Lcom/google/common/cache/Striped64;->busy:I

    if-eqz v6, :cond_49

    goto/16 :goto_111

    :catchall_83
    move-exception p1

    iput v3, p0, Lcom/google/common/cache/Striped64;->busy:I

    .line 15
    throw p1

    :cond_87
    if-nez v0, :cond_8b

    const/4 v0, 0x1

    goto :goto_cc

    .line 16
    :cond_8b
    iget-wide v9, v8, Lcom/google/common/cache/Striped64$Cell;->value:J

    invoke-virtual {p0, v9, v10, p1, p2}, Lcom/google/common/cache/LongAdder;->fn(JJ)J

    move-result-wide v11

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/google/common/cache/Striped64$Cell;->cas(JJ)Z

    move-result v8

    if-eqz v8, :cond_99

    goto/16 :goto_111

    .line 17
    :cond_99
    sget v8, Lcom/google/common/cache/Striped64;->NCPU:I

    if-ge v7, v8, :cond_cb

    iget-object v8, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-eq v8, v6, :cond_a2

    goto :goto_cb

    :cond_a2
    if-nez v5, :cond_a6

    const/4 v5, 0x1

    goto :goto_cc

    .line 18
    :cond_a6
    iget v8, p0, Lcom/google/common/cache/Striped64;->busy:I

    if-nez v8, :cond_cc

    invoke-virtual {p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v8

    if-eqz v8, :cond_cc

    .line 19
    :try_start_b0
    iget-object v5, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-ne v5, v6, :cond_c4

    shl-int/lit8 v5, v7, 0x1

    .line 20
    new-array v5, v5, [Lcom/google/common/cache/Striped64$Cell;

    const/4 v8, 0x0

    :goto_b9
    if-ge v8, v7, :cond_c2

    .line 21
    aget-object v9, v6, v8

    aput-object v9, v5, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_b9

    .line 22
    :cond_c2
    iput-object v5, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;
    :try_end_c4
    .catchall {:try_start_b0 .. :try_end_c4} :catchall_c7

    .line 23
    :cond_c4
    iput v3, p0, Lcom/google/common/cache/Striped64;->busy:I

    goto :goto_48

    :catchall_c7
    move-exception p1

    iput v3, p0, Lcom/google/common/cache/Striped64;->busy:I

    .line 24
    throw p1

    :cond_cb
    :goto_cb
    const/4 v5, 0x0

    :cond_cc
    :goto_cc
    shl-int/lit8 v6, v1, 0xd

    xor-int/2addr v1, v6

    ushr-int/lit8 v6, v1, 0x11

    xor-int/2addr v1, v6

    shl-int/lit8 v6, v1, 0x5

    xor-int/2addr v1, v6

    .line 25
    aput v1, v2, v3

    goto/16 :goto_49

    .line 26
    :cond_d9
    iget v7, p0, Lcom/google/common/cache/Striped64;->busy:I

    if-nez v7, :cond_105

    iget-object v7, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-ne v7, v6, :cond_105

    invoke-virtual {p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v7

    if-eqz v7, :cond_105

    .line 27
    :try_start_e7
    iget-object v7, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-ne v7, v6, :cond_fb

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/google/common/cache/Striped64$Cell;

    and-int/lit8 v7, v1, 0x1

    .line 28
    new-instance v8, Lcom/google/common/cache/Striped64$Cell;

    invoke-direct {v8, p1, p2}, Lcom/google/common/cache/Striped64$Cell;-><init>(J)V

    aput-object v8, v6, v7

    .line 29
    iput-object v6, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;
    :try_end_f9
    .catchall {:try_start_e7 .. :try_end_f9} :catchall_101

    const/4 v6, 0x1

    goto :goto_fc

    :cond_fb
    const/4 v6, 0x0

    .line 30
    :goto_fc
    iput v3, p0, Lcom/google/common/cache/Striped64;->busy:I

    if-eqz v6, :cond_49

    goto :goto_111

    :catchall_101
    move-exception p1

    iput v3, p0, Lcom/google/common/cache/Striped64;->busy:I

    .line 31
    throw p1

    .line 32
    :cond_105
    iget-wide v6, p0, Lcom/google/common/cache/Striped64;->base:J

    invoke-virtual {p0, v6, v7, p1, p2}, Lcom/google/common/cache/LongAdder;->fn(JJ)J

    move-result-wide v8

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/google/common/cache/Striped64;->casBase(JJ)Z

    move-result v6

    if-eqz v6, :cond_49

    :cond_111
    :goto_111
    return-void
.end method

.method public decrement()V
    .registers 3

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LongAdder;->add(J)V

    return-void
.end method

.method public doubleValue()D
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public floatValue()F
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method

.method public final fn(JJ)J
    .registers 5

    add-long/2addr p1, p3

    return-wide p1
.end method

.method public increment()V
    .registers 3

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LongAdder;->add(J)V

    return-void
.end method

.method public intValue()I
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public longValue()J
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    return-wide v0
.end method

.method public reset()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    const-wide/16 v1, 0x0

    .line 2
    iput-wide v1, p0, Lcom/google/common/cache/Striped64;->base:J

    if-eqz v0, :cond_15

    .line 3
    array-length v3, v0

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v3, :cond_15

    .line 4
    aget-object v5, v0, v4

    if-eqz v5, :cond_12

    .line 5
    iput-wide v1, v5, Lcom/google/common/cache/Striped64$Cell;->value:J

    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_15
    return-void
.end method

.method public sum()J
    .registers 8

    .line 1
    iget-wide v0, p0, Lcom/google/common/cache/Striped64;->base:J

    .line 2
    iget-object v2, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-eqz v2, :cond_14

    .line 3
    array-length v3, v2

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v3, :cond_14

    .line 4
    aget-object v5, v2, v4

    if-eqz v5, :cond_11

    .line 5
    iget-wide v5, v5, Lcom/google/common/cache/Striped64$Cell;->value:J

    add-long/2addr v0, v5

    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_14
    return-wide v0
.end method

.method public sumThenReset()J
    .registers 11

    .line 1
    iget-wide v0, p0, Lcom/google/common/cache/Striped64;->base:J

    .line 2
    iget-object v2, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    const-wide/16 v3, 0x0

    .line 3
    iput-wide v3, p0, Lcom/google/common/cache/Striped64;->base:J

    if-eqz v2, :cond_1a

    .line 4
    array-length v5, v2

    const/4 v6, 0x0

    :goto_c
    if-ge v6, v5, :cond_1a

    .line 5
    aget-object v7, v2, v6

    if-eqz v7, :cond_17

    .line 6
    iget-wide v8, v7, Lcom/google/common/cache/Striped64$Cell;->value:J

    add-long/2addr v0, v8

    .line 7
    iput-wide v3, v7, Lcom/google/common/cache/Striped64$Cell;->value:J

    :cond_17
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_1a
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
