.class public Lcom/inka/ncg2/Ncg2DeviceNotMatchedException;
.super Lcom/inka/ncg2/Ncg2Exception;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "device model doesn\'t matched."

    .line 7
    invoke-direct {p0, v0}, Lcom/inka/ncg2/Ncg2Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
