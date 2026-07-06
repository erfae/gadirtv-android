.class public Landroidx/leanback/widget/DetailsOverviewRow;
.super Landroidx/leanback/widget/Row;
.source "DetailsOverviewRow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/DetailsOverviewRow$Listener;
    }
.end annotation


# instance fields
.field private mActionsAdapter:Landroidx/leanback/widget/ObjectAdapter;

.field private mDefaultActionPresenter:Landroidx/leanback/widget/PresenterSelector;

.field private mImageDrawable:Landroid/graphics/drawable/Drawable;

.field private mImageScaleUpAllowed:Z

.field private mItem:Ljava/lang/Object;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/leanback/widget/DetailsOverviewRow$Listener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroidx/leanback/widget/Row;-><init>(Landroidx/leanback/widget/HeaderItem;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/leanback/widget/DetailsOverviewRow;->mImageScaleUpAllowed:Z

    .line 3
    new-instance v0, Landroidx/leanback/widget/ActionPresenterSelector;

    invoke-direct {v0}, Landroidx/leanback/widget/ActionPresenterSelector;-><init>()V

    iput-object v0, p0, Landroidx/leanback/widget/DetailsOverviewRow;->mDefaultActionPresenter:Landroidx/leanback/widget/PresenterSelector;

    .line 4
    new-instance v0, Landroidx/leanback/widget/ArrayObjectAdapter;

    iget-object v1, p0, Landroidx/leanback/widget/DetailsOverviewRow;->mDefaultActionPresenter:Landroidx/leanback/widget/PresenterSelector;

    invoke-direct {v0, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/PresenterSelector;)V

    iput-object v0, p0, Landroidx/leanback/widget/DetailsOverviewRow;->mActionsAdapter:Landroidx/leanback/widget/ObjectAdapter;

    .line 5
    iput-object p1, p0, Landroidx/leanback/widget/DetailsOverviewRow;->mItem:Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Landroidx/leanback/widget/DetailsOverviewRow;->verify()V

    return-void
.end method

.method private getArrayObjectAdapter()Landroidx/leanback/widget/ArrayObjectAdapter;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/DetailsOverviewRow;->mActionsAdapter:Landroidx/leanback/widget/ObjectAdapter;

    check-cast v0, Landroidx/leanback/widget/ArrayObjectAdapter;

    return-object v0
.end method

.method private verify()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/DetailsOverviewRow;->mItem:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Object cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final addAction(ILandroidx/leanback/widget/Action;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-direct {p0}, Landroidx/leanback/widget/DetailsOverviewRow;->getArrayObjectAdapter()Landroidx/leanback/widget/ArrayObjectAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public final addAction(Landroidx/leanback/widget/Action;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/leanback/widget/DetailsOverviewRow;->getArrayObjectAdapter()Landroidx/leanback/widget/ArrayObjectAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public final addListener(Landroidx/leanback/widget/DetailsOverviewRow$Listener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Landroidx/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 4
    iget-object v1, p0, Landroidx/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/DetailsOverviewRow$Listener;

    if-nez v1, :cond_1

    .line 5
    iget-object v1, p0, Landroidx/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-ne v1, p1, :cond_2

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_3
    :goto_1
    iget-object v0, p0, Landroidx/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getActionForKeyCode(I)Landroidx/leanback/widget/Action;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/widget/DetailsOverviewRow;->getActionsAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {v0}, Landroidx/leanback/widget/ObjectAdapter;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/leanback/widget/Action;

    .line 4
    invoke-virtual {v2, p1}, Landroidx/leanback/widget/Action;->respondsToKeyCode(I)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/leanback/widget/Action;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroidx/leanback/widget/DetailsOverviewRow;->getArrayObjectAdapter()Landroidx/leanback/widget/ArrayObjectAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->unmodifiableList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getActionsAdapter()Landroidx/leanback/widget/ObjectAdapter;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/DetailsOverviewRow;->mActionsAdapter:Landroidx/leanback/widget/ObjectAdapter;

    return-object v0
.end method

.method public final getImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/DetailsOverviewRow;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getItem()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/DetailsOverviewRow;->mItem:Ljava/lang/Object;

    return-object v0
.end method

.method public isImageScaleUpAllowed()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/leanback/widget/DetailsOverviewRow;->mImageScaleUpAllowed:Z

    return v0
.end method

.method public final notifyImageDrawableChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroidx/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Landroidx/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/DetailsOverviewRow$Listener;

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Landroidx/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1, p0}, Landroidx/leanback/widget/DetailsOverviewRow$Listener;->onImageDrawableChanged(Landroidx/leanback/widget/DetailsOverviewRow;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final removeAction(Landroidx/leanback/widget/Action;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroidx/leanback/widget/DetailsOverviewRow;->getArrayObjectAdapter()Landroidx/leanback/widget/ArrayObjectAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final removeListener(Landroidx/leanback/widget/DetailsOverviewRow$Listener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroidx/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3
    iget-object v1, p0, Landroidx/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/DetailsOverviewRow$Listener;

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Landroidx/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-ne v1, p1, :cond_1

    .line 5
    iget-object p1, p0, Landroidx/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final setActionsAdapter(Landroidx/leanback/widget/ObjectAdapter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/DetailsOverviewRow;->mActionsAdapter:Landroidx/leanback/widget/ObjectAdapter;

    if-eq p1, v0, :cond_2

    .line 2
    iput-object p1, p0, Landroidx/leanback/widget/DetailsOverviewRow;->mActionsAdapter:Landroidx/leanback/widget/ObjectAdapter;

    .line 3
    invoke-virtual {p1}, Landroidx/leanback/widget/ObjectAdapter;->getPresenterSelector()Landroidx/leanback/widget/PresenterSelector;

    move-result-object p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Landroidx/leanback/widget/DetailsOverviewRow;->mActionsAdapter:Landroidx/leanback/widget/ObjectAdapter;

    iget-object v0, p0, Landroidx/leanback/widget/DetailsOverviewRow;->mDefaultActionPresenter:Landroidx/leanback/widget/PresenterSelector;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/ObjectAdapter;->setPresenterSelector(Landroidx/leanback/widget/PresenterSelector;)V

    .line 5
    :cond_0
    iget-object p1, p0, Landroidx/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 6
    :goto_0
    iget-object v0, p0, Landroidx/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 7
    iget-object v0, p0, Landroidx/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/DetailsOverviewRow$Listener;

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Landroidx/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v0, p0}, Landroidx/leanback/widget/DetailsOverviewRow$Listener;->onActionsAdapterChanged(Landroidx/leanback/widget/DetailsOverviewRow;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final setImageBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Landroidx/leanback/widget/DetailsOverviewRow;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0}, Landroidx/leanback/widget/DetailsOverviewRow;->notifyImageDrawableChanged()V

    return-void
.end method

.method public final setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/DetailsOverviewRow;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Landroidx/leanback/widget/DetailsOverviewRow;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {p0}, Landroidx/leanback/widget/DetailsOverviewRow;->notifyImageDrawableChanged()V

    :cond_0
    return-void
.end method

.method public setImageScaleUpAllowed(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/widget/DetailsOverviewRow;->mImageScaleUpAllowed:Z

    if-eq p1, v0, :cond_0

    .line 2
    iput-boolean p1, p0, Landroidx/leanback/widget/DetailsOverviewRow;->mImageScaleUpAllowed:Z

    .line 3
    invoke-virtual {p0}, Landroidx/leanback/widget/DetailsOverviewRow;->notifyImageDrawableChanged()V

    :cond_0
    return-void
.end method

.method public final setItem(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/DetailsOverviewRow;->mItem:Ljava/lang/Object;

    if-eq p1, v0, :cond_1

    .line 2
    iput-object p1, p0, Landroidx/leanback/widget/DetailsOverviewRow;->mItem:Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Landroidx/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 4
    :goto_0
    iget-object v0, p0, Landroidx/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 5
    iget-object v0, p0, Landroidx/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/DetailsOverviewRow$Listener;

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Landroidx/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0, p0}, Landroidx/leanback/widget/DetailsOverviewRow$Listener;->onItemChanged(Landroidx/leanback/widget/DetailsOverviewRow;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
