.class Landroidx/leanback/app/BaseFragment$5;
.super Landroidx/leanback/util/StateMachine$Condition;
.source "BaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/BaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "EntranceTransitionNotSupport"

    invoke-direct {p0, v0}, Landroidx/leanback/util/StateMachine$Condition;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public canProceed()Z
    .locals 1

    invoke-static {}, Landroidx/leanback/transition/TransitionHelper;->systemSupportsEntranceTransitions()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
