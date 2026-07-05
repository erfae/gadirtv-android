.class final Lcom/google/common/collect/GeneralRange;
.super Ljava/lang/Object;
.source "GeneralRange.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
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


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private final hasLowerBound:Z

.field private final hasUpperBound:Z

.field private final lowerBoundType:Lcom/google/common/collect/BoundType;

.field private final lowerEndpoint:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private transient reverse:Lcom/google/common/collect/GeneralRange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/GeneralRange<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private final upperBoundType:Lcom/google/common/collect/BoundType;

.field private final upperEndpoint:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V
    .registers 10
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;ZTT;",
            "Lcom/google/common/collect/BoundType;",
            "ZTT;",
            "Lcom/google/common/collect/BoundType;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    .line 3
    iput-boolean p2, p0, Lcom/google/common/collect/GeneralRange;->hasLowerBound:Z

    .line 4
    iput-boolean p5, p0, Lcom/google/common/collect/GeneralRange;->hasUpperBound:Z

    .line 5
    iput-object p3, p0, Lcom/google/common/collect/GeneralRange;->lowerEndpoint:Ljava/lang/Object;

    .line 6
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BoundType;

    iput-object v0, p0, Lcom/google/common/collect/GeneralRange;->lowerBoundType:Lcom/google/common/collect/BoundType;

    .line 7
    iput-object p6, p0, Lcom/google/common/collect/GeneralRange;->upperEndpoint:Ljava/lang/Object;

    .line 8
    invoke-static {p7}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BoundType;

    iput-object v0, p0, Lcom/google/common/collect/GeneralRange;->upperBoundType:Lcom/google/common/collect/BoundType;

    if-eqz p2, :cond_28

    .line 9
    invoke-interface {p1, p3, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    :cond_28
    if-eqz p5, :cond_2d

    .line 10
    invoke-interface {p1, p6, p6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    :cond_2d
    if-eqz p2, :cond_53

    if-eqz p5, :cond_53

    .line 11
    invoke-interface {p1, p3, p6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    const/4 p2, 0x1

    const/4 p5, 0x0

    if-gtz p1, :cond_3b

    const/4 v0, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v0, 0x0

    :goto_3c
    const-string v1, "lowerEndpoint (%s) > upperEndpoint (%s)"

    .line 12
    invoke-static {v0, v1, p3, p6}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez p1, :cond_53

    .line 13
    sget-object p1, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-eq p4, p1, :cond_49

    const/4 p3, 0x1

    goto :goto_4a

    :cond_49
    const/4 p3, 0x0

    :goto_4a
    if-eq p7, p1, :cond_4d

    goto :goto_4e

    :cond_4d
    const/4 p2, 0x0

    :goto_4e
    or-int p1, p3, p2

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    :cond_53
    return-void
.end method

.method public static all(Ljava/util/Comparator;)Lcom/google/common/collect/GeneralRange;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Lcom/google/common/collect/GeneralRange<",
            "TT;>;"
        }
    .end annotation

    new-instance v8, Lcom/google/common/collect/GeneralRange;

    sget-object v7, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v4, v7

    invoke-direct/range {v0 .. v7}, Lcom/google/common/collect/GeneralRange;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    return-object v8
.end method

.method public static downTo(Ljava/util/Comparator;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/GeneralRange;
    .registers 12
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;TT;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/GeneralRange<",
            "TT;>;"
        }
    .end annotation

    new-instance v8, Lcom/google/common/collect/GeneralRange;

    sget-object v7, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/common/collect/GeneralRange;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    return-object v8
.end method

.method public static upTo(Ljava/util/Comparator;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/GeneralRange;
    .registers 12
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;TT;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/GeneralRange<",
            "TT;>;"
        }
    .end annotation

    new-instance v8, Lcom/google/common/collect/GeneralRange;

    sget-object v4, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/common/collect/GeneralRange;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    return-object v8
.end method


# virtual methods
.method public final comparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/GeneralRange;->tooLow(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0, p1}, Lcom/google/common/collect/GeneralRange;->tooHigh(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/google/common/collect/GeneralRange;

    const/4 v1, 0x0

    if-eqz v0, :cond_46

    .line 2
    check-cast p1, Lcom/google/common/collect/GeneralRange;

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    iget-object v2, p1, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, v2}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-boolean v0, p0, Lcom/google/common/collect/GeneralRange;->hasLowerBound:Z

    iget-boolean v2, p1, Lcom/google/common/collect/GeneralRange;->hasLowerBound:Z

    if-ne v0, v2, :cond_46

    iget-boolean v0, p0, Lcom/google/common/collect/GeneralRange;->hasUpperBound:Z

    iget-boolean v2, p1, Lcom/google/common/collect/GeneralRange;->hasUpperBound:Z

    if-ne v0, v2, :cond_46

    .line 4
    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->lowerBoundType:Lcom/google/common/collect/BoundType;

    iget-object v2, p1, Lcom/google/common/collect/GeneralRange;->lowerBoundType:Lcom/google/common/collect/BoundType;

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 6
    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->upperBoundType:Lcom/google/common/collect/BoundType;

    iget-object v2, p1, Lcom/google/common/collect/GeneralRange;->upperBoundType:Lcom/google/common/collect/BoundType;

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 8
    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->lowerEndpoint:Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/common/collect/GeneralRange;->lowerEndpoint:Ljava/lang/Object;

    .line 9
    invoke-static {v0, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 10
    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->upperEndpoint:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/common/collect/GeneralRange;->upperEndpoint:Ljava/lang/Object;

    .line 11
    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_46

    const/4 v1, 0x1

    :cond_46
    return v1
.end method

.method public final getLowerBoundType()Lcom/google/common/collect/BoundType;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->lowerBoundType:Lcom/google/common/collect/BoundType;

    return-object v0
.end method

.method public final getLowerEndpoint()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->lowerEndpoint:Ljava/lang/Object;

    return-object v0
.end method

.method public final getUpperBoundType()Lcom/google/common/collect/BoundType;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->upperBoundType:Lcom/google/common/collect/BoundType;

    return-object v0
.end method

.method public final getUpperEndpoint()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->upperEndpoint:Ljava/lang/Object;

    return-object v0
.end method

.method public final hasLowerBound()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/common/collect/GeneralRange;->hasLowerBound:Z

    return v0
.end method

.method public final hasUpperBound()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/common/collect/GeneralRange;->hasUpperBound:Z

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    iget-object v1, p0, Lcom/google/common/collect/GeneralRange;->lowerEndpoint:Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    .line 3
    iget-object v2, p0, Lcom/google/common/collect/GeneralRange;->lowerBoundType:Lcom/google/common/collect/BoundType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 4
    iget-object v2, p0, Lcom/google/common/collect/GeneralRange;->upperEndpoint:Ljava/lang/Object;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 5
    iget-object v2, p0, Lcom/google/common/collect/GeneralRange;->upperBoundType:Lcom/google/common/collect/BoundType;

    aput-object v2, v0, v1

    .line 6
    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final intersect(Lcom/google/common/collect/GeneralRange;)Lcom/google/common/collect/GeneralRange;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/GeneralRange<",
            "TT;>;)",
            "Lcom/google/common/collect/GeneralRange<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    iget-object v1, p1, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, v1}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 3
    iget-boolean v0, p0, Lcom/google/common/collect/GeneralRange;->hasLowerBound:Z

    .line 4
    iget-object v1, p0, Lcom/google/common/collect/GeneralRange;->lowerEndpoint:Ljava/lang/Object;

    .line 5
    iget-object v2, p0, Lcom/google/common/collect/GeneralRange;->lowerBoundType:Lcom/google/common/collect/BoundType;

    if-nez v0, :cond_1d

    .line 6
    iget-boolean v0, p1, Lcom/google/common/collect/GeneralRange;->hasLowerBound:Z

    .line 7
    iget-object v1, p1, Lcom/google/common/collect/GeneralRange;->lowerEndpoint:Ljava/lang/Object;

    .line 8
    iget-object v2, p1, Lcom/google/common/collect/GeneralRange;->lowerBoundType:Lcom/google/common/collect/BoundType;

    goto :goto_37

    .line 9
    :cond_1d
    iget-boolean v3, p1, Lcom/google/common/collect/GeneralRange;->hasLowerBound:Z

    if-eqz v3, :cond_37

    .line 10
    iget-object v3, p0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    .line 11
    iget-object v4, p1, Lcom/google/common/collect/GeneralRange;->lowerEndpoint:Ljava/lang/Object;

    .line 12
    invoke-interface {v3, v1, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_33

    if-nez v3, :cond_37

    .line 13
    iget-object v3, p1, Lcom/google/common/collect/GeneralRange;->lowerBoundType:Lcom/google/common/collect/BoundType;

    .line 14
    sget-object v4, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v3, v4, :cond_37

    .line 15
    :cond_33
    iget-object v1, p1, Lcom/google/common/collect/GeneralRange;->lowerEndpoint:Ljava/lang/Object;

    .line 16
    iget-object v2, p1, Lcom/google/common/collect/GeneralRange;->lowerBoundType:Lcom/google/common/collect/BoundType;

    :cond_37
    :goto_37
    move v5, v0

    .line 17
    iget-boolean v0, p0, Lcom/google/common/collect/GeneralRange;->hasUpperBound:Z

    .line 18
    iget-object v3, p0, Lcom/google/common/collect/GeneralRange;->upperEndpoint:Ljava/lang/Object;

    .line 19
    iget-object v4, p0, Lcom/google/common/collect/GeneralRange;->upperBoundType:Lcom/google/common/collect/BoundType;

    if-nez v0, :cond_47

    .line 20
    iget-boolean v0, p1, Lcom/google/common/collect/GeneralRange;->hasUpperBound:Z

    .line 21
    iget-object v3, p1, Lcom/google/common/collect/GeneralRange;->upperEndpoint:Ljava/lang/Object;

    .line 22
    iget-object v4, p1, Lcom/google/common/collect/GeneralRange;->upperBoundType:Lcom/google/common/collect/BoundType;

    goto :goto_61

    .line 23
    :cond_47
    iget-boolean v6, p1, Lcom/google/common/collect/GeneralRange;->hasUpperBound:Z

    if-eqz v6, :cond_61

    .line 24
    iget-object v6, p0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    .line 25
    iget-object v7, p1, Lcom/google/common/collect/GeneralRange;->upperEndpoint:Ljava/lang/Object;

    .line 26
    invoke-interface {v6, v3, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-gtz v6, :cond_5d

    if-nez v6, :cond_61

    .line 27
    iget-object v6, p1, Lcom/google/common/collect/GeneralRange;->upperBoundType:Lcom/google/common/collect/BoundType;

    .line 28
    sget-object v7, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v6, v7, :cond_61

    .line 29
    :cond_5d
    iget-object v3, p1, Lcom/google/common/collect/GeneralRange;->upperEndpoint:Ljava/lang/Object;

    .line 30
    iget-object v4, p1, Lcom/google/common/collect/GeneralRange;->upperBoundType:Lcom/google/common/collect/BoundType;

    :cond_61
    :goto_61
    move v8, v0

    move-object v9, v3

    if-eqz v5, :cond_7f

    if-eqz v8, :cond_7f

    .line 31
    iget-object p1, p0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    invoke-interface {p1, v1, v9}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-gtz p1, :cond_77

    if-nez p1, :cond_7f

    .line 32
    sget-object p1, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v2, p1, :cond_7f

    if-ne v4, p1, :cond_7f

    .line 33
    :cond_77
    sget-object p1, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    .line 34
    sget-object v0, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    move-object v7, p1

    move-object v10, v0

    move-object v6, v9

    goto :goto_82

    :cond_7f
    move-object v6, v1

    move-object v7, v2

    move-object v10, v4

    .line 35
    :goto_82
    new-instance p1, Lcom/google/common/collect/GeneralRange;

    iget-object v4, p0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lcom/google/common/collect/GeneralRange;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/common/collect/GeneralRange;->lowerBoundType:Lcom/google/common/collect/BoundType;

    sget-object v2, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    if-ne v1, v2, :cond_f

    const/16 v1, 0x5b

    goto :goto_11

    :cond_f
    const/16 v1, 0x28

    .line 3
    :goto_11
    iget-boolean v3, p0, Lcom/google/common/collect/GeneralRange;->hasLowerBound:Z

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/google/common/collect/GeneralRange;->lowerEndpoint:Ljava/lang/Object;

    goto :goto_1a

    :cond_18
    const-string v3, "-\u221e"

    :goto_1a
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 4
    iget-boolean v4, p0, Lcom/google/common/collect/GeneralRange;->hasUpperBound:Z

    if-eqz v4, :cond_25

    iget-object v4, p0, Lcom/google/common/collect/GeneralRange;->upperEndpoint:Ljava/lang/Object;

    goto :goto_27

    :cond_25
    const-string v4, "\u221e"

    :goto_27
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 5
    iget-object v5, p0, Lcom/google/common/collect/GeneralRange;->upperBoundType:Lcom/google/common/collect/BoundType;

    if-ne v5, v2, :cond_32

    const/16 v2, 0x5d

    goto :goto_34

    :cond_32
    const/16 v2, 0x29

    :goto_34
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final tooHigh(Ljava/lang/Object;)Z
    .registers 7
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/common/collect/GeneralRange;->hasUpperBound:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2
    :cond_6
    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->upperEndpoint:Ljava/lang/Object;

    .line 3
    iget-object v2, p0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    invoke-interface {v2, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x1

    if-lez p1, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    if-nez p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    .line 4
    :goto_19
    iget-object v3, p0, Lcom/google/common/collect/GeneralRange;->upperBoundType:Lcom/google/common/collect/BoundType;

    .line 5
    sget-object v4, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v3, v4, :cond_20

    const/4 v1, 0x1

    :cond_20
    and-int/2addr p1, v1

    or-int/2addr p1, v2

    return p1
.end method

.method public final tooLow(Ljava/lang/Object;)Z
    .registers 7
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/common/collect/GeneralRange;->hasLowerBound:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2
    :cond_6
    iget-object v0, p0, Lcom/google/common/collect/GeneralRange;->lowerEndpoint:Ljava/lang/Object;

    .line 3
    iget-object v2, p0, Lcom/google/common/collect/GeneralRange;->comparator:Ljava/util/Comparator;

    invoke-interface {v2, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x1

    if-gez p1, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    if-nez p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    .line 4
    :goto_19
    iget-object v3, p0, Lcom/google/common/collect/GeneralRange;->lowerBoundType:Lcom/google/common/collect/BoundType;

    .line 5
    sget-object v4, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v3, v4, :cond_20

    const/4 v1, 0x1

    :cond_20
    and-int/2addr p1, v1

    or-int/2addr p1, v2

    return p1
.end method
