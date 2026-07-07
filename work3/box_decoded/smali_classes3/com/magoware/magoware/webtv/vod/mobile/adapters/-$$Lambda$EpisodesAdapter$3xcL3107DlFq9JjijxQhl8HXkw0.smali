.class public final synthetic Lcom/magoware/magoware/webtv/vod/mobile/adapters/-$$Lambda$EpisodesAdapter$3xcL3107DlFq9JjijxQhl8HXkw0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/-$$Lambda$EpisodesAdapter$3xcL3107DlFq9JjijxQhl8HXkw0;->f$0:Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/-$$Lambda$EpisodesAdapter$3xcL3107DlFq9JjijxQhl8HXkw0;->f$0:Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;->lambda$getEpisodeDetail$1$EpisodesAdapter(Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;)V

    return-void
.end method
