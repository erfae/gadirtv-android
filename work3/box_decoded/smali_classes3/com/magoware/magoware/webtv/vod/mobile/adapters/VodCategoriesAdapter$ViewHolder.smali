.class public Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "VodCategoriesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field divider:Landroid/view/View;

.field horizontalRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field movieType:Landroid/widget/TextView;

.field seeAlltextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemView"
        }
    .end annotation

    .line 107
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b06df

    .line 108
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter$ViewHolder;->movieType:Landroid/widget/TextView;

    const v0, 0x7f0b0597

    .line 109
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter$ViewHolder;->seeAlltextView:Landroid/widget/TextView;

    const v0, 0x7f0b06e0

    .line 110
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter$ViewHolder;->horizontalRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0b009c

    .line 111
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodCategoriesAdapter$ViewHolder;->divider:Landroid/view/View;

    return-void
.end method
