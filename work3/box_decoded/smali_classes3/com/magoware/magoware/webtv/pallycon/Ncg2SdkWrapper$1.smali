.class Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$1;
.super Ljava/lang/Object;
.source "Ncg2SdkWrapper.java"

# interfaces
.implements Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 294
    iput-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$1;->this$0:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckPlayerStatus(Ljava/lang/String;)Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener$PlayerState;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    .line 312
    sget-object p1, Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener$PlayerState;->ReadyToPlay:Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener$PlayerState;

    return-object p1
.end method

.method public onError(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "errorCode",
            "errorMessage"
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$1;->this$0:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->access$000(Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;)Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;->onWebserverError(ILjava/lang/String;)V

    return-void
.end method

.method public onNotification(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "notifyCode",
            "notifyMsg"
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$1;->this$0:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->access$000(Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;)Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;->onWebserverNotification(ILjava/lang/String;)V

    return-void
.end method
