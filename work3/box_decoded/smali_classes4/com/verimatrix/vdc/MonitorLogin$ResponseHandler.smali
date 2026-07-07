.class Lcom/verimatrix/vdc/MonitorLogin$ResponseHandler;
.super Landroid/os/Handler;
.source "MonitorLogin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/MonitorLogin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResponseHandler"
.end annotation


# instance fields
.field final reference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/verimatrix/vdc/MonitorLogin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/verimatrix/vdc/MonitorLogin;)V
    .locals 1

    .line 678
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 679
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/verimatrix/vdc/MonitorLogin$ResponseHandler;->reference:Ljava/lang/ref/WeakReference;

    return-void
.end method
