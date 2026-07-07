.class public Lcom/verimatrix/vdc/RequestQueue$DebugRequest;
.super Lcom/verimatrix/vdc/RequestQueue$Request;
.source "RequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/RequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DebugRequest"
.end annotation


# instance fields
.field deviceId:Ljava/lang/String;

.field message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    .line 188
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/RequestQueue$Request;-><init>(I)V

    .line 189
    iput-object p1, p0, Lcom/verimatrix/vdc/RequestQueue$DebugRequest;->deviceId:Ljava/lang/String;

    .line 190
    iput-object p2, p0, Lcom/verimatrix/vdc/RequestQueue$DebugRequest;->message:Ljava/lang/String;

    return-void
.end method
