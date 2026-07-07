.class public Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "EpisodesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field episodeImage:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b065a
    .end annotation
.end field

.field episodeNumberText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b06e5
    .end annotation
.end field

.field final synthetic this$0:Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "itemView"
        }
    .end annotation

    .line 159
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter$ViewHolder;->this$0:Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;

    .line 160
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 161
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
