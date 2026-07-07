.class Landroidx/leanback/tab/LeanbackTabLayout$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "LeanbackTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/tab/LeanbackTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field final mLeanbackTabLayout:Landroidx/leanback/tab/LeanbackTabLayout;


# direct methods
.method constructor <init>(Landroidx/leanback/tab/LeanbackTabLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "leanbackTabLayout"
        }
    .end annotation

    .line 146
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 147
    iput-object p1, p0, Landroidx/leanback/tab/LeanbackTabLayout$AdapterDataSetObserver;->mLeanbackTabLayout:Landroidx/leanback/tab/LeanbackTabLayout;

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 152
    iget-object v0, p0, Landroidx/leanback/tab/LeanbackTabLayout$AdapterDataSetObserver;->mLeanbackTabLayout:Landroidx/leanback/tab/LeanbackTabLayout;

    invoke-virtual {v0}, Landroidx/leanback/tab/LeanbackTabLayout;->updatePageTabs()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 157
    iget-object v0, p0, Landroidx/leanback/tab/LeanbackTabLayout$AdapterDataSetObserver;->mLeanbackTabLayout:Landroidx/leanback/tab/LeanbackTabLayout;

    invoke-virtual {v0}, Landroidx/leanback/tab/LeanbackTabLayout;->updatePageTabs()V

    return-void
.end method
