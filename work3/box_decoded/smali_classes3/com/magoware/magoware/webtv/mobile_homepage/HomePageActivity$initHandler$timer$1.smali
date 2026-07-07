.class public final Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity$initHandler$timer$1;
.super Ljava/util/TimerTask;
.source "HomePageActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/magoware/magoware/webtv/mobile_homepage/HomePageActivity$initHandler$timer$1",
        "Ljava/util/TimerTask;",
        "run",
        "",
        "app_dmcenterRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity$initHandler$timer$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity$initHandler$timer$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;->setShouldRefresh(Z)V

    return-void
.end method
