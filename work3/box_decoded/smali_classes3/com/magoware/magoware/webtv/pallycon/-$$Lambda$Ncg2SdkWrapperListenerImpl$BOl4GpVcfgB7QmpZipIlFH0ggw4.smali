.class public final synthetic Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapperListenerImpl$BOl4GpVcfgB7QmpZipIlFH0ggw4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapperListenerImpl$BOl4GpVcfgB7QmpZipIlFH0ggw4;->f$0:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;

    iput p2, p0, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapperListenerImpl$BOl4GpVcfgB7QmpZipIlFH0ggw4;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapperListenerImpl$BOl4GpVcfgB7QmpZipIlFH0ggw4;->f$0:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;

    iget v1, p0, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapperListenerImpl$BOl4GpVcfgB7QmpZipIlFH0ggw4;->f$1:I

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->lambda$onServerError$9$Ncg2SdkWrapperListenerImpl(I)V

    return-void
.end method
