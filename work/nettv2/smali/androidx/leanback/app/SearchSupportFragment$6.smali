.class Landroidx/leanback/app/SearchSupportFragment$6;
.super Ljava/lang/Object;
.source "SearchSupportFragment.java"

# interfaces
.implements Landroidx/leanback/widget/SearchBar$SearchBarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/leanback/app/SearchSupportFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/leanback/app/SearchSupportFragment;


# direct methods
.method public constructor <init>(Landroidx/leanback/app/SearchSupportFragment;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/app/SearchSupportFragment$6;->this$0:Landroidx/leanback/app/SearchSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyboardDismiss(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Landroidx/leanback/app/SearchSupportFragment$6;->this$0:Landroidx/leanback/app/SearchSupportFragment;

    invoke-virtual {p1}, Landroidx/leanback/app/SearchSupportFragment;->queryComplete()V

    return-void
.end method

.method public onSearchQueryChange(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/SearchSupportFragment$6;->this$0:Landroidx/leanback/app/SearchSupportFragment;

    iget-object v1, v0, Landroidx/leanback/app/SearchSupportFragment;->mProvider:Landroidx/leanback/app/SearchSupportFragment$SearchResultProvider;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1, p1}, Landroidx/leanback/app/SearchSupportFragment$SearchResultProvider;->onQueryTextChange(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget p1, v0, Landroidx/leanback/app/SearchSupportFragment;->mStatus:I

    and-int/lit8 p1, p1, -0x3

    iput p1, v0, Landroidx/leanback/app/SearchSupportFragment;->mStatus:I

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, v0, Landroidx/leanback/app/SearchSupportFragment;->mPendingQuery:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public onSearchQuerySubmit(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/app/SearchSupportFragment$6;->this$0:Landroidx/leanback/app/SearchSupportFragment;

    invoke-virtual {v0, p1}, Landroidx/leanback/app/SearchSupportFragment;->submitQuery(Ljava/lang/String;)V

    return-void
.end method
