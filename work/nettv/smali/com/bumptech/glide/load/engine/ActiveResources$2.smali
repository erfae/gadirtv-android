.class Lcom/bumptech/glide/load/engine/ActiveResources$2;
.super Ljava/lang/Object;
.source "ActiveResources.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/bumptech/glide/load/engine/ActiveResources;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/ActiveResources;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/ActiveResources$2;->this$0:Lcom/bumptech/glide/load/engine/ActiveResources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources$2;->this$0:Lcom/bumptech/glide/load/engine/ActiveResources;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/ActiveResources;->cleanReferenceQueue()V

    return-void
.end method
