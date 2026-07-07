.class Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener$voVMXAnalyticsRunner;
.super Ljava/lang/Object;
.source "VOVMXAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "voVMXAnalyticsRunner"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;


# direct methods
.method private constructor <init>(Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;)V
    .locals 0

    .line 881
    iput-object p1, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener$voVMXAnalyticsRunner;->this$1:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;Lcom/visualon/VOVMXLibrary/VOVMXAdapter$1;)V
    .locals 0

    .line 881
    invoke-direct {p0, p1}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener$voVMXAnalyticsRunner;-><init>(Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 884
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 885
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 887
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->access$1900()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 888
    iget-object v0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener$voVMXAnalyticsRunner;->this$1:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;

    invoke-static {v0}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->access$700(Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;)Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 889
    iget-object v0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener$voVMXAnalyticsRunner;->this$1:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;

    invoke-static {v0}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->access$700(Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;)Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getAnalyticsVoExportPacket()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 891
    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 892
    iget-object v0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener$voVMXAnalyticsRunner;->this$1:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;

    invoke-static {v0, v1}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->access$2000(Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;Lorg/json/JSONArray;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 894
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 901
    :cond_1
    :goto_0
    invoke-static {}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->access$1900()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_3
    const-string v1, "@@@VOVMXAnalyticsExport"

    const-string v2, "Exception caught from Verspective."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 898
    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 899
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 901
    :goto_2
    invoke-static {}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->access$1900()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
