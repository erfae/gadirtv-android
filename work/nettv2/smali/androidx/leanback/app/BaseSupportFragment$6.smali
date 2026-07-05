.class Landroidx/leanback/app/BaseSupportFragment$6;
.super Ljava/lang/Object;
.source "BaseSupportFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic this$0:Landroidx/leanback/app/BaseSupportFragment;

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroidx/leanback/app/BaseSupportFragment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/app/BaseSupportFragment$6;->this$0:Landroidx/leanback/app/BaseSupportFragment;

    iput-object p2, p0, Landroidx/leanback/app/BaseSupportFragment$6;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/BaseSupportFragment$6;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2
    iget-object v0, p0, Landroidx/leanback/app/BaseSupportFragment$6;->this$0:Landroidx/leanback/app/BaseSupportFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/leanback/app/BaseSupportFragment$6;->this$0:Landroidx/leanback/app/BaseSupportFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/leanback/app/BaseSupportFragment$6;->this$0:Landroidx/leanback/app/BaseSupportFragment;

    .line 4
    invoke-virtual {v0}, Landroidx/leanback/app/BaseSupportFragment;->createEntranceTransition()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroidx/leanback/app/BaseSupportFragment;->mEntranceTransition:Ljava/lang/Object;

    if-nez v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v2, Landroidx/leanback/app/BaseSupportFragment$7;

    invoke-direct {v2, v0}, Landroidx/leanback/app/BaseSupportFragment$7;-><init>(Landroidx/leanback/app/BaseSupportFragment;)V

    invoke-static {v1, v2}, Landroidx/leanback/transition/TransitionHelper;->addTransitionListener(Ljava/lang/Object;Landroidx/leanback/transition/TransitionListener;)V

    .line 6
    :goto_0
    iget-object v0, p0, Landroidx/leanback/app/BaseSupportFragment$6;->this$0:Landroidx/leanback/app/BaseSupportFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/BaseSupportFragment;->onEntranceTransitionStart()V

    .line 7
    iget-object v0, p0, Landroidx/leanback/app/BaseSupportFragment$6;->this$0:Landroidx/leanback/app/BaseSupportFragment;

    iget-object v1, v0, Landroidx/leanback/app/BaseSupportFragment;->mEntranceTransition:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v0, v1}, Landroidx/leanback/app/BaseSupportFragment;->runEntranceTransition(Ljava/lang/Object;)V

    goto :goto_1

    .line 9
    :cond_2
    iget-object v1, v0, Landroidx/leanback/app/BaseSupportFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v0, v0, Landroidx/leanback/app/BaseSupportFragment;->EVT_ENTRANCE_END:Landroidx/leanback/util/StateMachine$Event;

    invoke-virtual {v1, v0}, Landroidx/leanback/util/StateMachine;->fireEvent(Landroidx/leanback/util/StateMachine$Event;)V

    :goto_1
    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_2
    const/4 v0, 0x1

    return v0
.end method
