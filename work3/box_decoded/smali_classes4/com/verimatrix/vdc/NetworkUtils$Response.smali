.class Lcom/verimatrix/vdc/NetworkUtils$Response;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/NetworkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Response"
.end annotation


# instance fields
.field code:I

.field e:Ljava/lang/Exception;

.field responseString:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    .line 478
    iput v0, p0, Lcom/verimatrix/vdc/NetworkUtils$Response;->code:I

    const/4 v0, 0x0

    .line 479
    iput-object v0, p0, Lcom/verimatrix/vdc/NetworkUtils$Response;->responseString:Ljava/lang/String;

    .line 480
    iput-object v0, p0, Lcom/verimatrix/vdc/NetworkUtils$Response;->e:Ljava/lang/Exception;

    return-void
.end method
