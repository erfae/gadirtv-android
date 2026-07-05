.class Landroidx/leanback/widget/DetailsOverviewSharedElementHelper$2;
.super Ljava/lang/Object;
.source "DetailsOverviewSharedElementHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper$2;->this$0:Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper$2;->this$0:Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;

    iget-object v1, v0, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v1, v1, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mOverviewFrame:Landroid/widget/FrameLayout;

    iget-object v0, v0, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;->mSharedElementName:Ljava/lang/String;

    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper$2;->this$0:Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;

    iget-object v0, v0, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;->mActivityToRunTransition:Landroid/app/Activity;

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroidx/leanback/transition/TransitionHelper;->getSharedElementEnterTransition(Landroid/view/Window;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v1, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper$2$1;

    invoke-direct {v1, p0}, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper$2$1;-><init>(Landroidx/leanback/widget/DetailsOverviewSharedElementHelper$2;)V

    invoke-static {v0, v1}, Landroidx/leanback/transition/TransitionHelper;->addTransitionListener(Ljava/lang/Object;Landroidx/leanback/transition/TransitionListener;)V

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper$2;->this$0:Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;

    .line 7
    iget-boolean v1, v0, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;->mStartedPostpone:Z

    if-nez v1, :cond_1

    .line 8
    iget-object v1, v0, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;->mActivityToRunTransition:Landroid/app/Activity;

    invoke-static {v1}, Landroidx/core/app/ActivityCompat;->startPostponedEnterTransition(Landroid/app/Activity;)V

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;->mStartedPostpone:Z

    :cond_1
    return-void
.end method
