.class Landroidx/leanback/app/DetailsSupportFragment$4;
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
    .locals 0

    iput-object p1, p0, Landroidx/leanback/app/DetailsSupportFragment$4;->this$0:Landroidx/leanback/app/DetailsSupportFragment;

    const-string p1, "STATE_ENTER_TRANSITION_PENDING"

    invoke-direct {p0, p1}, Landroidx/leanback/util/StateMachine$State;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment$4;->this$0:Landroidx/leanback/app/DetailsSupportFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Landroidx/leanback/transition/TransitionHelper;->getEnterTransition(Landroid/view/Window;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/leanback/app/DetailsSupportFragment$4;->this$0:Landroidx/leanback/app/DetailsSupportFragment;

    iget-object v1, v1, Landroidx/leanback/app/DetailsSupportFragment;->mEnterTransitionListener:Landroidx/leanback/transition/TransitionListener;

    invoke-static {v0, v1}, Landroidx/leanback/transition/TransitionHelper;->addTransitionListener(Ljava/lang/Object;Landroidx/leanback/transition/TransitionListener;)V

    return-void
.end method
