.class Landroidx/leanback/app/DetailsSupportFragment$7;
.super Landroidx/leanback/transition/TransitionListener;
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

    iput-object p1, p0, Landroidx/leanback/app/DetailsSupportFragment$7;->this$0:Landroidx/leanback/app/DetailsSupportFragment;

    invoke-direct {p0}, Landroidx/leanback/transition/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Landroidx/leanback/app/DetailsSupportFragment$7;->this$0:Landroidx/leanback/app/DetailsSupportFragment;

    iget-object v0, p1, Landroidx/leanback/app/BaseSupportFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object p1, p1, Landroidx/leanback/app/DetailsSupportFragment;->EVT_ENTER_TRANSIITON_DONE:Landroidx/leanback/util/StateMachine$Event;

    invoke-virtual {v0, p1}, Landroidx/leanback/util/StateMachine;->fireEvent(Landroidx/leanback/util/StateMachine$Event;)V

    return-void
.end method

.method public onTransitionEnd(Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Landroidx/leanback/app/DetailsSupportFragment$7;->this$0:Landroidx/leanback/app/DetailsSupportFragment;

    iget-object v0, p1, Landroidx/leanback/app/BaseSupportFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object p1, p1, Landroidx/leanback/app/DetailsSupportFragment;->EVT_ENTER_TRANSIITON_DONE:Landroidx/leanback/util/StateMachine$Event;

    invoke-virtual {v0, p1}, Landroidx/leanback/util/StateMachine;->fireEvent(Landroidx/leanback/util/StateMachine$Event;)V

    return-void
.end method

.method public onTransitionStart(Ljava/lang/Object;)V
    .locals 0

    iget-object p1, p0, Landroidx/leanback/app/DetailsSupportFragment$7;->this$0:Landroidx/leanback/app/DetailsSupportFragment;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
