.class public final synthetic Lcom/magoware/magoware/webtv/mobile_homepage/tv/-$$Lambda$HomePageRows$eZnGvtyv2_b0Nh_ToL4gLhn52c0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/-$$Lambda$HomePageRows$eZnGvtyv2_b0Nh_ToL4gLhn52c0;->f$0:Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/-$$Lambda$HomePageRows$eZnGvtyv2_b0Nh_ToL4gLhn52c0;->f$0:Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;

    check-cast p1, Lcom/magoware/magoware/webtv/data/Resource;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->lambda$initPausedMoviesObserver$6$HomePageRows(Lcom/magoware/magoware/webtv/data/Resource;)V

    return-void
.end method
