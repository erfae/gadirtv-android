.class Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "EpisodeActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity_ViewBinding;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity_ViewBinding;

.field final synthetic val$target:Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity_ViewBinding;Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$target"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity_ViewBinding$1;->this$0:Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity_ViewBinding;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity_ViewBinding$1;->val$target:Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p0"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity_ViewBinding$1;->val$target:Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;->onButtonClicked(Landroid/view/View;)V

    return-void
.end method
