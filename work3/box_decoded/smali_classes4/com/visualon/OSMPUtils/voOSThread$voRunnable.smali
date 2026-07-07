.class Lcom/visualon/OSMPUtils/voOSThread$voRunnable;
.super Ljava/lang/Object;
.source "voOSThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/voOSThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "voRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPUtils/voOSThread;

.field private thread_:Lcom/visualon/OSMPUtils/voOSThread;


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPUtils/voOSThread;Lcom/visualon/OSMPUtils/voOSThread;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voOSThread$voRunnable;->this$0:Lcom/visualon/OSMPUtils/voOSThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p2, p0, Lcom/visualon/OSMPUtils/voOSThread$voRunnable;->thread_:Lcom/visualon/OSMPUtils/voOSThread;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSThread$voRunnable;->thread_:Lcom/visualon/OSMPUtils/voOSThread;

    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSThread;->playback()V

    return-void
.end method
