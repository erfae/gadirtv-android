.class public Landroidx/leanback/supportleanbackshowcase/utils/ResourceCache;
.super Ljava/lang/Object;
.source "ResourceCache.java"


# instance fields
.field private final mCachedViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/utils/ResourceCache;->mCachedViews:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public getViewById(Landroid/view/View;I)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ViewType:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)TViewType;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/utils/ResourceCache;->mCachedViews:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    .line 31
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 32
    iget-object p1, p0, Landroidx/leanback/supportleanbackshowcase/utils/ResourceCache;->mCachedViews:Landroid/util/SparseArray;

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method
