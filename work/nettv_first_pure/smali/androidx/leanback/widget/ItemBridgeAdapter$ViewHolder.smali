.class public Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ItemBridgeAdapter.java"

# interfaces
.implements Landroidx/leanback/widget/FacetProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/ItemBridgeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public mExtraObject:Ljava/lang/Object;

.field public final mFocusChangeListener:Landroidx/leanback/widget/ItemBridgeAdapter$OnFocusChangeListener;

.field public final mHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

.field public mItem:Ljava/lang/Object;

.field public final mPresenter:Landroidx/leanback/widget/Presenter;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/ItemBridgeAdapter;Landroidx/leanback/widget/Presenter;Landroid/view/View;Landroidx/leanback/widget/Presenter$ViewHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    new-instance p3, Landroidx/leanback/widget/ItemBridgeAdapter$OnFocusChangeListener;

    invoke-direct {p3, p1}, Landroidx/leanback/widget/ItemBridgeAdapter$OnFocusChangeListener;-><init>(Landroidx/leanback/widget/ItemBridgeAdapter;)V

    iput-object p3, p0, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->mFocusChangeListener:Landroidx/leanback/widget/ItemBridgeAdapter$OnFocusChangeListener;

    .line 3
    iput-object p2, p0, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->mPresenter:Landroidx/leanback/widget/Presenter;

    .line 4
    iput-object p4, p0, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->mHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    return-void
.end method


# virtual methods
.method public final getExtraObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->mExtraObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getFacet(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->mHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/Presenter$ViewHolder;->getFacet(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getItem()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->mItem:Ljava/lang/Object;

    return-object v0
.end method

.method public final getPresenter()Landroidx/leanback/widget/Presenter;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->mPresenter:Landroidx/leanback/widget/Presenter;

    return-object v0
.end method

.method public final getViewHolder()Landroidx/leanback/widget/Presenter$ViewHolder;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->mHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    return-object v0
.end method

.method public setExtraObject(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->mExtraObject:Ljava/lang/Object;

    return-void
.end method
