.class public final synthetic Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$MainMenuLayers$1A8f8XQduqfg8zmuVznNfUztVKU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/linkvue/MainMenuLayers;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/linkvue/MainMenuLayers;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$MainMenuLayers$1A8f8XQduqfg8zmuVznNfUztVKU;->f$0:Lcom/magoware/magoware/webtv/linkvue/MainMenuLayers;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$MainMenuLayers$1A8f8XQduqfg8zmuVznNfUztVKU;->f$0:Lcom/magoware/magoware/webtv/linkvue/MainMenuLayers;

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLayers;->lambda$getSettings$0$MainMenuLayers(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V

    return-void
.end method
