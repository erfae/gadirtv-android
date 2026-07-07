.class public Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity_ViewBinding;
.super Ljava/lang/Object;
.source "EpisodeActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;

.field private view7f0b0121:Landroid/view/View;

.field private view7f0b04f9:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 25
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity_ViewBinding;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;Landroid/view/View;)V
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

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity_ViewBinding;->target:Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;

    .line 33
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0b024c

    const-string v2, "field \'title\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;->title:Landroid/widget/TextView;

    .line 34
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0b0248

    const-string v2, "field \'description\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;->description:Landroid/widget/TextView;

    const v0, 0x7f0b04f9

    const-string v1, "field \'playButton\' and method \'onButtonClicked\'"

    .line 35
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 36
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'playButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;->playButton:Landroid/widget/Button;

    .line 37
    iput-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity_ViewBinding;->view7f0b04f9:Landroid/view/View;

    .line 38
    new-instance v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity_ViewBinding$1;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity_ViewBinding;Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0121

    const-string v1, "field \'cancel\' and method \'onButtonClicked\'"

    .line 44
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 45
    const-class v1, Landroid/widget/Button;

    const-string v2, "field \'cancel\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;->cancel:Landroid/widget/Button;

    .line 46
    iput-object p2, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity_ViewBinding;->view7f0b0121:Landroid/view/View;

    .line 47
    new-instance v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity_ViewBinding$2;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity_ViewBinding;Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity_ViewBinding;->target:Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 60
    iput-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity_ViewBinding;->target:Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;

    .line 62
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;->title:Landroid/widget/TextView;

    .line 63
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;->description:Landroid/widget/TextView;

    .line 64
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;->playButton:Landroid/widget/Button;

    .line 65
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;->cancel:Landroid/widget/Button;

    .line 67
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity_ViewBinding;->view7f0b04f9:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iput-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity_ViewBinding;->view7f0b04f9:Landroid/view/View;

    .line 69
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity_ViewBinding;->view7f0b0121:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iput-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity_ViewBinding;->view7f0b0121:Landroid/view/View;

    return-void

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
