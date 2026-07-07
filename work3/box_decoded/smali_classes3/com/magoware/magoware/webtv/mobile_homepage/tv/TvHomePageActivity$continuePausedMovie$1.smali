.class final Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$continuePausedMovie$1;
.super Ljava/lang/Object;
.source "TvHomePageActivity.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->continuePausedMovie(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
        "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "response",
        "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;",
        "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

.field final synthetic $vodCard:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic this$0:Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V
    .locals 0

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$continuePausedMovie$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$continuePausedMovie$1;->$vodCard:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$continuePausedMovie$1;->$card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 217
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$continuePausedMovie$1;->$vodCard:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "response.response_object[0]"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 219
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$continuePausedMovie$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 220
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$continuePausedMovie$1;->$vodCard:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "movieJson"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$continuePausedMovie$1;->$card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getResumePosition()I

    move-result v0

    const-string v1, "vod_position"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 222
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$continuePausedMovie$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;

    const/16 v1, 0xc9

    invoke-virtual {v0, p1, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 224
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$continuePausedMovie$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;

    check-cast p1, Landroid/content/Context;

    const-string v0, "Cannot open this movie"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 74
    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$continuePausedMovie$1;->onChanged(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V

    return-void
.end method
