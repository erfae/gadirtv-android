.class public Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment_ViewBinding;
.super Ljava/lang/Object;
.source "NetworkTestFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;

.field private view7f0b0106:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;Landroid/view/View;)V
    .locals 3
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

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment_ViewBinding;->target:Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;

    .line 26
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0b048f

    const-string v2, "field \'networkTestImageView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;->networkTestImageView:Landroid/widget/ImageView;

    const v0, 0x7f0b0106

    const-string v1, "field \'retryTestButton\' and method \'onTryClick\'"

    .line 27
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 28
    const-class v1, Landroid/widget/Button;

    const-string v2, "field \'retryTestButton\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;->retryTestButton:Landroid/widget/Button;

    .line 29
    iput-object p2, p0, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment_ViewBinding;->view7f0b0106:Landroid/view/View;

    .line 30
    new-instance v0, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment_ViewBinding$1;-><init>(Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment_ViewBinding;Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment_ViewBinding;->target:Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 43
    iput-object v1, p0, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment_ViewBinding;->target:Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;

    .line 45
    iput-object v1, v0, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;->networkTestImageView:Landroid/widget/ImageView;

    .line 46
    iput-object v1, v0, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment;->retryTestButton:Landroid/widget/Button;

    .line 48
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment_ViewBinding;->view7f0b0106:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iput-object v1, p0, Lcom/magoware/magoware/webtv/network_test/presentation/NetworkTestFragment_ViewBinding;->view7f0b0106:Landroid/view/View;

    return-void

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
