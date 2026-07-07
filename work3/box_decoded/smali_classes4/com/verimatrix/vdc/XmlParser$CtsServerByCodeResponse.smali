.class Lcom/verimatrix/vdc/XmlParser$CtsServerByCodeResponse;
.super Ljava/lang/Object;
.source "XmlParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/XmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CtsServerByCodeResponse"
.end annotation


# instance fields
.field id:J

.field success:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 243
    iput-boolean v0, p0, Lcom/verimatrix/vdc/XmlParser$CtsServerByCodeResponse;->success:Z

    const-wide/16 v0, -0x1

    .line 244
    iput-wide v0, p0, Lcom/verimatrix/vdc/XmlParser$CtsServerByCodeResponse;->id:J

    return-void
.end method
