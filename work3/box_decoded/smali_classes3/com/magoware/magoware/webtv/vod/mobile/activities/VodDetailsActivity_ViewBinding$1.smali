.class Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "VodDetailsActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity_ViewBinding;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity_ViewBinding;

.field final synthetic val$target:Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity_ViewBinding;Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;)V
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

    .line 45
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity_ViewBinding$1;->this$0:Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity_ViewBinding;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity_ViewBinding$1;->val$target:Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;

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

    .line 48
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity_ViewBinding$1;->val$target:Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
