.class Landroidx/leanback/app/DetailsSupportFragment$5;
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

    iput-object p1, p0, Landroidx/leanback/app/DetailsSupportFragment$5;->this$0:Landroidx/leanback/app/DetailsSupportFragment;

    const-string p1, "STATE_ENTER_TRANSITION_PENDING"

    invoke-direct {p0, p1}, Landroidx/leanback/util/StateMachine$State;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment$5;->this$0:Landroidx/leanback/app/DetailsSupportFragment;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Landroidx/leanback/app/DetailsSupportFragment$WaitEnterTransitionTimeout;

    iget-object v1, p0, Landroidx/leanback/app/DetailsSupportFragment$5;->this$0:Landroidx/leanback/app/DetailsSupportFragment;

    invoke-direct {v0, v1}, Landroidx/leanback/app/DetailsSupportFragment$WaitEnterTransitionTimeout;-><init>(Landroidx/leanback/app/DetailsSupportFragment;)V

    return-void
.end method
