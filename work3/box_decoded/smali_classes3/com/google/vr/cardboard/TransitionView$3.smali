.class Lcom/google/vr/cardboard/TransitionView$3;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/cardboard/TransitionView;->startOrientationMonitor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/cardboard/TransitionView;


# direct methods
.method constructor <init>(Lcom/google/vr/cardboard/TransitionView;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/cardboard/TransitionView$3;->this$0:Lcom/google/vr/cardboard/TransitionView;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/vr/cardboard/TransitionView$3;->this$0:Lcom/google/vr/cardboard/TransitionView;

    invoke-static {v0, p1}, Lcom/google/vr/cardboard/TransitionView;->access$102(Lcom/google/vr/cardboard/TransitionView;I)I

    .line 3
    iget-object v0, p0, Lcom/google/vr/cardboard/TransitionView$3;->this$0:Lcom/google/vr/cardboard/TransitionView;

    invoke-static {v0}, Lcom/google/vr/cardboard/TransitionView;->access$200(Lcom/google/vr/cardboard/TransitionView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/google/vr/cardboard/TransitionView$3;->this$0:Lcom/google/vr/cardboard/TransitionView;

    invoke-static {p1}, Lcom/google/vr/cardboard/TransitionView;->access$300(Lcom/google/vr/cardboard/TransitionView;)V

    return-void

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/google/vr/cardboard/TransitionView;->access$400(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object p1, p0, Lcom/google/vr/cardboard/TransitionView$3;->this$0:Lcom/google/vr/cardboard/TransitionView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/vr/cardboard/TransitionView;->access$000(Lcom/google/vr/cardboard/TransitionView;Z)V

    return-void

    .line 7
    :cond_1
    invoke-static {p1}, Lcom/google/vr/cardboard/TransitionView;->access$500(I)Z

    return-void
.end method
