.class Lcom/visualon/OSMPRender/EPlayerRenderer$1;
.super Ljava/lang/Object;
.source "EPlayerRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPRender/EPlayerRenderer;->setGlFilter(Lcom/visualon/OSMPRender/filter/GlFilter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPRender/EPlayerRenderer;

.field final synthetic val$filter:Lcom/visualon/OSMPRender/filter/GlFilter;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPRender/EPlayerRenderer;Lcom/visualon/OSMPRender/filter/GlFilter;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/visualon/OSMPRender/EPlayerRenderer$1;->this$0:Lcom/visualon/OSMPRender/EPlayerRenderer;

    iput-object p2, p0, Lcom/visualon/OSMPRender/EPlayerRenderer$1;->val$filter:Lcom/visualon/OSMPRender/filter/GlFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/visualon/OSMPRender/EPlayerRenderer$1;->this$0:Lcom/visualon/OSMPRender/EPlayerRenderer;

    invoke-static {v0}, Lcom/visualon/OSMPRender/EPlayerRenderer;->access$000(Lcom/visualon/OSMPRender/EPlayerRenderer;)Lcom/visualon/OSMPRender/filter/GlFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/visualon/OSMPRender/EPlayerRenderer$1;->this$0:Lcom/visualon/OSMPRender/EPlayerRenderer;

    invoke-static {v0}, Lcom/visualon/OSMPRender/EPlayerRenderer;->access$000(Lcom/visualon/OSMPRender/EPlayerRenderer;)Lcom/visualon/OSMPRender/filter/GlFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visualon/OSMPRender/filter/GlFilter;->release()V

    .line 83
    iget-object v0, p0, Lcom/visualon/OSMPRender/EPlayerRenderer$1;->this$0:Lcom/visualon/OSMPRender/EPlayerRenderer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/visualon/OSMPRender/EPlayerRenderer;->access$002(Lcom/visualon/OSMPRender/EPlayerRenderer;Lcom/visualon/OSMPRender/filter/GlFilter;)Lcom/visualon/OSMPRender/filter/GlFilter;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/EPlayerRenderer$1;->this$0:Lcom/visualon/OSMPRender/EPlayerRenderer;

    iget-object v1, p0, Lcom/visualon/OSMPRender/EPlayerRenderer$1;->val$filter:Lcom/visualon/OSMPRender/filter/GlFilter;

    invoke-static {v0, v1}, Lcom/visualon/OSMPRender/EPlayerRenderer;->access$002(Lcom/visualon/OSMPRender/EPlayerRenderer;Lcom/visualon/OSMPRender/filter/GlFilter;)Lcom/visualon/OSMPRender/filter/GlFilter;

    .line 86
    iget-object v0, p0, Lcom/visualon/OSMPRender/EPlayerRenderer$1;->this$0:Lcom/visualon/OSMPRender/EPlayerRenderer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/visualon/OSMPRender/EPlayerRenderer;->access$102(Lcom/visualon/OSMPRender/EPlayerRenderer;Z)Z

    return-void
.end method
