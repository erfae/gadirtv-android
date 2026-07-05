.class Landroidx/leanback/widget/SearchBar$5$1;
.super Ljava/lang/Object;
.source "SearchBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/leanback/widget/SearchBar$5;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Landroidx/leanback/widget/SearchBar$5;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/SearchBar$5;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/SearchBar$5$1;->this$1:Landroidx/leanback/widget/SearchBar$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/SearchBar$5$1;->this$1:Landroidx/leanback/widget/SearchBar$5;

    iget-object v0, v0, Landroidx/leanback/widget/SearchBar$5;->this$0:Landroidx/leanback/widget/SearchBar;

    .line 2
    iget-object v1, v0, Landroidx/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Landroidx/leanback/widget/SearchBar;->mSearchBarListener:Landroidx/leanback/widget/SearchBar$SearchBarListener;

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Landroidx/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    invoke-interface {v1, v0}, Landroidx/leanback/widget/SearchBar$SearchBarListener;->onSearchQuerySubmit(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
