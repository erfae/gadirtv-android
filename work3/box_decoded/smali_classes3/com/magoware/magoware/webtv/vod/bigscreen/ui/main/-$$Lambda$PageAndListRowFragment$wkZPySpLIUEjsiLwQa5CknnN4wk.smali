.class public final synthetic Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$PageAndListRowFragment$wkZPySpLIUEjsiLwQa5CknnN4wk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$PageAndListRowFragment$wkZPySpLIUEjsiLwQa5CknnN4wk;->f$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$PageAndListRowFragment$wkZPySpLIUEjsiLwQa5CknnN4wk;->f$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;->lambda$fetchAssetsInformation$3$PageAndListRowFragment(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V

    return-void
.end method
