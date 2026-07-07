.class public final synthetic Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapperListenerImpl$LgE3RQjt76bMzvWXV725NCgmHWo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapperListenerImpl$LgE3RQjt76bMzvWXV725NCgmHWo;->f$0:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;

    iput p2, p0, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapperListenerImpl$LgE3RQjt76bMzvWXV725NCgmHWo;->f$1:I

    iput-object p3, p0, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapperListenerImpl$LgE3RQjt76bMzvWXV725NCgmHWo;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapperListenerImpl$LgE3RQjt76bMzvWXV725NCgmHWo;->f$0:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;

    iget v1, p0, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapperListenerImpl$LgE3RQjt76bMzvWXV725NCgmHWo;->f$1:I

    iget-object v2, p0, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapperListenerImpl$LgE3RQjt76bMzvWXV725NCgmHWo;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->lambda$onWebserverError$13$Ncg2SdkWrapperListenerImpl(ILjava/lang/String;)V

    return-void
.end method
