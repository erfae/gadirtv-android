.class public Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity_ViewBinding;
.super Ljava/lang/Object;
.source "VodDetailsActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;

.field private view7f0b041b:Landroid/view/View;

.field private view7f0b041c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 29
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity_ViewBinding;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "target",
            "source"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity_ViewBinding;->target:Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;

    .line 37
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0b0015

    const-string v2, "field \'aboutMovie\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->aboutMovie:Landroid/widget/TextView;

    .line 38
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0b041d

    const-string v2, "field \'movieTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieTitle:Landroid/widget/TextView;

    .line 39
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0b041a

    const-string v2, "field \'movieReleaseDate\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieReleaseDate:Landroid/widget/TextView;

    .line 40
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f0b066f

    const-string v2, "field \'toolbarVodDetails\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->toolbarVodDetails:Landroidx/appcompat/widget/Toolbar;

    .line 41
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0b050a

    const-string v2, "field \'poster\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->poster:Landroid/widget/ImageView;

    const v0, 0x7f0b041c

    const-string v1, "field \'movieThumbUp\' and method \'onClick\'"

    .line 42
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 43
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'movieThumbUp\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieThumbUp:Landroid/widget/ImageView;

    .line 44
    iput-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity_ViewBinding;->view7f0b041c:Landroid/view/View;

    .line 45
    new-instance v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity_ViewBinding$1;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity_ViewBinding;Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b041b

    const-string v1, "field \'movieThumbDown\' and method \'onClick\'"

    .line 51
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 52
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'movieThumbDown\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieThumbDown:Landroid/widget/ImageView;

    .line 53
    iput-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity_ViewBinding;->view7f0b041b:Landroid/view/View;

    .line 54
    new-instance v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity_ViewBinding$2;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity_ViewBinding;Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0b0415

    const-string v2, "field \'movieDirector\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieDirector:Landroid/widget/TextView;

    .line 61
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0b0410

    const-string v2, "field \'movieCast\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieCast:Landroid/widget/TextView;

    .line 62
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0b0419

    const-string v2, "field \'movieRate\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieRate:Landroid/widget/TextView;

    .line 63
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0b013a

    const-string v2, "field \'cast_member_recycler\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->cast_member_recycler:Landroidx/recyclerview/widget/RecyclerView;

    .line 64
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0b06e7

    const-string v2, "field \'vod_related_recycler\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vod_related_recycler:Landroidx/recyclerview/widget/RecyclerView;

    .line 65
    const-class v0, Landroid/widget/Button;

    const v1, 0x7f0b067e

    const-string v2, "field \'trailerButton\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->trailerButton:Landroid/widget/Button;

    .line 66
    const-class v0, Landroid/widget/Button;

    const v1, 0x7f0b05f9

    const-string v2, "field \'startWatchingMovie\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->startWatchingMovie:Landroid/widget/Button;

    .line 67
    const-class v0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    const v1, 0x7f0b0417

    const-string v2, "field \'movieProgressBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieProgressBar:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 68
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0b0418

    const-string v2, "field \'movieProgressLabel\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieProgressLabel:Landroid/widget/TextView;

    .line 69
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0b0530

    const-string v2, "field \'relatedVodText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->relatedVodText:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity_ViewBinding;->target:Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 77
    iput-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity_ViewBinding;->target:Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;

    .line 79
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->aboutMovie:Landroid/widget/TextView;

    .line 80
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieTitle:Landroid/widget/TextView;

    .line 81
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieReleaseDate:Landroid/widget/TextView;

    .line 82
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->toolbarVodDetails:Landroidx/appcompat/widget/Toolbar;

    .line 83
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->poster:Landroid/widget/ImageView;

    .line 84
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieThumbUp:Landroid/widget/ImageView;

    .line 85
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieThumbDown:Landroid/widget/ImageView;

    .line 86
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieDirector:Landroid/widget/TextView;

    .line 87
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieCast:Landroid/widget/TextView;

    .line 88
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieRate:Landroid/widget/TextView;

    .line 89
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->cast_member_recycler:Landroidx/recyclerview/widget/RecyclerView;

    .line 90
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->vod_related_recycler:Landroidx/recyclerview/widget/RecyclerView;

    .line 91
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->trailerButton:Landroid/widget/Button;

    .line 92
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->startWatchingMovie:Landroid/widget/Button;

    .line 93
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieProgressBar:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 94
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->movieProgressLabel:Landroid/widget/TextView;

    .line 95
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->relatedVodText:Landroid/widget/TextView;

    .line 97
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity_ViewBinding;->view7f0b041c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iput-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity_ViewBinding;->view7f0b041c:Landroid/view/View;

    .line 99
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity_ViewBinding;->view7f0b041b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iput-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity_ViewBinding;->view7f0b041b:Landroid/view/View;

    return-void

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
