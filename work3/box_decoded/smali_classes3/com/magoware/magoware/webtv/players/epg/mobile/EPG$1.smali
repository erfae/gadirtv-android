.class Lcom/magoware/magoware/webtv/players/epg/mobile/EPG$1;
.super Ljava/lang/Object;
.source "EPG.java"

# interfaces
.implements Lcom/squareup/picasso/Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->drawChannelItem(Landroid/graphics/Canvas;ILandroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;

.field final synthetic val$imageURL:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$imageURL"
        }
    .end annotation

    .line 513
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG$1;->this$0:Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG$1;->val$imageURL:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorDrawable"
        }
    .end annotation

    return-void
.end method

.method public onBitmapLoaded(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bitmap",
            "from"
        }
    .end annotation

    .line 516
    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG$1;->this$0:Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;

    invoke-static {p2}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->access$100(Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;)Ljava/util/Map;

    move-result-object p2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG$1;->val$imageURL:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG$1;->this$0:Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->redraw()V

    .line 518
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG$1;->this$0:Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->access$200(Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG$1;->val$imageURL:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onPrepareLoad(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "placeHolderDrawable"
        }
    .end annotation

    return-void
.end method
