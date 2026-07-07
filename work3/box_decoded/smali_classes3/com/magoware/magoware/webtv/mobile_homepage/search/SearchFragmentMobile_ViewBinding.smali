.class public Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile_ViewBinding;
.super Ljava/lang/Object;
.source "SearchFragmentMobile_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "target",
            "source"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile_ViewBinding;->target:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;

    .line 25
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f0b0581

    const-string v2, "field \'searchToolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->searchToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 26
    const-class v0, Landroid/widget/ProgressBar;

    const v1, 0x7f0b0518

    const-string v2, "field \'progressBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->progressBar:Landroid/widget/ProgressBar;

    .line 27
    const-class v0, Lcom/google/android/material/tabs/TabLayout;

    const v1, 0x7f0b0613

    const-string v2, "field \'tabLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 28
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0b052f

    const-string v2, "field \'recyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 29
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0b04b8

    const-string v2, "field \'noResultText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->noResultText:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile_ViewBinding;->target:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 37
    iput-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile_ViewBinding;->target:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;

    .line 39
    iput-object v1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->searchToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 40
    iput-object v1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->progressBar:Landroid/widget/ProgressBar;

    .line 41
    iput-object v1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 42
    iput-object v1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 43
    iput-object v1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->noResultText:Landroid/widget/TextView;

    return-void

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
