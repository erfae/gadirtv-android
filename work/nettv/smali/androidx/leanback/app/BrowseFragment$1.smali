.class Landroidx/leanback/app/BrowseFragment$1;
.super Landroidx/leanback/util/StateMachine$State;
.source "BrowseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/BrowseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/leanback/app/BrowseFragment;


# direct methods
.method public constructor <init>(Landroidx/leanback/app/BrowseFragment;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/app/BrowseFragment$1;->this$0:Landroidx/leanback/app/BrowseFragment;

    const-string p1, "SET_ENTRANCE_START_STATE"

    invoke-direct {p0, p1}, Landroidx/leanback/util/StateMachine$State;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/app/BrowseFragment$1;->this$0:Landroidx/leanback/app/BrowseFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/BrowseFragment;->setEntranceTransitionStartState()V

    return-void
.end method
