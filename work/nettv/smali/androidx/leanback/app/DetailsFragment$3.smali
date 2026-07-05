.class Landroidx/leanback/app/DetailsFragment$3;
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

    iput-object p1, p0, Landroidx/leanback/app/DetailsFragment$3;->this$0:Landroidx/leanback/app/DetailsFragment;

    const-string p1, "STATE_ENTER_TRANSITION_CANCEL"

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroidx/leanback/util/StateMachine$State;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/DetailsFragment$3;->this$0:Landroidx/leanback/app/DetailsFragment;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Landroidx/leanback/app/DetailsFragment$3;->this$0:Landroidx/leanback/app/DetailsFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/leanback/app/DetailsFragment$3;->this$0:Landroidx/leanback/app/DetailsFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroidx/leanback/transition/TransitionHelper;->getReturnTransition(Landroid/view/Window;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    invoke-static {v0}, Landroidx/leanback/transition/TransitionHelper;->getSharedElementReturnTransition(Landroid/view/Window;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    .line 6
    invoke-static {v0, v3}, Landroidx/leanback/transition/TransitionHelper;->setEnterTransition(Landroid/view/Window;Ljava/lang/Object;)V

    .line 7
    invoke-static {v0, v3}, Landroidx/leanback/transition/TransitionHelper;->setSharedElementEnterTransition(Landroid/view/Window;Ljava/lang/Object;)V

    .line 8
    invoke-static {v0, v1}, Landroidx/leanback/transition/TransitionHelper;->setReturnTransition(Landroid/view/Window;Ljava/lang/Object;)V

    .line 9
    invoke-static {v0, v2}, Landroidx/leanback/transition/TransitionHelper;->setSharedElementReturnTransition(Landroid/view/Window;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
