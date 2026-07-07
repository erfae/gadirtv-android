.class Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile$1;
.super Ljava/lang/Object;
.source "SearchFragmentMobile.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tab"
        }
    .end annotation

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tab"
        }
    .end annotation

    .line 106
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;

    sget-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchType;->TV_SHOW:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchType;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->searchType:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchType;

    goto :goto_0

    .line 112
    :cond_1
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;

    sget-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchType;->MOVIE:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchType;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->searchType:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchType;

    goto :goto_0

    .line 109
    :cond_2
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;

    sget-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchType;->TV_PROGRAM:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchType;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->searchType:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchType;

    .line 118
    :goto_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->access$000(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;I)V

    .line 119
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->access$100(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->access$200(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;Ljava/lang/String;)V

    .line 120
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->access$300(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 121
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->access$400(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;)Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tab"
        }
    .end annotation

    return-void
.end method
