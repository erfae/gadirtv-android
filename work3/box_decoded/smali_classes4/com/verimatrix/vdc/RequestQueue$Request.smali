.class public Lcom/verimatrix/vdc/RequestQueue$Request;
.super Ljava/lang/Object;
.source "RequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/RequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Request"
.end annotation


# instance fields
.field timestamp:J

.field final type:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput p1, p0, Lcom/verimatrix/vdc/RequestQueue$Request;->type:I

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/verimatrix/vdc/RequestQueue$Request;->timestamp:J

    return-void
.end method
