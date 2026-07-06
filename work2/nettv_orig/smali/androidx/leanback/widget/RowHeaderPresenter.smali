.class public Landroidx/leanback/widget/RowHeaderPresenter;
.super Landroidx/leanback/widget/Presenter;
.source "RowHeaderPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;
    }
.end annotation


# instance fields
.field private final mAnimateSelect:Z

.field private final mFontMeasurePaint:Landroid/graphics/Paint;

.field private final mLayoutResourceId:I

.field private mNullItemVisibilityGone:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Landroidx/leanback/R$layout;->lb_row_header:I

    invoke-direct {p0, v0}, Landroidx/leanback/widget/RowHeaderPresenter;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Landroidx/leanback/widget/RowHeaderPresenter;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Landroidx/leanback/widget/Presenter;-><init>()V

    .line 4
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroidx/leanback/widget/RowHeaderPresenter;->mFontMeasurePaint:Landroid/graphics/Paint;

    .line 5
    iput p1, p0, Landroidx/leanback/widget/RowHeaderPresenter;->mLayoutResourceId:I

    .line 6
    iput-boolean p2, p0, Landroidx/leanback/widget/RowHeaderPresenter;->mAnimateSelect:Z

    return-void
.end method


# virtual methods
.method public getSpaceUnderBaseline(Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;)I
    .locals 4

    .line 1
    iget-object v0, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    .line 2
    iget-object p1, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 3
    check-cast p1, Landroid/widget/TextView;

    iget-object v1, p0, Landroidx/leanback/widget/RowHeaderPresenter;->mFontMeasurePaint:Landroid/graphics/Paint;

    .line 4
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 6
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 8
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result p1

    float-to-int p1, p1

    add-int/2addr v0, p1

    :cond_2
    return v0
.end method

.method public isNullItemVisibilityGone()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/leanback/widget/RowHeaderPresenter;->mNullItemVisibilityGone:Z

    return v0
.end method

.method public onBindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object p2, v0

    goto :goto_0

    .line 1
    :cond_0
    check-cast p2, Landroidx/leanback/widget/Row;

    invoke-virtual {p2}, Landroidx/leanback/widget/Row;->getHeaderItem()Landroidx/leanback/widget/HeaderItem;

    move-result-object p2

    .line 2
    :goto_0
    move-object v1, p1

    check-cast v1, Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;

    const/16 v2, 0x8

    if-nez p2, :cond_3

    .line 3
    iget-object p2, v1, Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;->mTitleView:Landroidx/leanback/widget/RowHeaderView;

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :cond_1
    iget-object p2, v1, Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    .line 6
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :cond_2
    iget-object p2, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 8
    iget-boolean p2, p0, Landroidx/leanback/widget/RowHeaderPresenter;->mNullItemVisibilityGone:Z

    if-eqz p2, :cond_7

    .line 9
    iget-object p1, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 10
    :cond_3
    iget-object v0, v1, Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;->mTitleView:Landroidx/leanback/widget/RowHeaderView;

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {p2}, Landroidx/leanback/widget/HeaderItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :cond_4
    iget-object v0, v1, Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 13
    invoke-virtual {p2}, Landroidx/leanback/widget/HeaderItem;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14
    iget-object v0, v1, Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 15
    :cond_5
    iget-object v0, v1, Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 16
    :goto_1
    iget-object v0, v1, Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroidx/leanback/widget/HeaderItem;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    :cond_6
    iget-object v0, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p2}, Landroidx/leanback/widget/HeaderItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 18
    iget-object p1, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/Presenter$ViewHolder;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Landroidx/leanback/widget/RowHeaderPresenter;->mLayoutResourceId:I

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance v0, Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;

    invoke-direct {v0, p1}, Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    iget-boolean p1, p0, Landroidx/leanback/widget/RowHeaderPresenter;->mAnimateSelect:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, v0, p1}, Landroidx/leanback/widget/RowHeaderPresenter;->setSelectLevel(Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;F)V

    :cond_0
    return-object v0
.end method

.method public onUnbindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;)V
    .locals 2

    .line 1
    check-cast p1, Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;

    .line 2
    iget-object v0, p1, Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;->mTitleView:Landroidx/leanback/widget/RowHeaderView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    :cond_0
    iget-object v0, p1, Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :cond_1
    iget-boolean v0, p0, Landroidx/leanback/widget/RowHeaderPresenter;->mAnimateSelect:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Landroidx/leanback/widget/RowHeaderPresenter;->setSelectLevel(Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;F)V

    :cond_2
    return-void
.end method

.method public setNullItemVisibilityGone(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/leanback/widget/RowHeaderPresenter;->mNullItemVisibilityGone:Z

    return-void
.end method

.method public final setSelectLevel(Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;F)V
    .locals 2

    .line 1
    iput p2, p1, Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;->mSelectLevel:F

    .line 2
    iget-boolean v0, p0, Landroidx/leanback/widget/RowHeaderPresenter;->mAnimateSelect:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    iget p1, p1, Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;->mUnselectAlpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float v1, v1, p2

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method
