.class public final Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMoviesAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "HomeFeedMoviesAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMoviesAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMoviesAdapter$ViewHolder;",
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
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u001fB\u0005\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0018\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0014H\u0016J\u0018\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0014H\u0016J\u000e\u0010\u001e\u001a\u00020\u00162\u0006\u0010\u000b\u001a\u00020\u000cR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u000cX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006 "
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMoviesAdapter;",
        "Landroidx/recyclerview/widget/ListAdapter;",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMoviesAdapter$ViewHolder;",
        "()V",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "listener",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/LoginDialogListener;",
        "getListener",
        "()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/LoginDialogListener;",
        "setListener",
        "(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/LoginDialogListener;)V",
        "createOnClickListener",
        "Landroid/view/View$OnClickListener;",
        "id",
        "",
        "intentVod",
        "",
        "onBindViewHolder",
        "holder",
        "position",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "setOnClickListener",
        "ViewHolder",
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
.field public context:Landroid/content/Context;

.field public listener:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/LoginDialogListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/DiffCallback;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/DiffCallback;-><init>()V

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    return-void
.end method

.method public static final synthetic access$intentVod(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMoviesAdapter;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMoviesAdapter;->intentVod(I)V

    return-void
.end method

.method private final createOnClickListener(I)Landroid/view/View$OnClickListener;
    .locals 1

    .line 38
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMoviesAdapter$createOnClickListener$1;

    invoke-direct {v0, p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMoviesAdapter$createOnClickListener$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMoviesAdapter;I)V

    check-cast v0, Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private final intentVod(I)V
    .locals 4

    .line 48
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMoviesAdapter;->context:Landroid/content/Context;

    const-string v2, "context"

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const-class v3, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "vod_id"

    .line 49
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMoviesAdapter;->context:Landroid/content/Context;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMoviesAdapter;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v1, "context"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getListener()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/LoginDialogListener;
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMoviesAdapter;->listener:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/LoginDialogListener;

    if-nez v0, :cond_0

    const-string v1, "listener"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 19
    check-cast p1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMoviesAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMoviesAdapter;->onBindViewHolder(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMoviesAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMoviesAdapter$ViewHolder;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMoviesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;

    .line 26
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMoviesAdapter;->createOnClickListener(I)Landroid/view/View$OnClickListener;

    move-result-object v0

    const-string v1, "homeFeedMovies"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMoviesAdapter$ViewHolder;->bind(Landroid/view/View$OnClickListener;Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;)V

    .line 27
    iget-object p1, p1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMoviesAdapter$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMoviesAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMoviesAdapter$ViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMoviesAdapter$ViewHolder;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "parent.context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMoviesAdapter;->context:Landroid/content/Context;

    .line 33
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMoviesAdapter$ViewHolder;

    if-nez p2, :cond_0

    const-string v1, "context"

    .line 34
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v1, 0x0

    .line 33
    invoke-static {p2, p1, v1}, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/magoware/magoware/webtv/databinding/ListItemMoviesBinding;

    move-result-object p1

    const-string p2, "ListItemMoviesBinding.in\u2026(context), parent, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMoviesAdapter$ViewHolder;-><init>(Lcom/magoware/magoware/webtv/databinding/ListItemMoviesBinding;)V

    return-object v0
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMoviesAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method public final setListener(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/LoginDialogListener;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMoviesAdapter;->listener:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/LoginDialogListener;

    return-void
.end method

.method public final setOnClickListener(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/LoginDialogListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMoviesAdapter;->listener:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/LoginDialogListener;

    return-void
.end method
