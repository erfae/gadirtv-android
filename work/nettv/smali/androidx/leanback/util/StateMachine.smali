.class public final Landroidx/leanback/util/StateMachine;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/util/StateMachine$State;,
        Landroidx/leanback/util/StateMachine$Transition;,
        Landroidx/leanback/util/StateMachine$Condition;,
        Landroidx/leanback/util/StateMachine$Event;
    }
.end annotation


# static fields
.field public static final STATUS_INVOKED:I = 0x1

.field public static final STATUS_ZERO:I


# instance fields
.field public final mFinishedStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/leanback/util/StateMachine$State;",
            ">;"
        }
    .end annotation
.end field

.field public final mStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/leanback/util/StateMachine$State;",
            ">;"
        }
    .end annotation
.end field

.field public final mUnfinishedStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/leanback/util/StateMachine$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/leanback/util/StateMachine;->mStates:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/leanback/util/StateMachine;->mFinishedStates:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/leanback/util/StateMachine;->mUnfinishedStates:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addState(Landroidx/leanback/util/StateMachine$State;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/util/StateMachine;->mStates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/leanback/util/StateMachine;->mStates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addTransition(Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$State;)V
    .locals 1

    .line 7
    new-instance v0, Landroidx/leanback/util/StateMachine$Transition;

    invoke-direct {v0, p1, p2}, Landroidx/leanback/util/StateMachine$Transition;-><init>(Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$State;)V

    .line 8
    invoke-virtual {p2, v0}, Landroidx/leanback/util/StateMachine$State;->addIncoming(Landroidx/leanback/util/StateMachine$Transition;)V

    .line 9
    invoke-virtual {p1, v0}, Landroidx/leanback/util/StateMachine$State;->addOutgoing(Landroidx/leanback/util/StateMachine$Transition;)V

    return-void
.end method

.method public addTransition(Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$Condition;)V
    .locals 1

    .line 4
    new-instance v0, Landroidx/leanback/util/StateMachine$Transition;

    invoke-direct {v0, p1, p2, p3}, Landroidx/leanback/util/StateMachine$Transition;-><init>(Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$Condition;)V

    .line 5
    invoke-virtual {p2, v0}, Landroidx/leanback/util/StateMachine$State;->addIncoming(Landroidx/leanback/util/StateMachine$Transition;)V

    .line 6
    invoke-virtual {p1, v0}, Landroidx/leanback/util/StateMachine$State;->addOutgoing(Landroidx/leanback/util/StateMachine$Transition;)V

    return-void
.end method

.method public addTransition(Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$Event;)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/leanback/util/StateMachine$Transition;

    invoke-direct {v0, p1, p2, p3}, Landroidx/leanback/util/StateMachine$Transition;-><init>(Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$Event;)V

    .line 2
    invoke-virtual {p2, v0}, Landroidx/leanback/util/StateMachine$State;->addIncoming(Landroidx/leanback/util/StateMachine$Transition;)V

    .line 3
    invoke-virtual {p1, v0}, Landroidx/leanback/util/StateMachine$State;->addOutgoing(Landroidx/leanback/util/StateMachine$Transition;)V

    return-void
.end method

.method public fireEvent(Landroidx/leanback/util/StateMachine$Event;)V
    .locals 6

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Landroidx/leanback/util/StateMachine;->mFinishedStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 2
    iget-object v1, p0, Landroidx/leanback/util/StateMachine;->mFinishedStates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/util/StateMachine$State;

    .line 3
    iget-object v2, v1, Landroidx/leanback/util/StateMachine$State;->mOutgoings:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 4
    iget-boolean v3, v1, Landroidx/leanback/util/StateMachine$State;->mBranchStart:Z

    if-nez v3, :cond_0

    iget v3, v1, Landroidx/leanback/util/StateMachine$State;->mInvokedOutTransitions:I

    if-lez v3, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/leanback/util/StateMachine$Transition;

    .line 6
    iget v4, v3, Landroidx/leanback/util/StateMachine$Transition;->mState:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    iget-object v4, v3, Landroidx/leanback/util/StateMachine$Transition;->mEvent:Landroidx/leanback/util/StateMachine$Event;

    if-ne v4, p1, :cond_1

    .line 7
    iput v5, v3, Landroidx/leanback/util/StateMachine$Transition;->mState:I

    .line 8
    iget v3, v1, Landroidx/leanback/util/StateMachine$State;->mInvokedOutTransitions:I

    add-int/2addr v3, v5

    iput v3, v1, Landroidx/leanback/util/StateMachine$State;->mInvokedOutTransitions:I

    .line 9
    iget-boolean v3, v1, Landroidx/leanback/util/StateMachine$State;->mBranchStart:Z

    if-nez v3, :cond_1

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p0}, Landroidx/leanback/util/StateMachine;->runUnfinishedStates()V

    return-void
.end method

.method public reset()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/leanback/util/StateMachine;->mUnfinishedStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Landroidx/leanback/util/StateMachine;->mFinishedStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    iget-object v0, p0, Landroidx/leanback/util/StateMachine;->mStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/util/StateMachine$State;

    const/4 v2, 0x0

    .line 4
    iput v2, v1, Landroidx/leanback/util/StateMachine$State;->mStatus:I

    .line 5
    iput v2, v1, Landroidx/leanback/util/StateMachine$State;->mInvokedOutTransitions:I

    .line 6
    iget-object v1, v1, Landroidx/leanback/util/StateMachine$State;->mOutgoings:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/leanback/util/StateMachine$Transition;

    .line 8
    iput v2, v3, Landroidx/leanback/util/StateMachine$Transition;->mState:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final runUnfinishedStates()V
    .locals 8

    .line 1
    :cond_0
    iget-object v0, p0, Landroidx/leanback/util/StateMachine;->mUnfinishedStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ltz v0, :cond_c

    .line 2
    iget-object v4, p0, Landroidx/leanback/util/StateMachine;->mUnfinishedStates:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/leanback/util/StateMachine$State;

    .line 3
    iget v5, v4, Landroidx/leanback/util/StateMachine$State;->mStatus:I

    if-eq v5, v1, :cond_a

    .line 4
    iget-object v5, v4, Landroidx/leanback/util/StateMachine$State;->mIncomings:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-boolean v6, v4, Landroidx/leanback/util/StateMachine$State;->mBranchEnd:Z

    if-eqz v6, :cond_3

    .line 6
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/leanback/util/StateMachine$Transition;

    .line 7
    iget v6, v6, Landroidx/leanback/util/StateMachine$Transition;->mState:I

    if-eq v6, v1, :cond_2

    goto :goto_2

    .line 8
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/leanback/util/StateMachine$Transition;

    .line 9
    iget v6, v6, Landroidx/leanback/util/StateMachine$Transition;->mState:I

    if-ne v6, v1, :cond_4

    :cond_5
    :goto_1
    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_a

    .line 10
    iput v1, v4, Landroidx/leanback/util/StateMachine$State;->mStatus:I

    .line 11
    invoke-virtual {v4}, Landroidx/leanback/util/StateMachine$State;->run()V

    .line 12
    iget-object v5, v4, Landroidx/leanback/util/StateMachine$State;->mOutgoings:Ljava/util/ArrayList;

    if-eqz v5, :cond_9

    .line 13
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/leanback/util/StateMachine$Transition;

    .line 14
    iget-object v7, v6, Landroidx/leanback/util/StateMachine$Transition;->mEvent:Landroidx/leanback/util/StateMachine$Event;

    if-nez v7, :cond_7

    .line 15
    iget-object v7, v6, Landroidx/leanback/util/StateMachine$Transition;->mCondition:Landroidx/leanback/util/StateMachine$Condition;

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Landroidx/leanback/util/StateMachine$Condition;->canProceed()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 16
    :cond_8
    iget v7, v4, Landroidx/leanback/util/StateMachine$State;->mInvokedOutTransitions:I

    add-int/2addr v7, v1

    iput v7, v4, Landroidx/leanback/util/StateMachine$State;->mInvokedOutTransitions:I

    .line 17
    iput v1, v6, Landroidx/leanback/util/StateMachine$Transition;->mState:I

    .line 18
    iget-boolean v6, v4, Landroidx/leanback/util/StateMachine$State;->mBranchStart:Z

    if-nez v6, :cond_7

    :cond_9
    const/4 v5, 0x1

    goto :goto_4

    :cond_a
    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_b

    .line 19
    iget-object v3, p0, Landroidx/leanback/util/StateMachine;->mUnfinishedStates:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 20
    iget-object v3, p0, Landroidx/leanback/util/StateMachine;->mFinishedStates:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_c
    if-nez v3, :cond_0

    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/util/StateMachine;->mUnfinishedStates:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/leanback/util/StateMachine;->mStates:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2
    invoke-virtual {p0}, Landroidx/leanback/util/StateMachine;->runUnfinishedStates()V

    return-void
.end method
