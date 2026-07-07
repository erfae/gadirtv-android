.class Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity$1;
.super Ljava/lang/Object;
.source "PinActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity$1;->this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "textView",
            "i",
            "keyEvent"
        }
    .end annotation

    .line 71
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    .line 72
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity$1;->this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;->access$000(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
