.class Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment$3;
.super Ljava/lang/Object;
.source "GridFragment.java"

# interfaces
.implements Landroidx/leanback/widget/OnChildLaidOutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;


# direct methods
.method constructor <init>(Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;)V
    .locals 0

    .line 109
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment$3;->this$0:Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildLaidOut(Landroid/view/ViewGroup;Landroid/view/View;IJ)V
    .locals 0

    if-nez p3, :cond_0

    .line 113
    iget-object p1, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment$3;->this$0:Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;

    invoke-static {p1}, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->access$400(Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;)V

    :cond_0
    return-void
.end method
