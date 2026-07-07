.class public Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProgramViewHolder"
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

    .line 216
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;

    .line 217
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0b02de

    .line 218
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;->genreText:Landroid/widget/TextView;

    const p1, 0x7f0b02df

    .line 219
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;->genreTitle:Landroid/widget/TextView;

    const p1, 0x7f0b02da

    .line 220
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;->genreChannelText:Landroid/widget/TextView;

    const p1, 0x7f0b02e0

    .line 221
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;->genreYear:Landroid/widget/TextView;

    const p1, 0x7f0b02dc

    .line 222
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;->genreImage:Landroid/widget/ImageView;

    const p1, 0x7f0b0598

    .line 223
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;->seeButton:Landroid/widget/Button;

    return-void
.end method

.method static synthetic access$1200(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;->genreText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;)Landroid/widget/Button;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;->seeButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;->genreTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;->genreYear:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;->genreChannelText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;->genreImage:Landroid/widget/ImageView;

    return-object p0
.end method
