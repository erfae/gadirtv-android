.class Landroidx/leanback/widget/GuidedActionsStylist$3;
.super Ljava/lang/Object;
.source "GuidedActionsStylist.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/leanback/widget/GuidedActionsStylist;->onEditActivatorView(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/leanback/widget/GuidedActionsStylist;

.field public final synthetic val$vh:Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/GuidedActionsStylist;Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist$3;->this$0:Landroidx/leanback/widget/GuidedActionsStylist;

    iput-object p2, p0, Landroidx/leanback/widget/GuidedActionsStylist$3;->val$vh:Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist$3;->this$0:Landroidx/leanback/widget/GuidedActionsStylist;

    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedActionsStylist;->isInExpandTransition()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Landroidx/leanback/widget/GuidedActionsStylist$3;->this$0:Landroidx/leanback/widget/GuidedActionsStylist;

    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/GuidedActionAdapter;

    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionsStylist$3;->val$vh:Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;

    .line 3
    invoke-virtual {p1, v0}, Landroidx/leanback/widget/GuidedActionAdapter;->performOnActionClick(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;)V

    :cond_0
    return-void
.end method
