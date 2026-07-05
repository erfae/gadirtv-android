.class public Lcom/nettv/livestore/utils/ImageLoaderJava;
.super Ljava/lang/Object;
.source "ImageLoaderJava.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static imageLoadUrlWithVodHolder(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ILandroid/widget/ImageView;)V
    .locals 0
    .param p1    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/nettv/livestore/utils/GlideApp;->with(Landroid/content/Context;)Lcom/nettv/livestore/utils/GlideRequests;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/nettv/livestore/utils/GlideRequests;->load(Ljava/lang/String;)Lcom/nettv/livestore/utils/GlideRequest;

    move-result-object p0

    const/16 p2, 0x12c

    const/16 p3, 0x1c2

    .line 2
    invoke-virtual {p0, p2, p3}, Lcom/nettv/livestore/utils/GlideRequest;->override(II)Lcom/nettv/livestore/utils/GlideRequest;

    move-result-object p0

    new-instance p2, Lcom/nettv/livestore/utils/ImageLoaderJava$2;

    invoke-direct {p2, p4, p1}, Lcom/nettv/livestore/utils/ImageLoaderJava$2;-><init>(Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/nettv/livestore/utils/GlideRequest;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/nettv/livestore/utils/GlideRequest;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static imageLoaderUrlWitPlaceHolder(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 0
    .param p1    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/nettv/livestore/utils/GlideApp;->with(Landroid/content/Context;)Lcom/nettv/livestore/utils/GlideRequests;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/nettv/livestore/utils/GlideRequests;->load(Ljava/lang/String;)Lcom/nettv/livestore/utils/GlideRequest;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/nettv/livestore/utils/GlideRequest;->placeholder(I)Lcom/nettv/livestore/utils/GlideRequest;

    move-result-object p0

    const/high16 p2, -0x80000000

    .line 2
    invoke-virtual {p0, p2, p2}, Lcom/nettv/livestore/utils/GlideRequest;->override(II)Lcom/nettv/livestore/utils/GlideRequest;

    move-result-object p0

    new-instance p2, Lcom/nettv/livestore/utils/ImageLoaderJava$1;

    invoke-direct {p2}, Lcom/nettv/livestore/utils/ImageLoaderJava$1;-><init>()V

    .line 3
    invoke-virtual {p0, p2}, Lcom/nettv/livestore/utils/GlideRequest;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/nettv/livestore/utils/GlideRequest;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method
