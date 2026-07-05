.class Landroidx/leanback/widget/SearchBar$6;
.super Ljava/lang/Object;
.source "SearchBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Landroidx/leanback/widget/SearchBar$6;->this$0:Landroidx/leanback/widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/leanback/widget/SearchBar$6;->this$0:Landroidx/leanback/widget/SearchBar;

    .line 2
    iget-boolean v0, p1, Landroidx/leanback/widget/SearchBar;->mRecognizing:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroidx/leanback/widget/SearchBar;->stopRecognition()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroidx/leanback/widget/SearchBar;->startRecognition()V

    :goto_0
    return-void
.end method
