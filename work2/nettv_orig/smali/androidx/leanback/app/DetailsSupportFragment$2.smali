.class Landroidx/leanback/app/DetailsSupportFragment$2;
.super Landroidx/leanback/util/StateMachine$State;
.source "DetailsSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/DetailsSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/leanback/app/DetailsSupportFragment;


# direct methods
.method public constructor <init>(Landroidx/leanback/app/DetailsSupportFragment;)V
    .locals 1

    iput-object p1, p0, Landroidx/leanback/app/DetailsSupportFragment$2;->this$0:Landroidx/leanback/app/DetailsSupportFragment;

    const-string p1, "STATE_SWITCH_TO_VIDEO_IN_ON_CREATE"

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroidx/leanback/util/StateMachine$State;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment$2;->this$0:Landroidx/leanback/app/DetailsSupportFragment;

    .line 2
    iget-object v1, v0, Landroidx/leanback/app/DetailsSupportFragment;->mDetailsBackgroundController:Landroidx/leanback/app/DetailsSupportFragmentBackgroundController;

    .line 3
    iget-object v2, v1, Landroidx/leanback/app/DetailsSupportFragmentBackgroundController;->mVideoHelper:Landroidx/leanback/app/DetailsBackgroundVideoHelper;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v3}, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->crossFadeBackgroundToVideo(ZZ)V

    .line 4
    iput-boolean v3, v1, Landroidx/leanback/app/DetailsSupportFragmentBackgroundController;->mInitialControlVisible:Z

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroidx/leanback/app/BrandedSupportFragment;->showTitle(Z)V

    .line 6
    iput-boolean v3, v0, Landroidx/leanback/app/DetailsSupportFragment;->mPendingFocusOnVideo:Z

    .line 7
    invoke-virtual {v0}, Landroidx/leanback/app/DetailsSupportFragment;->slideOutGridView()V

    return-void
.end method
