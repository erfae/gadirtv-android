.class public final Landroidx/paging/PagedList$Config$Builder;
.super Ljava/lang/Object;
.source "PagedList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/paging/PagedList$Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/paging/PagedList$Config$Builder$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004J\u0010\u0010\r\u001a\u00020\u00002\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0006J\u0010\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u0006J\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0008\u0001\u0010\t\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/paging/PagedList$Config$Builder;",
        "",
        "()V",
        "enablePlaceholders",
        "",
        "initialLoadSizeHint",
        "",
        "maxSize",
        "pageSize",
        "prefetchDistance",
        "build",
        "Landroidx/paging/PagedList$Config;",
        "setEnablePlaceholders",
        "setInitialLoadSizeHint",
        "setMaxSize",
        "setPageSize",
        "setPrefetchDistance",
        "Companion",
        "paging-common"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/paging/PagedList$Config$Builder$Companion;

.field public static final DEFAULT_INITIAL_PAGE_MULTIPLIER:I = 0x3


# instance fields
.field private enablePlaceholders:Z

.field private initialLoadSizeHint:I

.field private maxSize:I

.field private pageSize:I

.field private prefetchDistance:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/paging/PagedList$Config$Builder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/paging/PagedList$Config$Builder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/paging/PagedList$Config$Builder;->Companion:Landroidx/paging/PagedList$Config$Builder$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 595
    iput v0, p0, Landroidx/paging/PagedList$Config$Builder;->pageSize:I

    .line 596
    iput v0, p0, Landroidx/paging/PagedList$Config$Builder;->prefetchDistance:I

    .line 597
    iput v0, p0, Landroidx/paging/PagedList$Config$Builder;->initialLoadSizeHint:I

    const/4 v0, 0x1

    .line 598
    iput-boolean v0, p0, Landroidx/paging/PagedList$Config$Builder;->enablePlaceholders:Z

    const v0, 0x7fffffff

    .line 599
    iput v0, p0, Landroidx/paging/PagedList$Config$Builder;->maxSize:I

    return-void
.end method


# virtual methods
.method public final build()Landroidx/paging/PagedList$Config;
    .locals 7

    .line 738
    iget v0, p0, Landroidx/paging/PagedList$Config$Builder;->prefetchDistance:I

    if-gez v0, :cond_0

    .line 739
    iget v0, p0, Landroidx/paging/PagedList$Config$Builder;->pageSize:I

    iput v0, p0, Landroidx/paging/PagedList$Config$Builder;->prefetchDistance:I

    .line 741
    :cond_0
    iget v0, p0, Landroidx/paging/PagedList$Config$Builder;->initialLoadSizeHint:I

    if-gez v0, :cond_1

    .line 742
    iget v0, p0, Landroidx/paging/PagedList$Config$Builder;->pageSize:I

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Landroidx/paging/PagedList$Config$Builder;->initialLoadSizeHint:I

    .line 744
    :cond_1
    iget-boolean v0, p0, Landroidx/paging/PagedList$Config$Builder;->enablePlaceholders:Z

    if-nez v0, :cond_3

    iget v0, p0, Landroidx/paging/PagedList$Config$Builder;->prefetchDistance:I

    if-eqz v0, :cond_2

    goto :goto_0

    .line 745
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Placeholders and prefetch are the only ways to trigger loading of more data in the PagedList, so either placeholders must be enabled, or prefetch distance must be > 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 751
    :cond_3
    :goto_0
    iget v0, p0, Landroidx/paging/PagedList$Config$Builder;->maxSize:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_5

    iget v1, p0, Landroidx/paging/PagedList$Config$Builder;->pageSize:I

    iget v2, p0, Landroidx/paging/PagedList$Config$Builder;->prefetchDistance:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_4

    goto :goto_1

    .line 752
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 753
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum size must be at least pageSize + 2*prefetchDist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pageSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    iget v2, p0, Landroidx/paging/PagedList$Config$Builder;->pageSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", prefetchDist="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/paging/PagedList$Config$Builder;->prefetchDistance:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", maxSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    iget v2, p0, Landroidx/paging/PagedList$Config$Builder;->maxSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 752
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 759
    :cond_5
    :goto_1
    new-instance v0, Landroidx/paging/PagedList$Config;

    .line 760
    iget v2, p0, Landroidx/paging/PagedList$Config$Builder;->pageSize:I

    .line 761
    iget v3, p0, Landroidx/paging/PagedList$Config$Builder;->prefetchDistance:I

    .line 762
    iget-boolean v4, p0, Landroidx/paging/PagedList$Config$Builder;->enablePlaceholders:Z

    .line 763
    iget v5, p0, Landroidx/paging/PagedList$Config$Builder;->initialLoadSizeHint:I

    .line 764
    iget v6, p0, Landroidx/paging/PagedList$Config$Builder;->maxSize:I

    move-object v1, v0

    .line 759
    invoke-direct/range {v1 .. v6}, Landroidx/paging/PagedList$Config;-><init>(IIZII)V

    return-object v0
.end method

.method public final setEnablePlaceholders(Z)Landroidx/paging/PagedList$Config$Builder;
    .locals 1

    .line 674
    move-object v0, p0

    check-cast v0, Landroidx/paging/PagedList$Config$Builder;

    .line 675
    iput-boolean p1, v0, Landroidx/paging/PagedList$Config$Builder;->enablePlaceholders:Z

    return-object v0
.end method

.method public final setInitialLoadSizeHint(I)Landroidx/paging/PagedList$Config$Builder;
    .locals 1

    .line 689
    move-object v0, p0

    check-cast v0, Landroidx/paging/PagedList$Config$Builder;

    .line 690
    iput p1, v0, Landroidx/paging/PagedList$Config$Builder;->initialLoadSizeHint:I

    return-object v0
.end method

.method public final setMaxSize(I)Landroidx/paging/PagedList$Config$Builder;
    .locals 1

    .line 723
    move-object v0, p0

    check-cast v0, Landroidx/paging/PagedList$Config$Builder;

    .line 724
    iput p1, v0, Landroidx/paging/PagedList$Config$Builder;->maxSize:I

    return-object v0
.end method

.method public final setPageSize(I)Landroidx/paging/PagedList$Config$Builder;
    .locals 2

    .line 621
    move-object v0, p0

    check-cast v0, Landroidx/paging/PagedList$Config$Builder;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    .line 625
    iput p1, v0, Landroidx/paging/PagedList$Config$Builder;->pageSize:I

    return-object v0

    .line 623
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Page size must be a positive number"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final setPrefetchDistance(I)Landroidx/paging/PagedList$Config$Builder;
    .locals 1

    .line 643
    move-object v0, p0

    check-cast v0, Landroidx/paging/PagedList$Config$Builder;

    .line 644
    iput p1, v0, Landroidx/paging/PagedList$Config$Builder;->prefetchDistance:I

    return-object v0
.end method
