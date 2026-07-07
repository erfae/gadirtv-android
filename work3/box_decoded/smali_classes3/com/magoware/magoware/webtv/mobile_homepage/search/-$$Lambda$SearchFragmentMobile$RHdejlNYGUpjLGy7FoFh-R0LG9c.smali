.class public final synthetic Lcom/magoware/magoware/webtv/mobile_homepage/search/-$$Lambda$SearchFragmentMobile$RHdejlNYGUpjLGy7FoFh-R0LG9c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/-$$Lambda$SearchFragmentMobile$RHdejlNYGUpjLGy7FoFh-R0LG9c;->f$0:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;

    iput p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/-$$Lambda$SearchFragmentMobile$RHdejlNYGUpjLGy7FoFh-R0LG9c;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/-$$Lambda$SearchFragmentMobile$RHdejlNYGUpjLGy7FoFh-R0LG9c;->f$0:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;

    iget v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/-$$Lambda$SearchFragmentMobile$RHdejlNYGUpjLGy7FoFh-R0LG9c;->f$1:I

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchFragmentMobile;->lambda$setProgressBarVisibilityUIThread$3$SearchFragmentMobile(I)V

    return-void
.end method
