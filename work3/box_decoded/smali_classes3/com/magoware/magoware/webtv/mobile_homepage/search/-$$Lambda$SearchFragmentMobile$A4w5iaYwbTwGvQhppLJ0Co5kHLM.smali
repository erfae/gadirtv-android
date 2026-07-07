.class public final synthetic Lcom/magoware/magoware/webtv/mobile_homepage/search/-$$Lambda$SearchFragmentMobile$A4w5iaYwbTwGvQhppLJ0Co5kHLM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/-$$Lambda$SearchFragmentMobile$A4w5iaYwbTwGvQhppLJ0Co5kHLM;->f$0:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/-$$Lambda$SearchFragmentMobile$A4w5iaYwbTwGvQhppLJ0Co5kHLM;->f$0:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->lambda$getVodAndTvShows$1$SearchFragmentMobile(Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;)V

    return-void
.end method
