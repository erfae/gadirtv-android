.class Landroidx/leanback/app/DetailsFragment$2;
.super Landroidx/leanback/util/StateMachine$State;
.source "DetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/DetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/leanback/app/DetailsFragment;


# direct methods
.method public constructor <init>(Landroidx/leanback/app/DetailsFragment;)V
    .locals 1

    iput-object p1, p0, Landroidx/leanback/app/DetailsFragment$2;->this$0:Landroidx/leanback/app/DetailsFragment;

    const-string p1, "STATE_SWITCH_TO_VIDEO_IN_ON_CREATE"

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroidx/leanback/util/StateMachine$State;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/DetailsFragment$2;->this$0:Landroidx/leanback/app/DetailsFragment;

    .line 2
    iget-object v1, v0, Landroidx/leanback/app/DetailsFragment;->mDetailsBackgroundController:Landroidx/leanback/app/DetailsFragmentBackgroundController;

    .line 3
    iget-object v2, v1, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mVideoHelper:Landroidx/leanback/app/DetailsBackgroundVideoHelper;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v3}, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->crossFadeBackgroundToVideo(ZZ)V

    .line 4
    iput-boolean v3, v1, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mInitialControlVisible:Z

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroidx/leanback/app/BrandedFragment;->showTitle(Z)V

    .line 6
    iput-boolean v3, v0, Landroidx/leanback/app/DetailsFragment;->mPendingFocusOnVideo:Z

    .line 7
    invoke-virtual {v0}, Landroidx/leanback/app/DetailsFragment;->slideOutGridView()V

    return-void
.end method
