.class public Landroidx/leanback/app/BaseFragment;
.super Landroidx/leanback/app/BrandedFragment;
.source "BaseFragment.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final COND_TRANSITION_NOT_SUPPORTED:Landroidx/leanback/util/StateMachine$Condition;

.field public final EVT_ENTRANCE_END:Landroidx/leanback/util/StateMachine$Event;

.field public final EVT_ON_CREATE:Landroidx/leanback/util/StateMachine$Event;

.field public final EVT_ON_CREATEVIEW:Landroidx/leanback/util/StateMachine$Event;

.field public final EVT_PREPARE_ENTRANCE:Landroidx/leanback/util/StateMachine$Event;

.field public final EVT_START_ENTRANCE:Landroidx/leanback/util/StateMachine$Event;

.field public final STATE_ENTRANCE_COMPLETE:Landroidx/leanback/util/StateMachine$State;

.field public final STATE_ENTRANCE_INIT:Landroidx/leanback/util/StateMachine$State;

.field public final STATE_ENTRANCE_ON_ENDED:Landroidx/leanback/util/StateMachine$State;

.field public final STATE_ENTRANCE_ON_PREPARED:Landroidx/leanback/util/StateMachine$State;

.field public final STATE_ENTRANCE_ON_PREPARED_ON_CREATEVIEW:Landroidx/leanback/util/StateMachine$State;

.field public final STATE_ENTRANCE_PERFORM:Landroidx/leanback/util/StateMachine$State;

.field public final STATE_START:Landroidx/leanback/util/StateMachine$State;

.field public mEntranceTransition:Ljava/lang/Object;

.field public final mProgressBarManager:Landroidx/leanback/app/ProgressBarManager;

.field public final mStateMachine:Landroidx/leanback/util/StateMachine;


# direct methods
.method public constructor <init>()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/leanback/app/BrandedFragment;-><init>()V

    .line 2
    new-instance v0, Landroidx/leanback/util/StateMachine$State;

    const-string v1, "START"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/leanback/util/StateMachine$State;-><init>(Ljava/lang/String;ZZ)V

    iput-object v0, p0, Landroidx/leanback/app/BaseFragment;->STATE_START:Landroidx/leanback/util/StateMachine$State;

    .line 3
    new-instance v0, Landroidx/leanback/util/StateMachine$State;

    const-string v1, "ENTRANCE_INIT"

    invoke-direct {v0, v1}, Landroidx/leanback/util/StateMachine$State;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/leanback/app/BaseFragment;->STATE_ENTRANCE_INIT:Landroidx/leanback/util/StateMachine$State;

    .line 4
    new-instance v0, Landroidx/leanback/app/BaseFragment$1;

    invoke-direct {v0, p0}, Landroidx/leanback/app/BaseFragment$1;-><init>(Landroidx/leanback/app/BaseFragment;)V

    iput-object v0, p0, Landroidx/leanback/app/BaseFragment;->STATE_ENTRANCE_ON_PREPARED:Landroidx/leanback/util/StateMachine$State;

    .line 5
    new-instance v0, Landroidx/leanback/app/BaseFragment$2;

    invoke-direct {v0, p0}, Landroidx/leanback/app/BaseFragment$2;-><init>(Landroidx/leanback/app/BaseFragment;)V

    iput-object v0, p0, Landroidx/leanback/app/BaseFragment;->STATE_ENTRANCE_ON_PREPARED_ON_CREATEVIEW:Landroidx/leanback/util/StateMachine$State;

    .line 6
    new-instance v0, Landroidx/leanback/app/BaseFragment$3;

    invoke-direct {v0, p0}, Landroidx/leanback/app/BaseFragment$3;-><init>(Landroidx/leanback/app/BaseFragment;)V

    iput-object v0, p0, Landroidx/leanback/app/BaseFragment;->STATE_ENTRANCE_PERFORM:Landroidx/leanback/util/StateMachine$State;

    .line 7
    new-instance v0, Landroidx/leanback/app/BaseFragment$4;

    invoke-direct {v0, p0}, Landroidx/leanback/app/BaseFragment$4;-><init>(Landroidx/leanback/app/BaseFragment;)V

    iput-object v0, p0, Landroidx/leanback/app/BaseFragment;->STATE_ENTRANCE_ON_ENDED:Landroidx/leanback/util/StateMachine$State;

    .line 8
    new-instance v0, Landroidx/leanback/util/StateMachine$State;

    const-string v1, "ENTRANCE_COMPLETE"

    invoke-direct {v0, v1, v2, v3}, Landroidx/leanback/util/StateMachine$State;-><init>(Ljava/lang/String;ZZ)V

    iput-object v0, p0, Landroidx/leanback/app/BaseFragment;->STATE_ENTRANCE_COMPLETE:Landroidx/leanback/util/StateMachine$State;

    .line 9
    new-instance v0, Landroidx/leanback/util/StateMachine$Event;

    const-string v1, "onCreate"

    invoke-direct {v0, v1}, Landroidx/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/leanback/app/BaseFragment;->EVT_ON_CREATE:Landroidx/leanback/util/StateMachine$Event;

    .line 10
    new-instance v0, Landroidx/leanback/util/StateMachine$Event;

    const-string v1, "onCreateView"

    invoke-direct {v0, v1}, Landroidx/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/leanback/app/BaseFragment;->EVT_ON_CREATEVIEW:Landroidx/leanback/util/StateMachine$Event;

    .line 11
    new-instance v0, Landroidx/leanback/util/StateMachine$Event;

    const-string v1, "prepareEntranceTransition"

    invoke-direct {v0, v1}, Landroidx/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/leanback/app/BaseFragment;->EVT_PREPARE_ENTRANCE:Landroidx/leanback/util/StateMachine$Event;

    .line 12
    new-instance v0, Landroidx/leanback/util/StateMachine$Event;

    const-string/jumbo v1, "startEntranceTransition"

    invoke-direct {v0, v1}, Landroidx/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/leanback/app/BaseFragment;->EVT_START_ENTRANCE:Landroidx/leanback/util/StateMachine$Event;

    .line 13
    new-instance v0, Landroidx/leanback/util/StateMachine$Event;

    const-string v1, "onEntranceTransitionEnd"

    invoke-direct {v0, v1}, Landroidx/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/leanback/app/BaseFragment;->EVT_ENTRANCE_END:Landroidx/leanback/util/StateMachine$Event;

    .line 14
    new-instance v0, Landroidx/leanback/app/BaseFragment$5;

    invoke-direct {v0}, Landroidx/leanback/app/BaseFragment$5;-><init>()V

    iput-object v0, p0, Landroidx/leanback/app/BaseFragment;->COND_TRANSITION_NOT_SUPPORTED:Landroidx/leanback/util/StateMachine$Condition;

    .line 15
    new-instance v0, Landroidx/leanback/util/StateMachine;

    invoke-direct {v0}, Landroidx/leanback/util/StateMachine;-><init>()V

    iput-object v0, p0, Landroidx/leanback/app/BaseFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    .line 16
    new-instance v0, Landroidx/leanback/app/ProgressBarManager;

    invoke-direct {v0}, Landroidx/leanback/app/ProgressBarManager;-><init>()V

    iput-object v0, p0, Landroidx/leanback/app/BaseFragment;->mProgressBarManager:Landroidx/leanback/app/ProgressBarManager;

    return-void
.end method


# virtual methods
.method public createEntranceTransition()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public createStateMachineStates()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/BaseFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/BaseFragment;->STATE_START:Landroidx/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroidx/leanback/util/StateMachine;->addState(Landroidx/leanback/util/StateMachine$State;)V

    .line 2
    iget-object v0, p0, Landroidx/leanback/app/BaseFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/BaseFragment;->STATE_ENTRANCE_INIT:Landroidx/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroidx/leanback/util/StateMachine;->addState(Landroidx/leanback/util/StateMachine$State;)V

    .line 3
    iget-object v0, p0, Landroidx/leanback/app/BaseFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/BaseFragment;->STATE_ENTRANCE_ON_PREPARED:Landroidx/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroidx/leanback/util/StateMachine;->addState(Landroidx/leanback/util/StateMachine$State;)V

    .line 4
    iget-object v0, p0, Landroidx/leanback/app/BaseFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/BaseFragment;->STATE_ENTRANCE_ON_PREPARED_ON_CREATEVIEW:Landroidx/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroidx/leanback/util/StateMachine;->addState(Landroidx/leanback/util/StateMachine$State;)V

    .line 5
    iget-object v0, p0, Landroidx/leanback/app/BaseFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/BaseFragment;->STATE_ENTRANCE_PERFORM:Landroidx/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroidx/leanback/util/StateMachine;->addState(Landroidx/leanback/util/StateMachine$State;)V

    .line 6
    iget-object v0, p0, Landroidx/leanback/app/BaseFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/BaseFragment;->STATE_ENTRANCE_ON_ENDED:Landroidx/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroidx/leanback/util/StateMachine;->addState(Landroidx/leanback/util/StateMachine$State;)V

    .line 7
    iget-object v0, p0, Landroidx/leanback/app/BaseFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/BaseFragment;->STATE_ENTRANCE_COMPLETE:Landroidx/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroidx/leanback/util/StateMachine;->addState(Landroidx/leanback/util/StateMachine$State;)V

    return-void
.end method

.method public createStateMachineTransitions()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/BaseFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/BaseFragment;->STATE_START:Landroidx/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroidx/leanback/app/BaseFragment;->STATE_ENTRANCE_INIT:Landroidx/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroidx/leanback/app/BaseFragment;->EVT_ON_CREATE:Landroidx/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/leanback/util/StateMachine;->addTransition(Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$Event;)V

    .line 2
    iget-object v0, p0, Landroidx/leanback/app/BaseFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/BaseFragment;->STATE_ENTRANCE_INIT:Landroidx/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroidx/leanback/app/BaseFragment;->STATE_ENTRANCE_COMPLETE:Landroidx/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroidx/leanback/app/BaseFragment;->COND_TRANSITION_NOT_SUPPORTED:Landroidx/leanback/util/StateMachine$Condition;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/leanback/util/StateMachine;->addTransition(Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$Condition;)V

    .line 3
    iget-object v0, p0, Landroidx/leanback/app/BaseFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/BaseFragment;->STATE_ENTRANCE_INIT:Landroidx/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroidx/leanback/app/BaseFragment;->STATE_ENTRANCE_COMPLETE:Landroidx/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroidx/leanback/app/BaseFragment;->EVT_ON_CREATEVIEW:Landroidx/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/leanback/util/StateMachine;->addTransition(Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$Event;)V

    .line 4
    iget-object v0, p0, Landroidx/leanback/app/BaseFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/BaseFragment;->STATE_ENTRANCE_INIT:Landroidx/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroidx/leanback/app/BaseFragment;->STATE_ENTRANCE_ON_PREPARED:Landroidx/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroidx/leanback/app/BaseFragment;->EVT_PREPARE_ENTRANCE:Landroidx/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/leanback/util/StateMachine;->addTransition(Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$Event;)V

    .line 5
    iget-object v0, p0, Landroidx/leanback/app/BaseFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/BaseFragment;->STATE_ENTRANCE_ON_PREPARED:Landroidx/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroidx/leanback/app/BaseFragment;->STATE_ENTRANCE_ON_PREPARED_ON_CREATEVIEW:Landroidx/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroidx/leanback/app/BaseFragment;->EVT_ON_CREATEVIEW:Landroidx/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/leanback/util/StateMachine;->addTransition(Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$Event;)V

    .line 6
    iget-object v0, p0, Landroidx/leanback/app/BaseFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/BaseFragment;->STATE_ENTRANCE_ON_PREPARED:Landroidx/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroidx/leanback/app/BaseFragment;->STATE_ENTRANCE_PERFORM:Landroidx/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroidx/leanback/app/BaseFragment;->EVT_START_ENTRANCE:Landroidx/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/leanback/util/StateMachine;->addTransition(Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$Event;)V

    .line 7
    iget-object v0, p0, Landroidx/leanback/app/BaseFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/BaseFragment;->STATE_ENTRANCE_ON_PREPARED_ON_CREATEVIEW:Landroidx/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroidx/leanback/app/BaseFragment;->STATE_ENTRANCE_PERFORM:Landroidx/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1, v2}, Landroidx/leanback/util/StateMachine;->addTransition(Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$State;)V

    .line 8
    iget-object v0, p0, Landroidx/leanback/app/BaseFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/BaseFragment;->STATE_ENTRANCE_PERFORM:Landroidx/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroidx/leanback/app/BaseFragment;->STATE_ENTRANCE_ON_ENDED:Landroidx/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroidx/leanback/app/BaseFragment;->EVT_ENTRANCE_END:Landroidx/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/leanback/util/StateMachine;->addTransition(Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$Event;)V

    .line 9
    iget-object v0, p0, Landroidx/leanback/app/BaseFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/BaseFragment;->STATE_ENTRANCE_ON_ENDED:Landroidx/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroidx/leanback/app/BaseFragment;->STATE_ENTRANCE_COMPLETE:Landroidx/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1, v2}, Landroidx/leanback/util/StateMachine;->addTransition(Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$State;)V

    return-void
.end method

.method public final getProgressBarManager()Landroidx/leanback/app/ProgressBarManager;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/app/BaseFragment;->mProgressBarManager:Landroidx/leanback/app/ProgressBarManager;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/app/BaseFragment;->createStateMachineStates()V

    .line 2
    invoke-virtual {p0}, Landroidx/leanback/app/BaseFragment;->createStateMachineTransitions()V

    .line 3
    iget-object v0, p0, Landroidx/leanback/app/BaseFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    invoke-virtual {v0}, Landroidx/leanback/util/StateMachine;->start()V

    .line 4
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 5
    iget-object p1, p0, Landroidx/leanback/app/BaseFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v0, p0, Landroidx/leanback/app/BaseFragment;->EVT_ON_CREATE:Landroidx/leanback/util/StateMachine$Event;

    invoke-virtual {p1, v0}, Landroidx/leanback/util/StateMachine;->fireEvent(Landroidx/leanback/util/StateMachine$Event;)V

    return-void
.end method

.method public onEntranceTransitionEnd()V
    .locals 0

    return-void
.end method

.method public onEntranceTransitionPrepare()V
    .locals 0

    return-void
.end method

.method public onEntranceTransitionStart()V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/leanback/app/BrandedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Landroidx/leanback/app/BaseFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object p2, p0, Landroidx/leanback/app/BaseFragment;->EVT_ON_CREATEVIEW:Landroidx/leanback/util/StateMachine$Event;

    invoke-virtual {p1, p2}, Landroidx/leanback/util/StateMachine;->fireEvent(Landroidx/leanback/util/StateMachine$Event;)V

    return-void
.end method

.method public prepareEntranceTransition()V
    .locals 2

    iget-object v0, p0, Landroidx/leanback/app/BaseFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/BaseFragment;->EVT_PREPARE_ENTRANCE:Landroidx/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1}, Landroidx/leanback/util/StateMachine;->fireEvent(Landroidx/leanback/util/StateMachine$Event;)V

    return-void
.end method

.method public runEntranceTransition(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public startEntranceTransition()V
    .locals 2

    iget-object v0, p0, Landroidx/leanback/app/BaseFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/BaseFragment;->EVT_START_ENTRANCE:Landroidx/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1}, Landroidx/leanback/util/StateMachine;->fireEvent(Landroidx/leanback/util/StateMachine$Event;)V

    return-void
.end method
