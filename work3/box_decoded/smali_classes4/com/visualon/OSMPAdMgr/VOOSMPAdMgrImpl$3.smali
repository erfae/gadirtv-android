.class Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$3;
.super Ljava/lang/Object;
.source "VOOSMPAdMgrImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->setImageBitmapFromUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

.field final synthetic val$localUrlStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;Ljava/lang/String;)V
    .locals 0

    .line 1415
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$3;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    iput-object p2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$3;->val$localUrlStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1424
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$3;->val$localUrlStr:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1425
    invoke-virtual {v0}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v0

    .line 1426
    iget-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$3;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    check-cast v0, Ljava/io/InputStream;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$602(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1432
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1430
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
