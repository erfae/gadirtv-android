.class public Landroidx/leanback/app/DetailsSupportFragment;
.super Landroidx/leanback/app/BaseSupportFragment;
.source "DetailsSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/app/DetailsSupportFragment$SetSelectionRunnable;,
        Landroidx/leanback/app/DetailsSupportFragment$WaitEnterTransitionTimeout;
    }
.end annotation


# instance fields
.field public final EVT_DETAILS_ROW_LOADED:Landroidx/leanback/util/StateMachine$Event;

.field public final EVT_ENTER_TRANSIITON_DONE:Landroidx/leanback/util/StateMachine$Event;

.field public final EVT_NO_ENTER_TRANSITION:Landroidx/leanback/util/StateMachine$Event;

.field public final EVT_ONSTART:Landroidx/leanback/util/StateMachine$Event;

.field public final EVT_SWITCH_TO_VIDEO:Landroidx/leanback/util/StateMachine$Event;

.field public final STATE_ENTER_TRANSITION_ADDLISTENER:Landroidx/leanback/util/StateMachine$State;

.field public final STATE_ENTER_TRANSITION_CANCEL:Landroidx/leanback/util/StateMachine$State;

.field public final STATE_ENTER_TRANSITION_COMPLETE:Landroidx/leanback/util/StateMachine$State;

.field public final STATE_ENTER_TRANSITION_INIT:Landroidx/leanback/util/StateMachine$State;

.field public final STATE_ENTER_TRANSITION_PENDING:Landroidx/leanback/util/StateMachine$State;

.field public final STATE_ON_SAFE_START:Landroidx/leanback/util/StateMachine$State;

.field public final STATE_SET_ENTRANCE_START_STATE:Landroidx/leanback/util/StateMachine$State;

.field public final STATE_SWITCH_TO_VIDEO_IN_ON_CREATE:Landroidx/leanback/util/StateMachine$State;

.field public mAdapter:Landroidx/leanback/widget/ObjectAdapter;

.field public mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field public mBackgroundView:Landroid/view/View;

.field public mContainerListAlignTop:I

.field public mDetailsBackgroundController:Landroidx/leanback/app/DetailsSupportFragmentBackgroundController;

.field public mDetailsParallax:Landroidx/leanback/widget/DetailsParallax;

.field public mEnterTransitionListener:Landroidx/leanback/transition/TransitionListener;

.field public mExternalOnItemViewSelectedListener:Landroidx/leanback/widget/BaseOnItemViewSelectedListener;

.field public mOnItemViewClickedListener:Landroidx/leanback/widget/BaseOnItemViewClickedListener;

.field public final mOnItemViewSelectedListener:Landroidx/leanback/widget/BaseOnItemViewSelectedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/leanback/widget/BaseOnItemViewSelectedListener<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public mPendingFocusOnVideo:Z

.field public mReturnTransitionListener:Landroidx/leanback/transition/TransitionListener;

.field public mRootView:Landroidx/leanback/widget/BrowseFrameLayout;

.field public mRowsSupportFragment:Landroidx/leanback/app/RowsSupportFragment;

.field public mSceneAfterEntranceTransition:Ljava/lang/Object;

.field public final mSetSelectionRunnable:Landroidx/leanback/app/DetailsSupportFragment$SetSelectionRunnable;

.field public mVideoSupportFragment:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroidx/leanback/app/BaseSupportFragment;-><init>()V

    .line 2
    new-instance v0, Landroidx/leanback/app/DetailsSupportFragment$1;

    invoke-direct {v0, p0}, Landroidx/leanback/app/DetailsSupportFragment$1;-><init>(Landroidx/leanback/app/DetailsSupportFragment;)V

    iput-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment;->STATE_SET_ENTRANCE_START_STATE:Landroidx/leanback/util/StateMachine$State;

    .line 3
    new-instance v0, Landroidx/leanback/util/StateMachine$State;

    const-string v1, "STATE_ENTER_TRANSIITON_INIT"

    invoke-direct {v0, v1}, Landroidx/leanback/util/StateMachine$State;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_INIT:Landroidx/leanback/util/StateMachine$State;

    .line 4
    new-instance v0, Landroidx/leanback/app/DetailsSupportFragment$2;

    invoke-direct {v0, p0}, Landroidx/leanback/app/DetailsSupportFragment$2;-><init>(Landroidx/leanback/app/DetailsSupportFragment;)V

    iput-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment;->STATE_SWITCH_TO_VIDEO_IN_ON_CREATE:Landroidx/leanback/util/StateMachine$State;

    .line 5
    new-instance v0, Landroidx/leanback/app/DetailsSupportFragment$3;

    invoke-direct {v0, p0}, Landroidx/leanback/app/DetailsSupportFragment$3;-><init>(Landroidx/leanback/app/DetailsSupportFragment;)V

    iput-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_CANCEL:Landroidx/leanback/util/StateMachine$State;

    .line 6
    new-instance v0, Landroidx/leanback/util/StateMachine$State;

    const-string v1, "STATE_ENTER_TRANSIITON_COMPLETE"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/leanback/util/StateMachine$State;-><init>(Ljava/lang/String;ZZ)V

    iput-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_COMPLETE:Landroidx/leanback/util/StateMachine$State;

    .line 7
    new-instance v0, Landroidx/leanback/app/DetailsSupportFragment$4;

    invoke-direct {v0, p0}, Landroidx/leanback/app/DetailsSupportFragment$4;-><init>(Landroidx/leanback/app/DetailsSupportFragment;)V

    iput-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_ADDLISTENER:Landroidx/leanback/util/StateMachine$State;

    .line 8
    new-instance v0, Landroidx/leanback/app/DetailsSupportFragment$5;

    invoke-direct {v0, p0}, Landroidx/leanback/app/DetailsSupportFragment$5;-><init>(Landroidx/leanback/app/DetailsSupportFragment;)V

    iput-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_PENDING:Landroidx/leanback/util/StateMachine$State;

    .line 9
    new-instance v0, Landroidx/leanback/app/DetailsSupportFragment$6;

    invoke-direct {v0, p0}, Landroidx/leanback/app/DetailsSupportFragment$6;-><init>(Landroidx/leanback/app/DetailsSupportFragment;)V

    iput-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment;->STATE_ON_SAFE_START:Landroidx/leanback/util/StateMachine$State;

    .line 10
    new-instance v0, Landroidx/leanback/util/StateMachine$Event;

    const-string v1, "onStart"

    invoke-direct {v0, v1}, Landroidx/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment;->EVT_ONSTART:Landroidx/leanback/util/StateMachine$Event;

    .line 11
    new-instance v0, Landroidx/leanback/util/StateMachine$Event;

    const-string v1, "EVT_NO_ENTER_TRANSITION"

    invoke-direct {v0, v1}, Landroidx/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment;->EVT_NO_ENTER_TRANSITION:Landroidx/leanback/util/StateMachine$Event;

    .line 12
    new-instance v0, Landroidx/leanback/util/StateMachine$Event;

    const-string v1, "onFirstRowLoaded"

    invoke-direct {v0, v1}, Landroidx/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment;->EVT_DETAILS_ROW_LOADED:Landroidx/leanback/util/StateMachine$Event;

    .line 13
    new-instance v0, Landroidx/leanback/util/StateMachine$Event;

    const-string v1, "onEnterTransitionDone"

    invoke-direct {v0, v1}, Landroidx/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment;->EVT_ENTER_TRANSIITON_DONE:Landroidx/leanback/util/StateMachine$Event;

    .line 14
    new-instance v0, Landroidx/leanback/util/StateMachine$Event;

    const-string/jumbo v1, "switchToVideo"

    invoke-direct {v0, v1}, Landroidx/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment;->EVT_SWITCH_TO_VIDEO:Landroidx/leanback/util/StateMachine$Event;

    .line 15
    new-instance v0, Landroidx/leanback/app/DetailsSupportFragment$7;

    invoke-direct {v0, p0}, Landroidx/leanback/app/DetailsSupportFragment$7;-><init>(Landroidx/leanback/app/DetailsSupportFragment;)V

    iput-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment;->mEnterTransitionListener:Landroidx/leanback/transition/TransitionListener;

    .line 16
    new-instance v0, Landroidx/leanback/app/DetailsSupportFragment$8;

    invoke-direct {v0, p0}, Landroidx/leanback/app/DetailsSupportFragment$8;-><init>(Landroidx/leanback/app/DetailsSupportFragment;)V

    iput-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment;->mReturnTransitionListener:Landroidx/leanback/transition/TransitionListener;

    .line 17
    iput-boolean v3, p0, Landroidx/leanback/app/DetailsSupportFragment;->mPendingFocusOnVideo:Z

    .line 18
    new-instance v0, Landroidx/leanback/app/DetailsSupportFragment$SetSelectionRunnable;

    invoke-direct {v0, p0}, Landroidx/leanback/app/DetailsSupportFragment$SetSelectionRunnable;-><init>(Landroidx/leanback/app/DetailsSupportFragment;)V

    iput-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment;->mSetSelectionRunnable:Landroidx/leanback/app/DetailsSupportFragment$SetSelectionRunnable;

    .line 19
    new-instance v0, Landroidx/leanback/app/DetailsSupportFragment$9;

    invoke-direct {v0, p0}, Landroidx/leanback/app/DetailsSupportFragment$9;-><init>(Landroidx/leanback/app/DetailsSupportFragment;)V

    iput-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment;->mOnItemViewSelectedListener:Landroidx/leanback/widget/BaseOnItemViewSelectedListener;

    return-void
.end method

.method private setupChildFragmentLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroidx/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/BaseRowSupportFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    .line 2
    iget v1, p0, Landroidx/leanback/app/DetailsSupportFragment;->mContainerListAlignTop:I

    neg-int v1, v1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/BaseGridView;->setItemAlignmentOffset(I)V

    const/high16 v1, -0x40800000    # -1.0f

    .line 3
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/BaseGridView;->setItemAlignmentOffsetPercent(F)V

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v2}, Landroidx/leanback/widget/BaseGridView;->setWindowAlignmentOffset(I)V

    .line 5
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/BaseGridView;->setWindowAlignmentOffsetPercent(F)V

    .line 6
    invoke-virtual {v0, v2}, Landroidx/leanback/widget/BaseGridView;->setWindowAlignment(I)V

    return-void
.end method


# virtual methods
.method public final createEntranceTransition()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroidx/leanback/R$transition;->lb_details_enter_transition:I

    invoke-static {v0, v1}, Landroidx/leanback/transition/TransitionHelper;->loadTransition(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final createStateMachineStates()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/leanback/app/BaseSupportFragment;->createStateMachineStates()V

    .line 2
    iget-object v0, p0, Landroidx/leanback/app/BaseSupportFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/DetailsSupportFragment;->STATE_SET_ENTRANCE_START_STATE:Landroidx/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroidx/leanback/util/StateMachine;->addState(Landroidx/leanback/util/StateMachine$State;)V

    .line 3
    iget-object v0, p0, Landroidx/leanback/app/BaseSupportFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/DetailsSupportFragment;->STATE_ON_SAFE_START:Landroidx/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroidx/leanback/util/StateMachine;->addState(Landroidx/leanback/util/StateMachine$State;)V

    .line 4
    iget-object v0, p0, Landroidx/leanback/app/BaseSupportFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/DetailsSupportFragment;->STATE_SWITCH_TO_VIDEO_IN_ON_CREATE:Landroidx/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroidx/leanback/util/StateMachine;->addState(Landroidx/leanback/util/StateMachine$State;)V

    .line 5
    iget-object v0, p0, Landroidx/leanback/app/BaseSupportFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_INIT:Landroidx/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroidx/leanback/util/StateMachine;->addState(Landroidx/leanback/util/StateMachine$State;)V

    .line 6
    iget-object v0, p0, Landroidx/leanback/app/BaseSupportFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_ADDLISTENER:Landroidx/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroidx/leanback/util/StateMachine;->addState(Landroidx/leanback/util/StateMachine$State;)V

    .line 7
    iget-object v0, p0, Landroidx/leanback/app/BaseSupportFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_CANCEL:Landroidx/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroidx/leanback/util/StateMachine;->addState(Landroidx/leanback/util/StateMachine$State;)V

    .line 8
    iget-object v0, p0, Landroidx/leanback/app/BaseSupportFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_PENDING:Landroidx/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroidx/leanback/util/StateMachine;->addState(Landroidx/leanback/util/StateMachine$State;)V

    .line 9
    iget-object v0, p0, Landroidx/leanback/app/BaseSupportFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_COMPLETE:Landroidx/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroidx/leanback/util/StateMachine;->addState(Landroidx/leanback/util/StateMachine$State;)V

    return-void
.end method

.method public final createStateMachineTransitions()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/leanback/app/BaseSupportFragment;->createStateMachineTransitions()V

    .line 2
    iget-object v0, p0, Landroidx/leanback/app/BaseSupportFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/BaseSupportFragment;->STATE_START:Landroidx/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroidx/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_INIT:Landroidx/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroidx/leanback/app/BaseSupportFragment;->EVT_ON_CREATE:Landroidx/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/leanback/util/StateMachine;->addTransition(Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$Event;)V

    .line 3
    iget-object v0, p0, Landroidx/leanback/app/BaseSupportFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_INIT:Landroidx/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroidx/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_COMPLETE:Landroidx/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroidx/leanback/app/BaseSupportFragment;->COND_TRANSITION_NOT_SUPPORTED:Landroidx/leanback/util/StateMachine$Condition;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/leanback/util/StateMachine;->addTransition(Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$Condition;)V

    .line 4
    iget-object v0, p0, Landroidx/leanback/app/BaseSupportFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_INIT:Landroidx/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroidx/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_COMPLETE:Landroidx/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroidx/leanback/app/DetailsSupportFragment;->EVT_NO_ENTER_TRANSITION:Landroidx/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/leanback/util/StateMachine;->addTransition(Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$Event;)V

    .line 5
    iget-object v0, p0, Landroidx/leanback/app/BaseSupportFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_INIT:Landroidx/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroidx/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_CANCEL:Landroidx/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroidx/leanback/app/DetailsSupportFragment;->EVT_SWITCH_TO_VIDEO:Landroidx/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/leanback/util/StateMachine;->addTransition(Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$Event;)V

    .line 6
    iget-object v0, p0, Landroidx/leanback/app/BaseSupportFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_CANCEL:Landroidx/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroidx/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_COMPLETE:Landroidx/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1, v2}, Landroidx/leanback/util/StateMachine;->addTransition(Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$State;)V

    .line 7
    iget-object v0, p0, Landroidx/leanback/app/BaseSupportFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_INIT:Landroidx/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroidx/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_ADDLISTENER:Landroidx/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroidx/leanback/app/BaseSupportFragment;->EVT_ON_CREATEVIEW:Landroidx/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/leanback/util/StateMachine;->addTransition(Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$Event;)V

    .line 8
    iget-object v0, p0, Landroidx/leanback/app/BaseSupportFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_ADDLISTENER:Landroidx/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroidx/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_COMPLETE:Landroidx/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroidx/leanback/app/DetailsSupportFragment;->EVT_ENTER_TRANSIITON_DONE:Landroidx/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/leanback/util/StateMachine;->addTransition(Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$Event;)V

    .line 9
    iget-object v0, p0, Landroidx/leanback/app/BaseSupportFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_ADDLISTENER:Landroidx/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroidx/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_PENDING:Landroidx/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroidx/leanback/app/DetailsSupportFragment;->EVT_DETAILS_ROW_LOADED:Landroidx/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/leanback/util/StateMachine;->addTransition(Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$Event;)V

    .line 10
    iget-object v0, p0, Landroidx/leanback/app/BaseSupportFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_PENDING:Landroidx/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroidx/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_COMPLETE:Landroidx/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroidx/leanback/app/DetailsSupportFragment;->EVT_ENTER_TRANSIITON_DONE:Landroidx/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/leanback/util/StateMachine;->addTransition(Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$Event;)V

    .line 11
    iget-object v0, p0, Landroidx/leanback/app/BaseSupportFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_COMPLETE:Landroidx/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroidx/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_PERFORM:Landroidx/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1, v2}, Landroidx/leanback/util/StateMachine;->addTransition(Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$State;)V

    .line 12
    iget-object v0, p0, Landroidx/leanback/app/BaseSupportFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_INIT:Landroidx/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroidx/leanback/app/DetailsSupportFragment;->STATE_SWITCH_TO_VIDEO_IN_ON_CREATE:Landroidx/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroidx/leanback/app/DetailsSupportFragment;->EVT_SWITCH_TO_VIDEO:Landroidx/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/leanback/util/StateMachine;->addTransition(Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$Event;)V

    .line 13
    iget-object v0, p0, Landroidx/leanback/app/BaseSupportFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/DetailsSupportFragment;->STATE_SWITCH_TO_VIDEO_IN_ON_CREATE:Landroidx/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroidx/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_COMPLETE:Landroidx/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1, v2}, Landroidx/leanback/util/StateMachine;->addTransition(Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$State;)V

    .line 14
    iget-object v0, p0, Landroidx/leanback/app/BaseSupportFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_COMPLETE:Landroidx/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroidx/leanback/app/DetailsSupportFragment;->STATE_SWITCH_TO_VIDEO_IN_ON_CREATE:Landroidx/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroidx/leanback/app/DetailsSupportFragment;->EVT_SWITCH_TO_VIDEO:Landroidx/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/leanback/util/StateMachine;->addTransition(Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$Event;)V

    .line 15
    iget-object v0, p0, Landroidx/leanback/app/BaseSupportFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_ON_PREPARED:Landroidx/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroidx/leanback/app/DetailsSupportFragment;->STATE_SET_ENTRANCE_START_STATE:Landroidx/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroidx/leanback/app/DetailsSupportFragment;->EVT_ONSTART:Landroidx/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/leanback/util/StateMachine;->addTransition(Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$Event;)V

    .line 16
    iget-object v0, p0, Landroidx/leanback/app/BaseSupportFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/BaseSupportFragment;->STATE_START:Landroidx/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroidx/leanback/app/DetailsSupportFragment;->STATE_ON_SAFE_START:Landroidx/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroidx/leanback/app/DetailsSupportFragment;->EVT_ONSTART:Landroidx/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/leanback/util/StateMachine;->addTransition(Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$Event;)V

    .line 17
    iget-object v0, p0, Landroidx/leanback/app/BaseSupportFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_COMPLETE:Landroidx/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroidx/leanback/app/DetailsSupportFragment;->STATE_ON_SAFE_START:Landroidx/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1, v2}, Landroidx/leanback/util/StateMachine;->addTransition(Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$State;)V

    .line 18
    iget-object v0, p0, Landroidx/leanback/app/BaseSupportFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_COMPLETE:Landroidx/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroidx/leanback/app/DetailsSupportFragment;->STATE_ON_SAFE_START:Landroidx/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1, v2}, Landroidx/leanback/util/StateMachine;->addTransition(Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$State;)V

    return-void
.end method

.method public getAdapter()Landroidx/leanback/widget/ObjectAdapter;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment;->mAdapter:Landroidx/leanback/widget/ObjectAdapter;

    return-object v0
.end method

.method public getOnItemViewClickedListener()Landroidx/leanback/widget/BaseOnItemViewClickedListener;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment;->mOnItemViewClickedListener:Landroidx/leanback/widget/BaseOnItemViewClickedListener;

    return-object v0
.end method

.method public getParallax()Landroidx/leanback/widget/DetailsParallax;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment;->mDetailsParallax:Landroidx/leanback/widget/DetailsParallax;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/leanback/widget/DetailsParallax;

    invoke-direct {v0}, Landroidx/leanback/widget/DetailsParallax;-><init>()V

    iput-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment;->mDetailsParallax:Landroidx/leanback/widget/DetailsParallax;

    .line 3
    iget-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroidx/leanback/app/RowsSupportFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment;->mDetailsParallax:Landroidx/leanback/widget/DetailsParallax;

    iget-object v1, p0, Landroidx/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroidx/leanback/app/RowsSupportFragment;

    invoke-virtual {v1}, Landroidx/leanback/app/BaseRowSupportFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/RecyclerViewParallax;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment;->mDetailsParallax:Landroidx/leanback/widget/DetailsParallax;

    return-object v0
.end method

.method public getRowsSupportFragment()Landroidx/leanback/app/RowsSupportFragment;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroidx/leanback/app/RowsSupportFragment;

    return-object v0
.end method

.method public final getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroidx/leanback/app/RowsSupportFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/leanback/app/BaseRowSupportFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/leanback/app/BaseSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroidx/leanback/R$dimen;->lb_details_rows_align_top:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/leanback/app/DetailsSupportFragment;->mContainerListAlignTop:I

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Landroidx/leanback/transition/TransitionHelper;->getEnterTransition(Landroid/view/Window;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Landroidx/leanback/app/BaseSupportFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/DetailsSupportFragment;->EVT_NO_ENTER_TRANSITION:Landroidx/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1}, Landroidx/leanback/util/StateMachine;->fireEvent(Landroidx/leanback/util/StateMachine$Event;)V

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Landroidx/leanback/transition/TransitionHelper;->getReturnTransition(Landroid/view/Window;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    iget-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment;->mReturnTransitionListener:Landroidx/leanback/transition/TransitionListener;

    invoke-static {p1, v0}, Landroidx/leanback/transition/TransitionHelper;->addTransitionListener(Ljava/lang/Object;Landroidx/leanback/transition/TransitionListener;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Landroidx/leanback/app/BaseSupportFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment;->EVT_NO_ENTER_TRANSITION:Landroidx/leanback/util/StateMachine$Event;

    invoke-virtual {p1, v0}, Landroidx/leanback/util/StateMachine;->fireEvent(Landroidx/leanback/util/StateMachine$Event;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 1
    sget v0, Landroidx/leanback/R$layout;->lb_details_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/BrowseFrameLayout;

    iput-object p2, p0, Landroidx/leanback/app/DetailsSupportFragment;->mRootView:Landroidx/leanback/widget/BrowseFrameLayout;

    .line 2
    sget v0, Landroidx/leanback/R$id;->details_background_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Landroidx/leanback/app/DetailsSupportFragment;->mBackgroundView:Landroid/view/View;

    if-eqz p2, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    sget v0, Landroidx/leanback/R$id;->details_rows_dock:I

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p2

    check-cast p2, Landroidx/leanback/app/RowsSupportFragment;

    iput-object p2, p0, Landroidx/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroidx/leanback/app/RowsSupportFragment;

    if-nez p2, :cond_1

    .line 5
    new-instance p2, Landroidx/leanback/app/RowsSupportFragment;

    invoke-direct {p2}, Landroidx/leanback/app/RowsSupportFragment;-><init>()V

    iput-object p2, p0, Landroidx/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroidx/leanback/app/RowsSupportFragment;

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    iget-object v1, p0, Landroidx/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroidx/leanback/app/RowsSupportFragment;

    .line 7
    invoke-virtual {p2, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 8
    :cond_1
    iget-object p2, p0, Landroidx/leanback/app/DetailsSupportFragment;->mRootView:Landroidx/leanback/widget/BrowseFrameLayout;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/leanback/app/BrandedSupportFragment;->installTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 9
    iget-object p1, p0, Landroidx/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroidx/leanback/app/RowsSupportFragment;

    iget-object p2, p0, Landroidx/leanback/app/DetailsSupportFragment;->mAdapter:Landroidx/leanback/widget/ObjectAdapter;

    invoke-virtual {p1, p2}, Landroidx/leanback/app/BaseRowSupportFragment;->setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    .line 10
    iget-object p1, p0, Landroidx/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroidx/leanback/app/RowsSupportFragment;

    iget-object p2, p0, Landroidx/leanback/app/DetailsSupportFragment;->mOnItemViewSelectedListener:Landroidx/leanback/widget/BaseOnItemViewSelectedListener;

    invoke-virtual {p1, p2}, Landroidx/leanback/app/RowsSupportFragment;->setOnItemViewSelectedListener(Landroidx/leanback/widget/BaseOnItemViewSelectedListener;)V

    .line 11
    iget-object p1, p0, Landroidx/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroidx/leanback/app/RowsSupportFragment;

    iget-object p2, p0, Landroidx/leanback/app/DetailsSupportFragment;->mOnItemViewClickedListener:Landroidx/leanback/widget/BaseOnItemViewClickedListener;

    invoke-virtual {p1, p2}, Landroidx/leanback/app/RowsSupportFragment;->setOnItemViewClickedListener(Landroidx/leanback/widget/BaseOnItemViewClickedListener;)V

    .line 12
    iget-object p1, p0, Landroidx/leanback/app/DetailsSupportFragment;->mRootView:Landroidx/leanback/widget/BrowseFrameLayout;

    new-instance p2, Landroidx/leanback/app/DetailsSupportFragment$10;

    invoke-direct {p2, p0}, Landroidx/leanback/app/DetailsSupportFragment$10;-><init>(Landroidx/leanback/app/DetailsSupportFragment;)V

    invoke-static {p1, p2}, Landroidx/leanback/transition/TransitionHelper;->createScene(Landroid/view/ViewGroup;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/app/DetailsSupportFragment;->mSceneAfterEntranceTransition:Ljava/lang/Object;

    .line 13
    iget-object p1, p0, Landroidx/leanback/app/DetailsSupportFragment;->mRootView:Landroidx/leanback/widget/BrowseFrameLayout;

    new-instance p2, Landroidx/leanback/app/DetailsSupportFragment$13;

    invoke-direct {p2, p0}, Landroidx/leanback/app/DetailsSupportFragment$13;-><init>(Landroidx/leanback/app/DetailsSupportFragment;)V

    invoke-virtual {p1, p2}, Landroidx/leanback/widget/BrowseFrameLayout;->setOnChildFocusListener(Landroidx/leanback/widget/BrowseFrameLayout$OnChildFocusListener;)V

    .line 14
    iget-object p1, p0, Landroidx/leanback/app/DetailsSupportFragment;->mRootView:Landroidx/leanback/widget/BrowseFrameLayout;

    new-instance p2, Landroidx/leanback/app/DetailsSupportFragment$14;

    invoke-direct {p2, p0}, Landroidx/leanback/app/DetailsSupportFragment$14;-><init>(Landroidx/leanback/app/DetailsSupportFragment;)V

    invoke-virtual {p1, p2}, Landroidx/leanback/widget/BrowseFrameLayout;->setOnFocusSearchListener(Landroidx/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;)V

    .line 15
    iget-object p1, p0, Landroidx/leanback/app/DetailsSupportFragment;->mRootView:Landroidx/leanback/widget/BrowseFrameLayout;

    new-instance p2, Landroidx/leanback/app/DetailsSupportFragment$15;

    invoke-direct {p2, p0}, Landroidx/leanback/app/DetailsSupportFragment$15;-><init>(Landroidx/leanback/app/DetailsSupportFragment;)V

    invoke-virtual {p1, p2}, Landroidx/leanback/widget/BrowseFrameLayout;->setOnDispatchKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 16
    iget-object p1, p0, Landroidx/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroidx/leanback/app/RowsSupportFragment;

    new-instance p2, Landroidx/leanback/app/DetailsSupportFragment$11;

    invoke-direct {p2, p0}, Landroidx/leanback/app/DetailsSupportFragment$11;-><init>(Landroidx/leanback/app/DetailsSupportFragment;)V

    .line 17
    iput-object p2, p1, Landroidx/leanback/app/RowsSupportFragment;->mExternalAdapterListener:Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;

    .line 18
    iget-object p1, p0, Landroidx/leanback/app/DetailsSupportFragment;->mRootView:Landroidx/leanback/widget/BrowseFrameLayout;

    return-object p1
.end method

.method public final onEntranceTransitionEnd()V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroidx/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/RowsSupportFragment;->onTransitionEnd()V

    return-void
.end method

.method public final onEntranceTransitionPrepare()V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroidx/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/RowsSupportFragment;->onTransitionPrepare()Z

    return-void
.end method

.method public final onEntranceTransitionStart()V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroidx/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/RowsSupportFragment;->onTransitionStart()V

    return-void
.end method

.method public onInflateTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/leanback/app/BrandedSupportFragment;->onInflateTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/leanback/app/BrandedSupportFragment;->onStart()V

    .line 2
    invoke-direct {p0}, Landroidx/leanback/app/DetailsSupportFragment;->setupChildFragmentLayout()V

    .line 3
    iget-object v0, p0, Landroidx/leanback/app/BaseSupportFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/DetailsSupportFragment;->EVT_ONSTART:Landroidx/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1}, Landroidx/leanback/util/StateMachine;->fireEvent(Landroidx/leanback/util/StateMachine$Event;)V

    .line 4
    iget-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment;->mDetailsParallax:Landroidx/leanback/widget/DetailsParallax;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Landroidx/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroidx/leanback/app/RowsSupportFragment;

    invoke-virtual {v1}, Landroidx/leanback/app/BaseRowSupportFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/RecyclerViewParallax;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 6
    :cond_0
    iget-boolean v0, p0, Landroidx/leanback/app/DetailsSupportFragment;->mPendingFocusOnVideo:Z

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Landroidx/leanback/app/DetailsSupportFragment;->slideOutGridView()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    iget-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroidx/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/BaseRowSupportFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment;->mDetailsBackgroundController:Landroidx/leanback/app/DetailsSupportFragmentBackgroundController;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Landroidx/leanback/app/DetailsSupportFragmentBackgroundController;->mPlaybackGlue:Landroidx/leanback/media/PlaybackGlue;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/leanback/media/PlaybackGlue;->pause()V

    .line 4
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    return-void
.end method

.method public final runEntranceTransition(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment;->mSceneAfterEntranceTransition:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroidx/leanback/transition/TransitionHelper;->runTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V
    .locals 10

    .line 1
    iput-object p1, p0, Landroidx/leanback/app/DetailsSupportFragment;->mAdapter:Landroidx/leanback/widget/ObjectAdapter;

    .line 2
    invoke-virtual {p1}, Landroidx/leanback/widget/ObjectAdapter;->getPresenterSelector()Landroidx/leanback/widget/PresenterSelector;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/PresenterSelector;->getPresenters()[Landroidx/leanback/widget/Presenter;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 4
    aget-object v3, v0, v2

    .line 5
    instance-of v4, v3, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;

    if-eqz v4, :cond_0

    .line 6
    check-cast v3, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;

    .line 7
    new-instance v4, Landroidx/leanback/widget/ItemAlignmentFacet;

    invoke-direct {v4}, Landroidx/leanback/widget/ItemAlignmentFacet;-><init>()V

    .line 8
    new-instance v5, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    invoke-direct {v5}, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;-><init>()V

    .line 9
    sget v6, Landroidx/leanback/R$id;->details_frame:I

    invoke-virtual {v5, v6}, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentViewId(I)V

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Landroidx/leanback/R$dimen;->lb_details_v2_align_pos_for_actions:I

    .line 11
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    neg-int v7, v7

    .line 12
    invoke-virtual {v5, v7}, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentOffset(I)V

    const/4 v7, 0x0

    .line 13
    invoke-virtual {v5, v7}, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentOffsetPercent(F)V

    .line 14
    new-instance v8, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    invoke-direct {v8}, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;-><init>()V

    .line 15
    invoke-virtual {v8, v6}, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentViewId(I)V

    .line 16
    sget v6, Landroidx/leanback/R$id;->details_overview_description:I

    invoke-virtual {v8, v6}, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentFocusViewId(I)V

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v9, Landroidx/leanback/R$dimen;->lb_details_v2_align_pos_for_description:I

    .line 18
    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    neg-int v6, v6

    .line 19
    invoke-virtual {v8, v6}, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentOffset(I)V

    .line 20
    invoke-virtual {v8, v7}, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentOffsetPercent(F)V

    const/4 v6, 0x2

    new-array v6, v6, [Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    aput-object v5, v6, v1

    const/4 v5, 0x1

    aput-object v8, v6, v5

    .line 21
    invoke-virtual {v4, v6}, Landroidx/leanback/widget/ItemAlignmentFacet;->setAlignmentDefs([Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;)V

    .line 22
    const-class v5, Landroidx/leanback/widget/ItemAlignmentFacet;

    invoke-virtual {v3, v5, v4}, Landroidx/leanback/widget/Presenter;->setFacet(Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "DetailsSupportFragment"

    const-string v1, "PresenterSelector.getPresenters() not implemented"

    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_2
    iget-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroidx/leanback/app/RowsSupportFragment;

    if-eqz v0, :cond_3

    .line 25
    invoke-virtual {v0, p1}, Landroidx/leanback/app/BaseRowSupportFragment;->setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    :cond_3
    return-void
.end method

.method public setOnItemViewClickedListener(Landroidx/leanback/widget/BaseOnItemViewClickedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment;->mOnItemViewClickedListener:Landroidx/leanback/widget/BaseOnItemViewClickedListener;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Landroidx/leanback/app/DetailsSupportFragment;->mOnItemViewClickedListener:Landroidx/leanback/widget/BaseOnItemViewClickedListener;

    .line 3
    iget-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroidx/leanback/app/RowsSupportFragment;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Landroidx/leanback/app/RowsSupportFragment;->setOnItemViewClickedListener(Landroidx/leanback/widget/BaseOnItemViewClickedListener;)V

    :cond_0
    return-void
.end method

.method public setOnItemViewSelectedListener(Landroidx/leanback/widget/BaseOnItemViewSelectedListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/app/DetailsSupportFragment;->mExternalOnItemViewSelectedListener:Landroidx/leanback/widget/BaseOnItemViewSelectedListener;

    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/leanback/app/DetailsSupportFragment;->setSelectedPosition(IZ)V

    return-void
.end method

.method public setSelectedPosition(IZ)V
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment;->mSetSelectionRunnable:Landroidx/leanback/app/DetailsSupportFragment$SetSelectionRunnable;

    iput p1, v0, Landroidx/leanback/app/DetailsSupportFragment$SetSelectionRunnable;->mPosition:I

    .line 3
    iput-boolean p2, v0, Landroidx/leanback/app/DetailsSupportFragment$SetSelectionRunnable;->mSmooth:Z

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Landroidx/leanback/app/DetailsSupportFragment;->mSetSelectionRunnable:Landroidx/leanback/app/DetailsSupportFragment$SetSelectionRunnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final slideOutGridView()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/app/DetailsSupportFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/leanback/app/DetailsSupportFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/BaseGridView;->animateOut()V

    :cond_0
    return-void
.end method

.method public final switchToVideo()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment;->mVideoSupportFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment;->mVideoSupportFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/leanback/app/BaseSupportFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/DetailsSupportFragment;->EVT_SWITCH_TO_VIDEO:Landroidx/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1}, Landroidx/leanback/util/StateMachine;->fireEvent(Landroidx/leanback/util/StateMachine$Event;)V

    :goto_0
    return-void
.end method
