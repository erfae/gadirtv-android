.class Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;
.super Landroidx/leanback/widget/Presenter$ViewHolder;
.source "ControlBarPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/ControlBarPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public mAdapter:Landroidx/leanback/widget/ObjectAdapter;

.field public mControlBar:Landroidx/leanback/widget/ControlBar;

.field public mControlsContainer:Landroid/view/View;

.field public mData:Landroidx/leanback/widget/ControlBarPresenter$BoundData;

.field public mDataObserver:Landroidx/leanback/widget/ObjectAdapter$DataObserver;

.field public mPresenter:Landroidx/leanback/widget/Presenter;

.field public mViewHolders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/leanback/widget/Presenter$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Landroidx/leanback/widget/ControlBarPresenter;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/ControlBarPresenter;Landroid/view/View;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;->this$0:Landroidx/leanback/widget/ControlBarPresenter;

    .line 2
    invoke-direct {p0, p2}, Landroidx/leanback/widget/Presenter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;->mViewHolders:Landroid/util/SparseArray;

    .line 4
    sget v0, Landroidx/leanback/R$id;->controls_container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;->mControlsContainer:Landroid/view/View;

    .line 5
    sget v0, Landroidx/leanback/R$id;->control_bar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/ControlBar;

    iput-object p2, p0, Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;->mControlBar:Landroidx/leanback/widget/ControlBar;

    if-eqz p2, :cond_0

    .line 6
    iget-boolean p1, p1, Landroidx/leanback/widget/ControlBarPresenter;->mDefaultFocusToMiddle:Z

    .line 7
    iput-boolean p1, p2, Landroidx/leanback/widget/ControlBar;->mDefaultFocusToMiddle:Z

    .line 8
    new-instance p1, Landroidx/leanback/widget/ControlBarPresenter$ViewHolder$1;

    invoke-direct {p1, p0}, Landroidx/leanback/widget/ControlBarPresenter$ViewHolder$1;-><init>(Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;)V

    invoke-virtual {p2, p1}, Landroidx/leanback/widget/ControlBar;->setOnChildFocusedListener(Landroidx/leanback/widget/ControlBar$OnChildFocusedListener;)V

    .line 9
    new-instance p1, Landroidx/leanback/widget/ControlBarPresenter$ViewHolder$2;

    invoke-direct {p1, p0}, Landroidx/leanback/widget/ControlBarPresenter$ViewHolder$2;-><init>(Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;)V

    iput-object p1, p0, Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;->mDataObserver:Landroidx/leanback/widget/ObjectAdapter$DataObserver;

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Couldn\'t find control_bar"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private bindControlToAction(ILandroidx/leanback/widget/ObjectAdapter;Landroidx/leanback/widget/Presenter;)V
    .locals 2

    .line 2
    iget-object v0, p0, Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;->mViewHolders:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/Presenter$ViewHolder;

    .line 3
    invoke-virtual {p2, p1}, Landroidx/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;->mControlBar:Landroidx/leanback/widget/ControlBar;

    invoke-virtual {p3, v0}, Landroidx/leanback/widget/Presenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/Presenter$ViewHolder;

    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;->mViewHolders:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    new-instance v1, Landroidx/leanback/widget/ControlBarPresenter$ViewHolder$3;

    invoke-direct {v1, p0, p1, v0}, Landroidx/leanback/widget/ControlBarPresenter$ViewHolder$3;-><init>(Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;ILandroidx/leanback/widget/Presenter$ViewHolder;)V

    invoke-virtual {p3, v0, v1}, Landroidx/leanback/widget/Presenter;->setOnClickListener(Landroidx/leanback/widget/Presenter$ViewHolder;Landroid/view/View$OnClickListener;)V

    .line 7
    :cond_0
    iget-object p1, v0, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_1

    .line 8
    iget-object p1, p0, Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;->mControlBar:Landroidx/leanback/widget/ControlBar;

    iget-object v1, v0, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 9
    :cond_1
    invoke-virtual {p3, v0, p2}, Landroidx/leanback/widget/Presenter;->onBindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bindControlToAction(ILandroidx/leanback/widget/Presenter;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;->getDisplayedAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;->bindControlToAction(ILandroidx/leanback/widget/ObjectAdapter;Landroidx/leanback/widget/Presenter;)V

    return-void
.end method

.method public getChildMarginFromCenter(Landroid/content/Context;I)I
    .locals 1

    iget-object p2, p0, Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;->this$0:Landroidx/leanback/widget/ControlBarPresenter;

    invoke-virtual {p2, p1}, Landroidx/leanback/widget/ControlBarPresenter;->getChildMarginDefault(Landroid/content/Context;)I

    move-result p2

    iget-object v0, p0, Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;->this$0:Landroidx/leanback/widget/ControlBarPresenter;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ControlBarPresenter;->getControlIconWidth(Landroid/content/Context;)I

    move-result p1

    add-int/2addr p2, p1

    return p2
.end method

.method public getDisplayedAdapter()Landroidx/leanback/widget/ObjectAdapter;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;->mAdapter:Landroidx/leanback/widget/ObjectAdapter;

    return-object v0
.end method

.method public final showControls(Landroidx/leanback/widget/Presenter;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;->getDisplayedAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroidx/leanback/widget/ObjectAdapter;->size()I

    move-result v2

    .line 3
    :goto_0
    iget-object v3, p0, Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;->mControlBar:Landroidx/leanback/widget/ControlBar;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    if-lez v2, :cond_1

    .line 4
    iget-object v4, p0, Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;->mControlBar:Landroidx/leanback/widget/ControlBar;

    .line 5
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    if-lt v3, v2, :cond_1

    .line 6
    iget-object v3, p0, Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;->mControlBar:Landroidx/leanback/widget/ControlBar;

    invoke-virtual {v0}, Landroidx/leanback/widget/ObjectAdapter;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 7
    :cond_1
    iget-object v3, p0, Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;->mControlBar:Landroidx/leanback/widget/ControlBar;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-lt v3, v2, :cond_2

    .line 8
    iget-object v4, p0, Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;->mControlBar:Landroidx/leanback/widget/ControlBar;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v1, v2, :cond_3

    const/4 v3, 0x7

    if-ge v1, v3, :cond_3

    .line 9
    invoke-direct {p0, v1, v0, p1}, Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;->bindControlToAction(ILandroidx/leanback/widget/ObjectAdapter;Landroidx/leanback/widget/Presenter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 10
    :cond_3
    iget-object p1, p0, Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;->mControlBar:Landroidx/leanback/widget/ControlBar;

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Landroidx/leanback/widget/ControlBarPresenter$ViewHolder;->getChildMarginFromCenter(Landroid/content/Context;I)I

    move-result v0

    .line 12
    invoke-virtual {p1, v0}, Landroidx/leanback/widget/ControlBar;->setChildMarginFromCenter(I)V

    return-void
.end method
