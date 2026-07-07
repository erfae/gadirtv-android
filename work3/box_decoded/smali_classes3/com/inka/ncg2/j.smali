.class Lcom/inka/ncg2/j;
.super Lcom/inka/ncg2/Ncg2Exception;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x76e875c0679a0373L


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "Detected DeviceTime Modified."

    const v1, -0xffff8ff

    .line 24
    invoke-direct {p0, v0, v1}, Lcom/inka/ncg2/Ncg2Exception;-><init>(Ljava/lang/String;I)V

    return-void
.end method
