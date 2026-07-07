.class public Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "MyHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView$OnScrollListener;
    }
.end annotation


# instance fields
.field public onScrollListener:Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, v0}, Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, p2, v0}, Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;->onScrollListener:Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView$OnScrollListener;

    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "l",
            "t",
            "oldl",
            "oldt"
        }
    .end annotation

    .line 27
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 28
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;->onScrollListener:Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 29
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView$OnScrollListener;->onScrollChanged(IIII)V

    :cond_0
    return-void
.end method

.method public setOnScrollListener(Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView$OnScrollListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onScrollListener"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;->onScrollListener:Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView$OnScrollListener;

    return-void
.end method
