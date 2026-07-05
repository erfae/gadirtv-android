.class Landroidx/leanback/app/VerticalGridFragment$1;
.super Landroidx/leanback/util/StateMachine$State;
.source "VerticalGridFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/VerticalGridFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/leanback/app/VerticalGridFragment;


# direct methods
.method public constructor <init>(Landroidx/leanback/app/VerticalGridFragment;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/app/VerticalGridFragment$1;->this$0:Landroidx/leanback/app/VerticalGridFragment;

    const-string p1, "SET_ENTRANCE_START_STATE"

    invoke-direct {p0, p1}, Landroidx/leanback/util/StateMachine$State;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroidx/leanback/app/VerticalGridFragment$1;->this$0:Landroidx/leanback/app/VerticalGridFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/leanback/app/VerticalGridFragment;->setEntranceTransitionState(Z)V

    return-void
.end method
