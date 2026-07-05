.class public final synthetic Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public final synthetic f$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V
    .registers 5

    iput p4, p0, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda1;->f$0:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iput-object p2, p0, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda1;->f$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput p3, p0, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda1;->f$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 6

    iget v0, p0, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_68

    goto :goto_5a

    :pswitch_6
    iget-object v0, p0, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda1;->f$0:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;

    iget-object v1, p0, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda1;->f$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v1, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter$XCSeasonViewHolder;

    iget v2, p0, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, v2, p1, p2}, Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;->$r8$lambda$a6aDQ3T_mR6bcMlTEt52E_SR4ss(Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter;Lcom/nettv/livestore/adapter/SeasonRecyclerAdapter$XCSeasonViewHolder;ILandroid/view/View;Z)V

    return-void

    :pswitch_14
    iget-object v0, p0, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda1;->f$0:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;

    iget-object v1, p0, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda1;->f$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v1, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter$ChannelHolder;

    iget v2, p0, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, v2, p1, p2}, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;->$r8$lambda$a9UadJXM2Iuu9bjg1k36c-iNEpU(Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter$ChannelHolder;ILandroid/view/View;Z)V

    return-void

    :pswitch_22
    iget-object v0, p0, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda1;->f$0:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/nettv/livestore/adapter/DateRecyclerAdapter;

    iget-object v1, p0, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda1;->f$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v1, Lcom/nettv/livestore/adapter/DateRecyclerAdapter$XCDateViewHolder;

    iget v2, p0, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, v2, p1, p2}, Lcom/nettv/livestore/adapter/DateRecyclerAdapter;->$r8$lambda$ZTOKIhPjhKGI_tUVm30cuXOqkyQ(Lcom/nettv/livestore/adapter/DateRecyclerAdapter;Lcom/nettv/livestore/adapter/DateRecyclerAdapter$XCDateViewHolder;ILandroid/view/View;Z)V

    return-void

    :pswitch_30
    iget-object v0, p0, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda1;->f$0:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter;

    iget-object v1, p0, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda1;->f$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v1, Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter$ChannelHolder;

    iget v2, p0, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, v2, p1, p2}, Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter;->$r8$lambda$94vkamJMJcfzaP75Ziwbyh17dYs(Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter;Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter$ChannelHolder;ILandroid/view/View;Z)V

    return-void

    :pswitch_3e
    iget-object v0, p0, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda1;->f$0:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter;

    iget-object v1, p0, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda1;->f$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v1, Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter$CategoryHolder;

    iget v2, p0, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, v2, p1, p2}, Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter;->$r8$lambda$tRLOWZGQIRegxECQG95dXYjVwK0(Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter;Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter$CategoryHolder;ILandroid/view/View;Z)V

    return-void

    :pswitch_4c
    iget-object v0, p0, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda1;->f$0:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/nettv/livestore/adapter/VodRecyclerAdapter;

    iget-object v1, p0, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda1;->f$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v1, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$VodViewHolder;

    iget v2, p0, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, v2, p1, p2}, Lcom/nettv/livestore/adapter/VodRecyclerAdapter;->$r8$lambda$hT-cjoZ3anGra7F8fBEzS6wd2yQ(Lcom/nettv/livestore/adapter/VodRecyclerAdapter;Lcom/nettv/livestore/adapter/VodRecyclerAdapter$VodViewHolder;ILandroid/view/View;Z)V

    return-void

    :goto_5a
    iget-object v0, p0, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda1;->f$0:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;

    iget-object v1, p0, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda1;->f$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v1, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter$VodViewHolder;

    iget v2, p0, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, v2, p1, p2}, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;->$r8$lambda$XrAj3FKmcxgGoss_QLNrPO0C5GY(Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter$VodViewHolder;ILandroid/view/View;Z)V

    return-void

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_3e
        :pswitch_30
        :pswitch_22
        :pswitch_14
        :pswitch_6
    .end packed-switch
.end method
