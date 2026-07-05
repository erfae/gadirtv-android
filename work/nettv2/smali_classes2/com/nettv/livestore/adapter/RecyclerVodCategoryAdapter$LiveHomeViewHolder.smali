.class public Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter$LiveHomeViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RecyclerVodCategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LiveHomeViewHolder"
.end annotation


# instance fields
.field public txt_count:Landroid/widget/TextView;

.field public txt_name:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b03e4

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter$LiveHomeViewHolder;->txt_name:Landroid/widget/TextView;

    const v0, 0x7f0b03c7

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter$LiveHomeViewHolder;->txt_count:Landroid/widget/TextView;

    return-void
.end method
