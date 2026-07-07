.class public Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ChannelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field private channelIcon:Landroid/widget/ImageView;

.field private channelName:Landroid/widget/TextView;

.field private mChannelItem:Landroidx/constraintlayout/widget/ConstraintLayout;

.field final synthetic this$0:Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter;

.field private title:Ljava/lang/String;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "view"
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter$MyViewHolder;->this$0:Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter;

    .line 109
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 110
    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter$MyViewHolder;->view:Landroid/view/View;

    const p1, 0x7f0b0156

    .line 111
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter$MyViewHolder;->channelIcon:Landroid/widget/ImageView;

    const p1, 0x7f0b015c

    .line 112
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter$MyViewHolder;->channelName:Landroid/widget/TextView;

    const p1, 0x7f0b0495

    .line 113
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter$MyViewHolder;->mChannelItem:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method static synthetic access$000(Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter$MyViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter$MyViewHolder;->channelIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter$MyViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter$MyViewHolder;->channelName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter$MyViewHolder;)Ljava/lang/String;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter$MyViewHolder;->title:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter$MyViewHolder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter$MyViewHolder;->title:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter$MyViewHolder;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter$MyViewHolder;->mChannelItem:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method static synthetic access$400(Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter$MyViewHolder;)Landroid/view/View;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter$MyViewHolder;->view:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/channelMenu/carousel/ChannelAdapter$MyViewHolder;->view:Landroid/view/View;

    return-object v0
.end method
