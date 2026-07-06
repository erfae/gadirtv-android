.class public Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "GuidedActionsStylist.java"

# interfaces
.implements Landroidx/leanback/widget/FacetProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/GuidedActionsStylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public mAction:Landroidx/leanback/widget/GuidedAction;

.field public mActivatorView:Landroid/view/View;

.field public mCheckmarkView:Landroid/widget/ImageView;

.field public mChevronView:Landroid/widget/ImageView;

.field private mContentView:Landroid/view/View;

.field public mDescriptionView:Landroid/widget/TextView;

.field public mEditingMode:I

.field public mIconView:Landroid/widget/ImageView;

.field private final mIsSubAction:Z

.field public mPressAnimator:Landroid/animation/Animator;

.field public mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;-><init>(Landroid/view/View;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    .line 4
    new-instance v0, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder$1;

    invoke-direct {v0, p0}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder$1;-><init>(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;)V

    .line 5
    sget v1, Landroidx/leanback/R$id;->guidedactions_item_content:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mContentView:Landroid/view/View;

    .line 6
    sget v1, Landroidx/leanback/R$id;->guidedactions_item_title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    .line 7
    sget v1, Landroidx/leanback/R$id;->guidedactions_activator_item:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    .line 8
    sget v1, Landroidx/leanback/R$id;->guidedactions_item_description:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    .line 9
    sget v1, Landroidx/leanback/R$id;->guidedactions_item_icon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mIconView:Landroid/widget/ImageView;

    .line 10
    sget v1, Landroidx/leanback/R$id;->guidedactions_item_checkmark:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mCheckmarkView:Landroid/widget/ImageView;

    .line 11
    sget v1, Landroidx/leanback/R$id;->guidedactions_item_chevron:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mChevronView:Landroid/widget/ImageView;

    .line 12
    iput-boolean p2, p0, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mIsSubAction:Z

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method


# virtual methods
.method public getAction()Landroidx/leanback/widget/GuidedAction;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mAction:Landroidx/leanback/widget/GuidedAction;

    return-object v0
.end method

.method public getCheckmarkView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mCheckmarkView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getChevronView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mChevronView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getDescriptionView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getEditableDescriptionView()Landroid/widget/EditText;
    .locals 2

    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/EditText;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getEditableTitleView()Landroid/widget/EditText;
    .locals 2

    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/EditText;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getEditingView()Landroid/view/View;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    return-object v0

    .line 3
    :cond_1
    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    return-object v0

    .line 4
    :cond_2
    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getFacet(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    const-class v0, Landroidx/leanback/widget/ItemAlignmentFacet;

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Landroidx/leanback/widget/GuidedActionsStylist;->sGuidedActionItemAlignFacet:Landroidx/leanback/widget/ItemAlignmentFacet;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getIconView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public isInEditing()Z
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInEditingActivatorView()Z
    .locals 2

    iget v0, p0, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInEditingDescription()Z
    .locals 2

    iget v0, p0, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInEditingText()Z
    .locals 3

    iget v0, p0, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isInEditingTitle()Z
    .locals 2

    iget v0, p0, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSubAction()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mIsSubAction:Z

    return v0
.end method

.method public final press(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mPressAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mPressAnimator:Landroid/animation/Animator;

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    sget p1, Landroidx/leanback/R$attr;->guidedActionPressedAnimation:I

    goto :goto_0

    :cond_1
    sget p1, Landroidx/leanback/R$attr;->guidedActionUnpressedAnimation:I

    .line 5
    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 6
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    iget p1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v0, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mPressAnimator:Landroid/animation/Animator;

    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mPressAnimator:Landroid/animation/Animator;

    new-instance v0, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder$2;

    invoke-direct {v0, p0}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder$2;-><init>(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 11
    iget-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->mPressAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_2
    return-void
.end method
