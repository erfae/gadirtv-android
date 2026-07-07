.class Lcom/magoware/magoware/webtv/network/MakeWebRequests$1;
.super Ljava/lang/Object;
.source "MakeWebRequests.java"

# interfaces
.implements Lcom/androidnetworking/interfaces/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/network/MakeWebRequests;->getPermanentFile(Ljava/lang/String;ZLandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadComplete()V
    .locals 0

    return-void
.end method

.method public onError(Lcom/androidnetworking/error/ANError;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    return-void
.end method
