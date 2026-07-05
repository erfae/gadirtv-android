.class Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder$2;
.super Ljava/lang/Object;
.source "AbstractDetailsDescriptionPresenter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->addPreDrawListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder$2;->this$0:Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder$2;->this$0:Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;

    iget-object v0, v0, Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder$2;->this$0:Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;

    iget-object v0, v0, Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mSubtitle:Landroid/widget/TextView;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v3, p0, Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder$2;->this$0:Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;

    iget-object v3, v3, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-le v0, v3, :cond_0

    iget-object v0, p0, Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder$2;->this$0:Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;

    iget-object v0, v0, Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitle:Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder$2;->this$0:Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;

    iget-object v0, v0, Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    return v1

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder$2;->this$0:Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;

    iget-object v0, v0, Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 6
    iget-object v0, p0, Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder$2;->this$0:Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;

    iget v0, v0, Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mBodyMinLines:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder$2;->this$0:Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;

    iget v0, v0, Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mBodyMaxLines:I

    .line 7
    :goto_0
    iget-object v3, p0, Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder$2;->this$0:Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;

    iget-object v3, v3, Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mBody:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMaxLines()I

    move-result v3

    if-eq v3, v0, :cond_2

    .line 8
    iget-object v2, p0, Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder$2;->this$0:Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;

    iget-object v2, v2, Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mBody:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    return v1

    .line 9
    :cond_2
    iget-object v0, p0, Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder$2;->this$0:Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;

    invoke-virtual {v0}, Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->removePreDrawListener()V

    return v2
.end method
