.class public final synthetic Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;II)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iput-object p2, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    iput p4, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Ljava/lang/Object;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 2
    iput p5, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iput-object p2, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput p3, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 7

    iget v0, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-object v1, v0

    check-cast v1, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter;

    iget-object v0, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/nettv/livestore/models/CategoryModel;

    iget v3, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$2:I

    iget-object v0, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter$LiveHomeViewHolder;

    move-object v5, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter;->$r8$lambda$m0XbSB99W4Xvyj2mFFskhYUrpOs(Lcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter;Lcom/nettv/livestore/models/CategoryModel;ILcom/nettv/livestore/adapter/RecyclerVodCategoryAdapter$LiveHomeViewHolder;Landroid/view/View;Z)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-object v1, v0

    check-cast v1, Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter;

    iget-object v0, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/nettv/livestore/models/SeriesModel;

    iget v3, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$2:I

    iget-object v0, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter$LiveHomeViewHolder;

    move-object v5, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter;->$r8$lambda$pwUo4NEQtQQbn6S4mCBbVl5KdC0(Lcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter;Lcom/nettv/livestore/models/SeriesModel;ILcom/nettv/livestore/adapter/RecyclerSeriesHomeAdapter$LiveHomeViewHolder;Landroid/view/View;Z)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-object v1, v0

    check-cast v1, Lcom/nettv/livestore/adapter/RecyclerLiveHomeAdapter;

    iget-object v0, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/nettv/livestore/models/EPGChannel;

    iget v3, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$2:I

    iget-object v0, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/nettv/livestore/adapter/RecyclerLiveHomeAdapter$LiveHomeViewHolder;

    move-object v5, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Lcom/nettv/livestore/adapter/RecyclerLiveHomeAdapter;->$r8$lambda$2yoG34Vz0KR4VrWdynE1n_UQgg0(Lcom/nettv/livestore/adapter/RecyclerLiveHomeAdapter;Lcom/nettv/livestore/models/EPGChannel;ILcom/nettv/livestore/adapter/RecyclerLiveHomeAdapter$LiveHomeViewHolder;Landroid/view/View;Z)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-object v1, v0

    check-cast v1, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;

    iget-object v0, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter$LiveChannelViewHolder;

    iget-object v0, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/nettv/livestore/models/EPGChannel;

    iget v4, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$2:I

    move-object v5, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;->$r8$lambda$iG_D0HyJMRLO3L7OdrEDOyPlUVY(Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter;Lcom/nettv/livestore/adapter/RecyclerLiveChannelAdapter$LiveChannelViewHolder;Lcom/nettv/livestore/models/EPGChannel;ILandroid/view/View;Z)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-object v1, v0

    check-cast v1, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;

    iget-object v0, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter$LiveHomeViewHolder;

    iget-object v0, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/nettv/livestore/models/CategoryModel;

    iget v4, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$2:I

    move-object v5, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;->$r8$lambda$xkU02pAH-1OpaSqeaxatSPhf_Ts(Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter;Lcom/nettv/livestore/adapter/RecyclerLiveCategoryAdapter$LiveHomeViewHolder;Lcom/nettv/livestore/models/CategoryModel;ILandroid/view/View;Z)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-object v1, v0

    check-cast v1, Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter;

    iget-object v0, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/nettv/livestore/models/CatchUpEpg;

    iget v3, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$2:I

    iget-object v0, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter$XCProgramViewHolder;

    move-object v5, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter;->$r8$lambda$CXWIqGL30bJaUwyw_JVzq_UMs8o(Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter;Lcom/nettv/livestore/models/CatchUpEpg;ILcom/nettv/livestore/adapter/ProgramRecyclerAdapter$XCProgramViewHolder;Landroid/view/View;Z)V

    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-object v1, v0

    check-cast v1, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter;

    iget-object v0, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter$VodViewHolder;

    iget-object v0, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/nettv/livestore/models/MovieCreditModel;

    iget v4, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$2:I

    move-object v5, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter;->$r8$lambda$n-wG2C6aBsv7vJ85ZQsIYdpKX3w(Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter;Lcom/nettv/livestore/adapter/MovieCreditRecyclerAdapter$VodViewHolder;Lcom/nettv/livestore/models/MovieCreditModel;ILandroid/view/View;Z)V

    return-void

    :pswitch_7
    iget-object v0, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-object v1, v0

    check-cast v1, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;

    iget-object v0, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/nettv/livestore/models/EpisodeModel;

    iget v3, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$2:I

    iget-object v0, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter$XCEpisodeViewHolder;

    move-object v5, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;->$r8$lambda$YNHGdPgWqUKbK52v0XdFFTgIUAk(Lcom/nettv/livestore/adapter/EpisodeRecyclerAdapter;Lcom/nettv/livestore/models/EpisodeModel;ILcom/nettv/livestore/adapter/EpisodeRecyclerAdapter$XCEpisodeViewHolder;Landroid/view/View;Z)V

    return-void

    :pswitch_8
    iget-object v0, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-object v1, v0

    check-cast v1, Lcom/nettv/livestore/adapter/EpisodeHorizontalRecyclerAdapter;

    iget-object v0, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/nettv/livestore/models/EpisodeModel;

    iget v3, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$2:I

    iget-object v0, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/nettv/livestore/adapter/EpisodeHorizontalRecyclerAdapter$EpisodeViewHolder;

    move-object v5, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Lcom/nettv/livestore/adapter/EpisodeHorizontalRecyclerAdapter;->$r8$lambda$5SmOeYMWHH0JnpAnGs90bZijYJ0(Lcom/nettv/livestore/adapter/EpisodeHorizontalRecyclerAdapter;Lcom/nettv/livestore/models/EpisodeModel;ILcom/nettv/livestore/adapter/EpisodeHorizontalRecyclerAdapter$EpisodeViewHolder;Landroid/view/View;Z)V

    return-void

    :pswitch_9
    iget-object v0, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-object v1, v0

    check-cast v1, Lcom/nettv/livestore/adapter/CastRecyclerAdapter;

    iget-object v0, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/nettv/livestore/models/CastModel;

    iget v3, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$2:I

    iget-object v0, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$VodStalkerHolder;

    move-object v5, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Lcom/nettv/livestore/adapter/CastRecyclerAdapter;->$r8$lambda$fX_ZNiMf35-cC9PVpu4wuW1UZx8(Lcom/nettv/livestore/adapter/CastRecyclerAdapter;Lcom/nettv/livestore/models/CastModel;ILcom/nettv/livestore/adapter/CastRecyclerAdapter$VodStalkerHolder;Landroid/view/View;Z)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-object v1, v0

    check-cast v1, Lcom/nettv/livestore/adapter/RecyclerVodHomeAdapter;

    iget-object v0, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/nettv/livestore/models/MovieModel;

    iget v3, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$2:I

    iget-object v0, p0, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/nettv/livestore/adapter/RecyclerVodHomeAdapter$LiveHomeViewHolder;

    move-object v5, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Lcom/nettv/livestore/adapter/RecyclerVodHomeAdapter;->$r8$lambda$zR1bXQcQyARYjUl0nynZuxBZj-0(Lcom/nettv/livestore/adapter/RecyclerVodHomeAdapter;Lcom/nettv/livestore/models/MovieModel;ILcom/nettv/livestore/adapter/RecyclerVodHomeAdapter$LiveHomeViewHolder;Landroid/view/View;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
