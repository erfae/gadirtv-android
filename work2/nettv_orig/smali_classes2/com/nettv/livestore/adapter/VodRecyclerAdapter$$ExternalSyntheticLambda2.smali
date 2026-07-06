.class public final synthetic Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Ljava/lang/Object;II)V
    .locals 0

    iput p4, p0, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda2;->f$0:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iput-object p2, p0, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    iput p3, p0, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda2;->f$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    iget v0, p0, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda2;->f$0:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    iget-object v1, p0, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/nettv/livestore/models/EPGChannel;

    iget v2, p0, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda2;->f$2:I

    invoke-static {v0, v1, v2, p1}, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->$r8$lambda$jQyQaswVEtbQnBWegif7Luevs8w(Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;Lcom/nettv/livestore/models/EPGChannel;ILandroid/view/View;)Z

    move-result p1

    return p1

    :pswitch_1
    iget-object v0, p0, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda2;->f$0:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter;

    iget-object v1, p0, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p0, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda2;->f$2:I

    invoke-static {v0, v1, v2, p1}, Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter;->$r8$lambda$I_nrDeXWOon84_B7YHfRHTiDYLw(Lcom/nettv/livestore/adapter/AddCategoryRecyclerAdapter;Ljava/lang/String;ILandroid/view/View;)Z

    move-result p1

    return p1

    :pswitch_2
    iget-object v0, p0, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda2;->f$0:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/nettv/livestore/adapter/VodRecyclerAdapter;

    iget-object v1, p0, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/nettv/livestore/models/MovieModel;

    iget v2, p0, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda2;->f$2:I

    invoke-static {v0, v1, v2, p1}, Lcom/nettv/livestore/adapter/VodRecyclerAdapter;->$r8$lambda$I989BLd83wTkctREcuhubC-ltRw(Lcom/nettv/livestore/adapter/VodRecyclerAdapter;Lcom/nettv/livestore/models/MovieModel;ILandroid/view/View;)Z

    move-result p1

    return p1

    :goto_0
    iget-object v0, p0, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda2;->f$0:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;

    iget-object v1, p0, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/nettv/livestore/models/SeriesModel;

    iget v2, p0, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda2;->f$2:I

    invoke-static {v0, v1, v2, p1}, Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;->$r8$lambda$yQWsf5AugcVQK6tGszF80IEJEDI(Lcom/nettv/livestore/adapter/SeriesRecyclerAdapter;Lcom/nettv/livestore/models/SeriesModel;ILandroid/view/View;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
