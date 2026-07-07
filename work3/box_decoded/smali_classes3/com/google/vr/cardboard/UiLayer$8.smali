.class Lcom/google/vr/cardboard/UiLayer$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/cardboard/UiLayer;->setBackButtonListener(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/cardboard/UiLayer;

.field final synthetic val$listener:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/vr/cardboard/UiLayer;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/cardboard/UiLayer$8;->this$0:Lcom/google/vr/cardboard/UiLayer;

    iput-object p2, p0, Lcom/google/vr/cardboard/UiLayer$8;->val$listener:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer$8;->val$listener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/google/vr/cardboard/UiLayer$8;->this$0:Lcom/google/vr/cardboard/UiLayer;

    invoke-static {v1}, Lcom/google/vr/cardboard/UiLayer;->access$800(Lcom/google/vr/cardboard/UiLayer;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-static {v0}, Lcom/google/vr/cardboard/UiLayer;->access$400(Z)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 4
    iget-object v1, p0, Lcom/google/vr/cardboard/UiLayer$8;->this$0:Lcom/google/vr/cardboard/UiLayer;

    invoke-static {v1}, Lcom/google/vr/cardboard/UiLayer;->access$900(Lcom/google/vr/cardboard/UiLayer;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/google/vr/cardboard/UiLayer$8;->this$0:Lcom/google/vr/cardboard/UiLayer;

    invoke-static {v1}, Lcom/google/vr/cardboard/UiLayer;->access$900(Lcom/google/vr/cardboard/UiLayer;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0}, Lcom/google/vr/cardboard/UiLayer;->access$400(Z)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer$8;->this$0:Lcom/google/vr/cardboard/UiLayer;

    invoke-static {v0}, Lcom/google/vr/cardboard/UiLayer;->access$1000(Lcom/google/vr/cardboard/UiLayer;)Lcom/google/vr/cardboard/TransitionView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer$8;->this$0:Lcom/google/vr/cardboard/UiLayer;

    invoke-static {v0}, Lcom/google/vr/cardboard/UiLayer;->access$1000(Lcom/google/vr/cardboard/UiLayer;)Lcom/google/vr/cardboard/TransitionView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vr/cardboard/UiLayer$8;->val$listener:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/vr/cardboard/TransitionView;->setBackButtonListener(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
