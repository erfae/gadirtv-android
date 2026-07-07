.class public final synthetic Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    iput p2, p0, Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 4

    iget v0, p0, Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_2e

    goto :goto_26

    :pswitch_6
    iget-object v0, p0, Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v0, Lcom/nettv/livestore/adapter/LiveSortRecyclerAdapter$HideCategoryViewHolder;

    invoke-static {v0, p1, p2}, Lcom/nettv/livestore/adapter/LiveSortRecyclerAdapter;->$r8$lambda$9GehWK7oaAXfG_L1DhhZ8E8LzNo(Lcom/nettv/livestore/adapter/LiveSortRecyclerAdapter$HideCategoryViewHolder;Landroid/view/View;Z)V

    return-void

    :pswitch_e
    iget-object v0, p0, Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v0, Lcom/nettv/livestore/adapter/LanguageRecyclerViewAdapter$HideCategoryViewHolder;

    invoke-static {v0, p1, p2}, Lcom/nettv/livestore/adapter/LanguageRecyclerViewAdapter;->$r8$lambda$iyi8w1t_mISOT-4vJGIGX0pKJ3Y(Lcom/nettv/livestore/adapter/LanguageRecyclerViewAdapter$HideCategoryViewHolder;Landroid/view/View;Z)V

    return-void

    :pswitch_16
    iget-object v0, p0, Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v0, Lcom/nettv/livestore/adapter/HideCategoryRecyclerViewAdapter$HideCategoryViewHolder;

    invoke-static {v0, p1, p2}, Lcom/nettv/livestore/adapter/HideCategoryRecyclerViewAdapter;->$r8$lambda$0NYlQs12mLRa2pa5QpU9XaifjHI(Lcom/nettv/livestore/adapter/HideCategoryRecyclerViewAdapter$HideCategoryViewHolder;Landroid/view/View;Z)V

    return-void

    :pswitch_1e
    iget-object v0, p0, Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v0, Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter$CategoryListViewHolder;

    invoke-static {v0, p1, p2}, Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter;->$r8$lambda$uBeM9StgotAtEy1memOYGb5vF4Y(Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter$CategoryListViewHolder;Landroid/view/View;Z)V

    return-void

    :goto_26
    iget-object v0, p0, Lcom/nettv/livestore/adapter/MyGroupRecyclerAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v0, Lcom/nettv/livestore/adapter/SubtitleColorRecyclerAdapter$SubtitleColorViewHolder;

    invoke-static {v0, p1, p2}, Lcom/nettv/livestore/adapter/SubtitleColorRecyclerAdapter;->$r8$lambda$Aj9UnZRtCQnwc8FdDGLtsqoVq_g(Lcom/nettv/livestore/adapter/SubtitleColorRecyclerAdapter$SubtitleColorViewHolder;Landroid/view/View;Z)V

    return-void

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_16
        :pswitch_e
        :pswitch_6
    .end packed-switch
.end method
