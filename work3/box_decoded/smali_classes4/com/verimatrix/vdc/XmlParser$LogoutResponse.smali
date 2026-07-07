.class Lcom/verimatrix/vdc/XmlParser$LogoutResponse;
.super Ljava/lang/Object;
.source "XmlParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/XmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LogoutResponse"
.end annotation


# instance fields
.field result:Ljava/lang/String;

.field success:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Failure"

    .line 216
    iput-object v0, p0, Lcom/verimatrix/vdc/XmlParser$LogoutResponse;->result:Ljava/lang/String;

    const/4 v0, 0x0

    .line 217
    iput-boolean v0, p0, Lcom/verimatrix/vdc/XmlParser$LogoutResponse;->success:Z

    return-void
.end method
