.class public Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$TvShowViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TvShowViewHolder"
.end annotation


# instance fields
.field private genreChannelText:Landroid/widget/TextView;

.field private genreImage:Landroid/widget/ImageView;

.field private genreText:Landroid/widget/TextView;

.field private genreTitle:Landroid/widget/TextView;

.field private genreYear:Landroid/widget/TextView;

.field private seeButton:Landroid/widget/Button;

.field final synthetic this$0:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;Landroid/view/View;)V
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

    .line 254
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$TvShowViewHolder;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;

    .line 255
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0b02de

    .line 256
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$TvShowViewHolder;->genreText:Landroid/widget/TextView;

    const p1, 0x7f0b02df

    .line 257
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$TvShowViewHolder;->genreTitle:Landroid/widget/TextView;

    const p1, 0x7f0b02da

    .line 258
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$TvShowViewHolder;->genreChannelText:Landroid/widget/TextView;

    const p1, 0x7f0b02e0

    .line 259
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$TvShowViewHolder;->genreYear:Landroid/widget/TextView;

    const p1, 0x7f0b02dc

    .line 260
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$TvShowViewHolder;->genreImage:Landroid/widget/ImageView;

    const p1, 0x7f0b0598

    .line 261
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$TvShowViewHolder;->seeButton:Landroid/widget/Button;

    return-void
.end method

.method static synthetic access$1000(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$TvShowViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 246
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$TvShowViewHolder;->genreImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$TvShowViewHolder;)Landroid/widget/Button;
    .locals 0

    .line 246
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$TvShowViewHolder;->seeButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$600(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$TvShowViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 246
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$TvShowViewHolder;->genreText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$TvShowViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 246
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$TvShowViewHolder;->genreTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$TvShowViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 246
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$TvShowViewHolder;->genreChannelText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$TvShowViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 246
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$TvShowViewHolder;->genreYear:Landroid/widget/TextView;

    return-object p0
.end method
