.class public final synthetic Lcom/nettv/livestore/adapter/RecyclerVodHomeAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public final synthetic f$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public final synthetic f$2:Lio/realm/RealmObject;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lio/realm/RealmObject;II)V
    .registers 6

    iput p5, p0, Lcom/nettv/livestore/adapter/RecyclerVodHomeAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/nettv/livestore/adapter/RecyclerVodHomeAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iput-object p2, p0, Lcom/nettv/livestore/adapter/RecyclerVodHomeAdapter$$ExternalSyntheticLambda0;->f$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lcom/nettv/livestore/adapter/RecyclerVodHomeAdapter$$ExternalSyntheticLambda0;->f$2:Lio/realm/RealmObject;

    iput p4, p0, Lcom/nettv/livestore/adapter/RecyclerVodHomeAdapter$$ExternalSyntheticLambda0;->f$3:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10

    iget v0, p0, Lcom/nettv/livestore/adapter/RecyclerVodHomeAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_4e

    goto :goto_36

    :pswitch_6
    iget-object v0, p0, Lcom/nettv/livestore/adapter/RecyclerVodHomeAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-object v1, v0

    check-cast v1, Lcom/nettv/livestore/adapter/RecyclerLiveHomeAdapter;

    iget-object v0, p0, Lcom/nettv/livestore/adapter/RecyclerVodHomeAdapter$$ExternalSyntheticLambda0;->f$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object v2, v0

    check-cast v2, Lcom/nettv/livestore/adapter/RecyclerLiveHomeAdapter$LiveHomeViewHolder;

    iget-object v0, p0, Lcom/nettv/livestore/adapter/RecyclerVodHomeAdapter$$ExternalSyntheticLambda0;->f$2:Lio/realm/RealmObject;

    move-object v3, v0

    check-cast v3, Lcom/nettv/livestore/models/EPGChannel;

    iget v4, p0, Lcom/nettv/livestore/adapter/RecyclerVodHomeAdapter$$ExternalSyntheticLambda0;->f$3:I

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lcom/nettv/livestore/adapter/RecyclerLiveHomeAdapter;->$r8$lambda$S__gHA42OHtXApBisYSISvWrdiI(Lcom/nettv/livestore/adapter/RecyclerLiveHomeAdapter;Lcom/nettv/livestore/adapter/RecyclerLiveHomeAdapter$LiveHomeViewHolder;Lcom/nettv/livestore/models/EPGChannel;ILandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :pswitch_1e
    iget-object v0, p0, Lcom/nettv/livestore/adapter/RecyclerVodHomeAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-object v1, v0

    check-cast v1, Lcom/nettv/livestore/adapter/RecyclerVodHomeAdapter;

    iget-object v0, p0, Lcom/nettv/livestore/adapter/RecyclerVodHomeAdapter$$ExternalSyntheticLambda0;->f$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object v2, v0

    check-cast v2, Lcom/nettv/livestore/adapter/RecyclerVodHomeAdapter$LiveHomeViewHolder;

    iget-object v0, p0, Lcom/nettv/livestore/adapter/RecyclerVodHomeAdapter$$ExternalSyntheticLambda0;->f$2:Lio/realm/RealmObject;

    move-object v3, v0

    check-cast v3, Lcom/nettv/livestore/models/MovieModel;

    iget v4, p0, Lcom/nettv/livestore/adapter/RecyclerVodHomeAdapter$$ExternalSyntheticLambda0;->f$3:I

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lcom/nettv/livestore/adapter/RecyclerVodHomeAdapter;->$r8$lambda$1rIKXuZLO0YSsDHQmC2zFGSHFk0(Lcom/nettv/livestore/adapter/RecyclerVodHomeAdapter;Lcom/nettv/livestore/adapter/RecyclerVodHomeAdapter$LiveHomeViewHolder;Lcom/nettv/livestore/models/MovieModel;ILandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :goto_36
    iget-object v0, p0, Lcom/nettv/livestore/adapter/RecyclerVodHomeAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-object v1, v0

    check-cast v1, Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter;

    iget-object v0, p0, Lcom/nettv/livestore/adapter/RecyclerVodHomeAdapter$$ExternalSyntheticLambda0;->f$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object v2, v0

    check-cast v2, Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter$LiveHomeViewHolder;

    iget-object v0, p0, Lcom/nettv/livestore/adapter/RecyclerVodHomeAdapter$$ExternalSyntheticLambda0;->f$2:Lio/realm/RealmObject;

    move-object v3, v0

    check-cast v3, Lcom/nettv/livestore/models/SeriesModel;

    iget v4, p0, Lcom/nettv/livestore/adapter/RecyclerVodHomeAdapter$$ExternalSyntheticLambda0;->f$3:I

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter;->$r8$lambda$lBJXGbKRZkuoUA1Ao6iST7IM1dI(Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter;Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter$LiveHomeViewHolder;Lcom/nettv/livestore/models/SeriesModel;ILandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_6
    .end packed-switch
.end method
