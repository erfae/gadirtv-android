.class Landroidx/leanback/app/ProgressBarManager$1;
.super Ljava/lang/Object;
.source "ProgressBarManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/ProgressBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/leanback/app/ProgressBarManager;


# direct methods
.method public constructor <init>(Landroidx/leanback/app/ProgressBarManager;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/app/ProgressBarManager$1;->this$0:Landroidx/leanback/app/ProgressBarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/ProgressBarManager$1;->this$0:Landroidx/leanback/app/ProgressBarManager;

    iget-boolean v1, v0, Landroidx/leanback/app/ProgressBarManager;->mEnableProgressBar:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Landroidx/leanback/app/ProgressBarManager;->mUserProvidedProgressBar:Z

    if-nez v1, :cond_0

    iget-object v2, v0, Landroidx/leanback/app/ProgressBarManager;->rootView:Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v2, v0, Landroidx/leanback/app/ProgressBarManager;->mIsShowing:Z

    if-eqz v2, :cond_2

    .line 3
    iget-object v2, v0, Landroidx/leanback/app/ProgressBarManager;->mProgressBarView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 4
    new-instance v1, Landroid/widget/ProgressBar;

    iget-object v2, p0, Landroidx/leanback/app/ProgressBarManager$1;->this$0:Landroidx/leanback/app/ProgressBarManager;

    iget-object v2, v2, Landroidx/leanback/app/ProgressBarManager;->rootView:Landroid/view/ViewGroup;

    .line 5
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x101007a

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, v0, Landroidx/leanback/app/ProgressBarManager;->mProgressBarView:Landroid/view/View;

    .line 6
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 7
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 8
    iget-object v1, p0, Landroidx/leanback/app/ProgressBarManager$1;->this$0:Landroidx/leanback/app/ProgressBarManager;

    iget-object v2, v1, Landroidx/leanback/app/ProgressBarManager;->rootView:Landroid/view/ViewGroup;

    iget-object v1, v1, Landroidx/leanback/app/ProgressBarManager;->mProgressBarView:Landroid/view/View;

    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 9
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method
