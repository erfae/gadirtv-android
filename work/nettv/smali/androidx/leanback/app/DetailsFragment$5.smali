.class Landroidx/leanback/app/DetailsFragment$5;
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
    .locals 0

    iput-object p1, p0, Landroidx/leanback/app/DetailsFragment$5;->this$0:Landroidx/leanback/app/DetailsFragment;

    const-string p1, "STATE_ENTER_TRANSITION_PENDING"

    invoke-direct {p0, p1}, Landroidx/leanback/util/StateMachine$State;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/DetailsFragment$5;->this$0:Landroidx/leanback/app/DetailsFragment;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Landroidx/leanback/app/DetailsFragment$WaitEnterTransitionTimeout;

    iget-object v1, p0, Landroidx/leanback/app/DetailsFragment$5;->this$0:Landroidx/leanback/app/DetailsFragment;

    invoke-direct {v0, v1}, Landroidx/leanback/app/DetailsFragment$WaitEnterTransitionTimeout;-><init>(Landroidx/leanback/app/DetailsFragment;)V

    return-void
.end method
