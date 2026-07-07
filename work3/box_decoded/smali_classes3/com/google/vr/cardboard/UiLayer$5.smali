.class Lcom/google/vr/cardboard/UiLayer$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/cardboard/UiLayer;->inflateViewsWithLayoutId(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/cardboard/UiLayer;


# direct methods
.method constructor <init>(Lcom/google/vr/cardboard/UiLayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/cardboard/UiLayer$5;->this$0:Lcom/google/vr/cardboard/UiLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 2
    iget-object p1, p0, Lcom/google/vr/cardboard/UiLayer$5;->this$0:Lcom/google/vr/cardboard/UiLayer;

    invoke-static {p1}, Lcom/google/vr/cardboard/UiLayer;->access$300(Lcom/google/vr/cardboard/UiLayer;)Ljava/lang/Runnable;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer$5;->this$0:Lcom/google/vr/cardboard/UiLayer;

    invoke-static {v0}, Lcom/google/vr/cardboard/UiLayer;->access$100(Lcom/google/vr/cardboard/UiLayer;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method
