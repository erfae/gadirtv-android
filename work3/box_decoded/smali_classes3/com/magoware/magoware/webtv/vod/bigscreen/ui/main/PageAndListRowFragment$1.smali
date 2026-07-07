.class Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment$1;
.super Ljava/lang/Object;
.source "PageAndListRowFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageAndListRowFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 61
    sget-object v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VodCategoryCarousels;->categoriesCarousels:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const-string v0, " categoriesCarouselscategoriesCarouselscategoriesCarousels"

    .line 62
    invoke-static {v0}, Lcom/framework/utilityframe/log/log;->i(Ljava/lang/String;)V

    return-void
.end method
