.class public Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$VodViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VodViewHolder"
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

    .line 235
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$VodViewHolder;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;

    .line 236
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0b02de

    .line 237
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$VodViewHolder;->genreText:Landroid/widget/TextView;

    const p1, 0x7f0b02df

    .line 238
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$VodViewHolder;->genreTitle:Landroid/widget/TextView;

    const p1, 0x7f0b02da

    .line 239
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$VodViewHolder;->genreChannelText:Landroid/widget/TextView;

    const p1, 0x7f0b02e0

    .line 240
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$VodViewHolder;->genreYear:Landroid/widget/TextView;

    const p1, 0x7f0b02dc

    .line 241
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$VodViewHolder;->genreImage:Landroid/widget/ImageView;

    const p1, 0x7f0b0598

    .line 242
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$VodViewHolder;->seeButton:Landroid/widget/Button;

    return-void
.end method

.method static synthetic access$000(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$VodViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$VodViewHolder;->genreText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$VodViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$VodViewHolder;->genreTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$VodViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$VodViewHolder;->genreChannelText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$VodViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$VodViewHolder;->genreYear:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$VodViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$VodViewHolder;->genreImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$VodViewHolder;)Landroid/widget/Button;
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$VodViewHolder;->seeButton:Landroid/widget/Button;

    return-object p0
.end method
