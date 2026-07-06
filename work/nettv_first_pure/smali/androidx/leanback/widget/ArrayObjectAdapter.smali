.class public Landroidx/leanback/widget/ArrayObjectAdapter;
.super Landroidx/leanback/widget/ObjectAdapter;
.source "ArrayObjectAdapter.java"


# static fields
.field private static final DEBUG:Ljava/lang/Boolean;

.field private static final TAG:Ljava/lang/String; = "ArrayObjectAdapter"


# instance fields
.field private final mItems:Ljava/util/List;

.field public mListUpdateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

.field public final mOldItems:Ljava/util/ArrayList;

.field private mUnmodifiableItems:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Landroidx/leanback/widget/ArrayObjectAdapter;->DEBUG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Landroidx/leanback/widget/ObjectAdapter;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/List;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/leanback/widget/ArrayObjectAdapter;->mOldItems:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroidx/leanback/widget/Presenter;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Landroidx/leanback/widget/ObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/List;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/ArrayObjectAdapter;->mOldItems:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroidx/leanback/widget/PresenterSelector;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/leanback/widget/ObjectAdapter;-><init>(Landroidx/leanback/widget/PresenterSelector;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/List;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/ArrayObjectAdapter;->mOldItems:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Landroidx/leanback/widget/ArrayObjectAdapter;->DEBUG:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/ObjectAdapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public add(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public addAll(ILjava/util/Collection;)V
    .locals 2

    .line 1
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Landroidx/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 3
    invoke-virtual {p0, p1, v0}, Landroidx/leanback/widget/ObjectAdapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Landroidx/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1, v0}, Landroidx/leanback/widget/ObjectAdapter;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public isImmediateNotifySupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public move(II)V
    .locals 2

    if-ne p1, p2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/ObjectAdapter;->notifyItemMoved(II)V

    return-void
.end method

.method public notifyArrayItemRangeChanged(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/ObjectAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p1, v0}, Landroidx/leanback/widget/ObjectAdapter;->notifyItemRangeRemoved(II)V

    :cond_0
    if-ltz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeItems(II)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v0, 0x0

    if-gtz p2, :cond_0

    return v0

    :cond_0
    :goto_0
    if-ge v0, p2, :cond_1

    .line 2
    iget-object v1, p0, Landroidx/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/ObjectAdapter;->notifyItemRangeRemoved(II)V

    return p2
.end method

.method public replace(ILjava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    .line 2
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/ObjectAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public setItems(Ljava/util/List;Landroidx/leanback/widget/DiffCallback;)V
    .locals 2

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Landroidx/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 2
    iget-object p2, p0, Landroidx/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-virtual {p0}, Landroidx/leanback/widget/ObjectAdapter;->notifyChanged()V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/ArrayObjectAdapter;->mOldItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5
    iget-object v0, p0, Landroidx/leanback/widget/ArrayObjectAdapter;->mOldItems:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6
    new-instance v0, Landroidx/leanback/widget/ArrayObjectAdapter$1;

    invoke-direct {v0, p0, p1, p2}, Landroidx/leanback/widget/ArrayObjectAdapter$1;-><init>(Landroidx/leanback/widget/ArrayObjectAdapter;Ljava/util/List;Landroidx/leanback/widget/DiffCallback;)V

    invoke-static {v0}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object p2

    .line 7
    iget-object v0, p0, Landroidx/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    iget-object v0, p0, Landroidx/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    iget-object p1, p0, Landroidx/leanback/widget/ArrayObjectAdapter;->mListUpdateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    if-nez p1, :cond_1

    .line 10
    new-instance p1, Landroidx/leanback/widget/ArrayObjectAdapter$2;

    invoke-direct {p1, p0}, Landroidx/leanback/widget/ArrayObjectAdapter$2;-><init>(Landroidx/leanback/widget/ArrayObjectAdapter;)V

    iput-object p1, p0, Landroidx/leanback/widget/ArrayObjectAdapter;->mListUpdateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    .line 11
    :cond_1
    iget-object p1, p0, Landroidx/leanback/widget/ArrayObjectAdapter;->mListUpdateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    .line 12
    iget-object p1, p0, Landroidx/leanback/widget/ArrayObjectAdapter;->mOldItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public unmodifiableList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/ArrayObjectAdapter;->mUnmodifiableItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/leanback/widget/ArrayObjectAdapter;->mItems:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/widget/ArrayObjectAdapter;->mUnmodifiableItems:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/ArrayObjectAdapter;->mUnmodifiableItems:Ljava/util/List;

    return-object v0
.end method
