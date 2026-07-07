.class public final synthetic Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$MainVodActivityMobile$IlMEGyKTcjT7cmYpX6mDJ8A77Ak;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$MainVodActivityMobile$IlMEGyKTcjT7cmYpX6mDJ8A77Ak;->f$0:Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$MainVodActivityMobile$IlMEGyKTcjT7cmYpX6mDJ8A77Ak;->f$0:Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->lambda$getSettings$7$MainVodActivityMobile(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V

    return-void
.end method
