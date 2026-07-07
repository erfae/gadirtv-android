.class public final synthetic Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$DetailFragment$bxUBkX3LW-JjwpIt_z6X6APSqW0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$DetailFragment$bxUBkX3LW-JjwpIt_z6X6APSqW0;->f$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$DetailFragment$bxUBkX3LW-JjwpIt_z6X6APSqW0;->f$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->lambda$loadEpisodeDetails$9$DetailFragment(Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;)V

    return-void
.end method
