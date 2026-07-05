.class Landroidx/leanback/app/BrowseSupportFragment$11;
.super Ljava/lang/Object;
.source "BrowseSupportFragment.java"

# interfaces
.implements Landroidx/leanback/app/HeadersSupportFragment$OnHeaderViewSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/BrowseSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/leanback/app/BrowseSupportFragment;


# direct methods
.method public constructor <init>(Landroidx/leanback/app/BrowseSupportFragment;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/app/BrowseSupportFragment$11;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeaderSelected(Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/leanback/app/BrowseSupportFragment$11;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    iget-object p1, p1, Landroidx/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroidx/leanback/app/HeadersSupportFragment;

    invoke-virtual {p1}, Landroidx/leanback/app/HeadersSupportFragment;->getSelectedPosition()I

    move-result p1

    .line 2
    iget-object p2, p0, Landroidx/leanback/app/BrowseSupportFragment$11;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    iget-boolean v0, p2, Landroidx/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p2, p1}, Landroidx/leanback/app/BrowseSupportFragment;->onRowSelected(I)V

    :cond_0
    return-void
.end method
