.class public final synthetic Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapper$UPc1dMuOJBo-PnQQ00e5wSWgCJ0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;

.field public final synthetic f$1:Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapper$UPc1dMuOJBo-PnQQ00e5wSWgCJ0;->f$0:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapper$UPc1dMuOJBo-PnQQ00e5wSWgCJ0;->f$1:Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapper$UPc1dMuOJBo-PnQQ00e5wSWgCJ0;->f$0:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapper$UPc1dMuOJBo-PnQQ00e5wSWgCJ0;->f$1:Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->lambda$decreasePlayCountAndDisplayMsg$0$Ncg2SdkWrapper(Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;)V

    return-void
.end method
