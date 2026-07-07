.class public final synthetic Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapperListenerImpl$vGYSMFvw_Q2mUyaw0bLjKaNyKcQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;

.field public final synthetic f$1:Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapperListenerImpl$vGYSMFvw_Q2mUyaw0bLjKaNyKcQ;->f$0:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapperListenerImpl$vGYSMFvw_Q2mUyaw0bLjKaNyKcQ;->f$1:Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    iput-object p3, p0, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapperListenerImpl$vGYSMFvw_Q2mUyaw0bLjKaNyKcQ;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapperListenerImpl$vGYSMFvw_Q2mUyaw0bLjKaNyKcQ;->f$0:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapperListenerImpl$vGYSMFvw_Q2mUyaw0bLjKaNyKcQ;->f$1:Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapperListenerImpl$vGYSMFvw_Q2mUyaw0bLjKaNyKcQ;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->lambda$onInvalidNcgLicense$6$Ncg2SdkWrapperListenerImpl(Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;Ljava/lang/String;)V

    return-void
.end method
