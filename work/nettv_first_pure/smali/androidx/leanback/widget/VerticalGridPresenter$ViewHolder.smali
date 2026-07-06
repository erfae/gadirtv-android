.class public Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;
.super Landroidx/leanback/widget/Presenter$ViewHolder;
.source "VerticalGridPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/VerticalGridPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public final mGridView:Landroidx/leanback/widget/VerticalGridView;

.field public mInitialized:Z

.field public mItemBridgeAdapter:Landroidx/leanback/widget/ItemBridgeAdapter;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/VerticalGridView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/leanback/widget/Presenter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;->mGridView:Landroidx/leanback/widget/VerticalGridView;

    return-void
.end method


# virtual methods
.method public getGridView()Landroidx/leanback/widget/VerticalGridView;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;->mGridView:Landroidx/leanback/widget/VerticalGridView;

    return-object v0
.end method
