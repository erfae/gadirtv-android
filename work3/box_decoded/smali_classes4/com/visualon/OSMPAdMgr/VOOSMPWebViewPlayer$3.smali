.class Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer$3;
.super Ljava/lang/Object;
.source "VOOSMPWebViewPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;->loadUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$wv:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer$3;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer;

    iput-object p2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer$3;->val$wv:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer$3;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer$3;->val$wv:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPWebViewPlayer$3;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
