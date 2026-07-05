.class Landroidx/leanback/app/BaseFragment$7;
.super Landroidx/leanback/transition/TransitionListener;
.source "BaseFragment.java"


# instance fields
.field public final synthetic this$0:Landroidx/leanback/app/BaseFragment;


# direct methods
.method public constructor <init>(Landroidx/leanback/app/BaseFragment;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/app/BaseFragment$7;->this$0:Landroidx/leanback/app/BaseFragment;

    invoke-direct {p0}, Landroidx/leanback/transition/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/leanback/app/BaseFragment$7;->this$0:Landroidx/leanback/app/BaseFragment;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/leanback/app/BaseFragment;->mEntranceTransition:Ljava/lang/Object;

    .line 2
    iget-object v0, p1, Landroidx/leanback/app/BaseFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object p1, p1, Landroidx/leanback/app/BaseFragment;->EVT_ENTRANCE_END:Landroidx/leanback/util/StateMachine$Event;

    invoke-virtual {v0, p1}, Landroidx/leanback/util/StateMachine;->fireEvent(Landroidx/leanback/util/StateMachine$Event;)V

    return-void
.end method
