.class public Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter$ViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "SeeAllVodAdapter$ViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter$ViewHolder;Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "target",
            "source"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter$ViewHolder_ViewBinding;->target:Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter$ViewHolder;

    .line 22
    const-class v0, Landroidx/cardview/widget/CardView;

    const v1, 0x7f0b0122

    const-string v2, "field \'cardView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter$ViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    .line 23
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0b0659

    const-string v2, "field \'thumbnailImageView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter$ViewHolder_ViewBinding;->target:Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter$ViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 31
    iput-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter$ViewHolder_ViewBinding;->target:Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter$ViewHolder;

    .line 33
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter$ViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    .line 34
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    return-void

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
