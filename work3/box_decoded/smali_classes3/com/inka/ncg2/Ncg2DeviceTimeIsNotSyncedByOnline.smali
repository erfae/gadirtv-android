.class public Lcom/inka/ncg2/Ncg2DeviceTimeIsNotSyncedByOnline;
.super Lcom/inka/ncg2/Ncg2Exception;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "Need to sync device time by network.\nIt means the automatic sync device-time option of Android Settings."

    const v1, -0xffff8ff

    .line 12
    invoke-direct {p0, v0, v1}, Lcom/inka/ncg2/Ncg2Exception;-><init>(Ljava/lang/String;I)V

    return-void
.end method
