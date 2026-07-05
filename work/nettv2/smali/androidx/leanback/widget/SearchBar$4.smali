.class Landroidx/leanback/widget/SearchBar$4;
.super Ljava/lang/Object;
.source "SearchBar.java"

# interfaces
.implements Landroidx/leanback/widget/SearchEditText$OnKeyboardDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/leanback/widget/SearchBar;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/leanback/widget/SearchBar;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/SearchBar;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/SearchBar$4;->this$0:Landroidx/leanback/widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyboardDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/SearchBar$4;->this$0:Landroidx/leanback/widget/SearchBar;

    iget-object v1, v0, Landroidx/leanback/widget/SearchBar;->mSearchBarListener:Landroidx/leanback/widget/SearchBar$SearchBarListener;

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, Landroidx/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    invoke-interface {v1, v0}, Landroidx/leanback/widget/SearchBar$SearchBarListener;->onKeyboardDismiss(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
