.class final Lcom/magoware/magoware/webtv/vod/mobile/activities/CastDetailActivity$onCreate$2;
.super Ljava/lang/Object;
.source "CastDetailActivity.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/vod/mobile/activities/CastDetailActivity;->onCreate(Landroid/os/Bundle;)V
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
        "Lcom/magoware/magoware/webtv/network/mvvm/models/Cast;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "result",
        "Lcom/magoware/magoware/webtv/network/mvvm/models/Cast;",
        "kotlin.jvm.PlatformType",
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
.field final synthetic this$0:Lcom/magoware/magoware/webtv/vod/mobile/activities/CastDetailActivity;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/CastDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/CastDetailActivity$onCreate$2;->this$0:Lcom/magoware/magoware/webtv/vod/mobile/activities/CastDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Lcom/magoware/magoware/webtv/network/mvvm/models/Cast;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 31
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/CastDetailActivity$onCreate$2;->this$0:Lcom/magoware/magoware/webtv/vod/mobile/activities/CastDetailActivity;

    sget v1, Lcom/magoware/magoware/webtv/R$id;->cast_name:I

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/CastDetailActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "cast_name"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Cast;->getName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/CastDetailActivity$onCreate$2;->this$0:Lcom/magoware/magoware/webtv/vod/mobile/activities/CastDetailActivity;

    sget v1, Lcom/magoware/magoware/webtv/R$id;->cast_birthday:I

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/CastDetailActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "cast_birthday"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Cast;->getBirthday()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/CastDetailActivity$onCreate$2;->this$0:Lcom/magoware/magoware/webtv/vod/mobile/activities/CastDetailActivity;

    sget v1, Lcom/magoware/magoware/webtv/R$id;->cast_country:I

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/CastDetailActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "cast_country"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Cast;->getCountry()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/CastDetailActivity$onCreate$2;->this$0:Lcom/magoware/magoware/webtv/vod/mobile/activities/CastDetailActivity;

    sget v1, Lcom/magoware/magoware/webtv/R$id;->cast_description:I

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/CastDetailActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "cast_description"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Cast;->getBiography()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 37
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    const v1, 0x7f080271

    .line 38
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 39
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    const-string v1, "RequestOptions()\n       \u2026wable.ic_round_person_24)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 42
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/CastDetailActivity$onCreate$2;->this$0:Lcom/magoware/magoware/webtv/vod/mobile/activities/CastDetailActivity;

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 43
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->setDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 44
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Cast;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 45
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/CastDetailActivity$onCreate$2;->this$0:Lcom/magoware/magoware/webtv/vod/mobile/activities/CastDetailActivity;

    sget v1, Lcom/magoware/magoware/webtv/R$id;->cast_poster_image:I

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/CastDetailActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Cast;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/CastDetailActivity$onCreate$2;->onChanged(Lcom/magoware/magoware/webtv/network/mvvm/models/Cast;)V

    return-void
.end method
