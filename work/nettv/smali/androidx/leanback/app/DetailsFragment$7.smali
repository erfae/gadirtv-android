.class Landroidx/leanback/app/DetailsFragment$7;
.super Landroidx/leanback/transition/TransitionListener;
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
    .locals 0

    iput-object p1, p0, Landroidx/leanback/app/DetailsFragment$7;->this$0:Landroidx/leanback/app/DetailsFragment;

    invoke-direct {p0}, Landroidx/leanback/transition/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Landroidx/leanback/app/DetailsFragment$7;->this$0:Landroidx/leanback/app/DetailsFragment;

    iget-object v0, p1, Landroidx/leanback/app/BaseFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object p1, p1, Landroidx/leanback/app/DetailsFragment;->EVT_ENTER_TRANSIITON_DONE:Landroidx/leanback/util/StateMachine$Event;

    invoke-virtual {v0, p1}, Landroidx/leanback/util/StateMachine;->fireEvent(Landroidx/leanback/util/StateMachine$Event;)V

    return-void
.end method

.method public onTransitionEnd(Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Landroidx/leanback/app/DetailsFragment$7;->this$0:Landroidx/leanback/app/DetailsFragment;

    iget-object v0, p1, Landroidx/leanback/app/BaseFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object p1, p1, Landroidx/leanback/app/DetailsFragment;->EVT_ENTER_TRANSIITON_DONE:Landroidx/leanback/util/StateMachine$Event;

    invoke-virtual {v0, p1}, Landroidx/leanback/util/StateMachine;->fireEvent(Landroidx/leanback/util/StateMachine$Event;)V

    return-void
.end method

.method public onTransitionStart(Ljava/lang/Object;)V
    .locals 0

    iget-object p1, p0, Landroidx/leanback/app/DetailsFragment$7;->this$0:Landroidx/leanback/app/DetailsFragment;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
