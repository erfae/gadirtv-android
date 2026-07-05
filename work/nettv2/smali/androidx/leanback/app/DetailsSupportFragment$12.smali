.class Landroidx/leanback/app/DetailsSupportFragment$12;
.super Ljava/lang/Object;
.source "DetailsSupportFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Landroidx/leanback/app/DetailsSupportFragment;


# direct methods
.method public constructor <init>(Landroidx/leanback/app/DetailsSupportFragment;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/app/DetailsSupportFragment$12;->this$0:Landroidx/leanback/app/DetailsSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment$12;->this$0:Landroidx/leanback/app/DetailsSupportFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment$12;->this$0:Landroidx/leanback/app/DetailsSupportFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/DetailsSupportFragment;->switchToVideo()V

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment$12;->this$0:Landroidx/leanback/app/DetailsSupportFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/leanback/app/DetailsSupportFragment;->mPendingFocusOnVideo:Z

    return-void
.end method
